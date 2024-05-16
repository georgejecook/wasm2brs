' Copyright 2020, Trevor Sundberg. See LICENSE.md
function custom_print_line(fd as integer, str as string) as void
  if m.screen <> invalid then
    return
  end if
  m.outputLines.Push(str)
  if m.outputLines.Count() > m.output.maxLines then
    m.outputLines.Shift()
  end if
  m.output.text = m.outputLines.Join(Chr(10))
end function

function WaitForEvent()
  msg = wait(0, m.port)
  if msg <> invalid then
    msgType = type(msg)

    if msgType = "roSGNodeEvent" then
      if msg.getNode() = "enter" then
        if m.isJSLoaded <> true
          'read js from file
          js = ReadAsciiFile("pkg:/source/main.js")
          ? " LOADING JS " js
          external_append_stdin(js  + Chr(10))
          m.isJSLoaded = true
        end if
        ? "RUNNING COMMAND"
        external_append_stdin(m.keyboard.text + Chr(10))
        m.keyboard.text = ""
      else
      end if
    end if
  end if
end function

function custom_wait_for_stdin() as void
  if m.screen <> invalid then
    return
  end if
  ' This works because we only have the stdin keyboard event
  WaitForEvent()
end function

function CatchingStart()
  try
    Start()
  catch e
    print e
  end try
end function

sub Main()
  settings = {}
  try
    settings = GetSettings()
  catch e
  end try

  m.port = CreateObject("roMessagePort")

  sgScreen = CreateObject("roSGScreen")
  sgScreen.SetMessagePort(m.port)
  scene = sgScreen.CreateScene("main")
  sgScreen.show()

  m.keyboard = scene.findNode("keyboard")
  m.keyboard.setFocus(True)

  scene.findNode("enter").observeField("buttonSelected", m.port)

  m.output = scene.findNode("output")
  m.outputMaxLines = m.output.maxLines
  m.outputLines = []

  m.external_print_line = custom_print_line
  m.external_wait_for_stdin = custom_wait_for_stdin

  if settings.CustomInit <> invalid then
    m.CustomInit = settings.CustomInit
    m.CustomInit()
  end if


  if settings.RestartOnFailure = True then
    while True
      CatchingStart()
    end while
  else if settings.Profiling = True then
    CatchingStart()
  else
    Start()
  end if

  print "------ Completed ------"

  m.isJSLoaded = false
  if settings.PauseOnExit = True then
    while True
      WaitForEvent()
    end while
  end if
end sub
