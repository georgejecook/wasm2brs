Function w2b_mbsrtowcs(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer, w2b_p3 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  
  w2b_i0 = w2b_p1
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l4 = w2b_i0
  w2b_i0 = w2b_p3
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b10_22741156
  End If
  w2b_i0 = w2b_p3
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l6 = w2b_i0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b10_22741156
  End If
  w2b_i0 = w2b_p0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p2
    w2b_p3 = w2b_i0
    Goto w2b_b8_12451963
  End If
  w2b_i0 = w2b_p3
  w2b_i1 = 0%
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_i0 = w2b_p2
  w2b_p3 = w2b_i0
  Goto w2b_b9_12517500
  w2b_b10_22741156:
  w2b_i0 = 56800%
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b12_22872230
    End If
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_p2
    If w2b_i1 Then
      w2b_i1 = 0%
      w2b_l6 = w2b_i1
      w2b_l16_25100468:
        
        w2b_i1 = w2b_l4
        w2b_i2 = w2b_l6
        w2b_i1 += w2b_i2
        w2b_i1 = mem.GetSignedByte(w2b_i1)
        w2b_p3 = w2b_i1
        If w2b_i1 = 0% Then
          w2b_i1 = 1
        Else
          w2b_i1 = 0
        End If
        If w2b_i1 Then
          Goto w2b_b14_23003304
        End If
        w2b_i1 = w2b_p0
        w2b_i2 = w2b_p3
        w2b_i3 = 57343%
        w2b_i2 = w2b_i2 AND w2b_i3
        mem[w2b_i1] = w2b_i2
        mem[w2b_i1 + 1] = (w2b_i2 >> 8)
        mem[w2b_i1 + 2] = (w2b_i2 >> 16)
        mem[w2b_i1 + 3] = (w2b_i2 >> 24)
        w2b_i1 = w2b_p0
        w2b_i2 = 4%
        w2b_i1 += w2b_i2
        w2b_p0 = w2b_i1
        w2b_i1 = w2b_l6
        w2b_i2 = 1%
        w2b_i1 += w2b_i2
        w2b_l6 = w2b_i1
        w2b_i2 = w2b_p2
        If w2b_i1 <> w2b_i2 Then
          w2b_i1 = 1
        Else
          w2b_i1 = 0
        End If
        If w2b_i1 Then
          Goto w2b_l16_25100468
        End If
      w2b_i1 = w2b_l4
      w2b_i2 = w2b_l6
      w2b_i1 += w2b_i2
    Else
      w2b_i1 = w2b_l4
    End If
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_p2
    Goto w2b_bfunc_92602863
    w2b_b14_23003304:
    w2b_i0 = w2b_p1
    w2b_i1 = 0%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_p0
    w2b_i1 = 0%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_l6
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p2
  w2b_p3 = w2b_i0
  w2b_i0 = w2b_p0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b7_12386426
  End If
  Goto w2b_b5_12255352
  w2b_b12_22872230:
  w2b_i0 = w2b_l4
  w2b_i0 = w2b_strlen(w2b_i0)
  Goto w2b_bfunc_92602863
  w2b_b9_12517500:
  w2b_i0 = 1%
  w2b_l5 = w2b_i0
  Goto w2b_b5_12255352
  w2b_b8_12451963:
  w2b_i0 = 0%
  Goto w2b_b6_12320889
  w2b_b7_12386426:
  w2b_i0 = 1%
  w2b_b6_12320889:
  w2b_l5 = w2b_i0
  w2b_l17_25166005:
    
    w2b_i0 = w2b_l5
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l4
      w2b_i0 = (mem[w2b_i0])
      w2b_i1 = 3%
      w2b_i0 >>= (w2b_i1 AND 31)
      w2b_l5 = w2b_i0
      w2b_i1 = 16%
      w2b_i0 -= w2b_i1
      w2b_i1 = w2b_l6
      w2b_i2 = 26%
      w2b_i2 = w2b_i2 And &H1F
If w2b_i1 < 0 And w2b_i2 <> 0 Then
    w2b_i1 = (w2b_i1 >> w2b_i2) Or (&HFFFFFFFF << (32 - w2b_i2))
Else
    w2b_i1 = w2b_i1 >> w2b_i2
End If
w2b_i2 = w2b_l5
      w2b_i1 += w2b_i2
      w2b_i0 = w2b_i0 OR w2b_i1
      w2b_i1 = 7%
      If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b4_12189815
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 1%
      w2b_i0 += w2b_i1
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_l5
      w2b_i1 = w2b_l6
      w2b_i2 = 33554432%
      w2b_i1 = w2b_i1 AND w2b_i2
      If w2b_i1 = 0% Then
        w2b_i1 = 1
      Else
        w2b_i1 = 0
      End If
      If w2b_i1 Then
        Goto w2b_b19_23330989
      End If
      w2b_i0 = w2b_l5
      w2b_i0 = (mem[w2b_i0])
      w2b_i1 = 192%
      w2b_i0 = w2b_i0 AND w2b_i1
      w2b_i1 = 128%
      If w2b_i0 <> w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b4_12189815
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 2%
      w2b_i0 += w2b_i1
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_l5
      w2b_i1 = w2b_l6
      w2b_i2 = 524288%
      w2b_i1 = w2b_i1 AND w2b_i2
      If w2b_i1 = 0% Then
        w2b_i1 = 1
      Else
        w2b_i1 = 0
      End If
      If w2b_i1 Then
        Goto w2b_b19_23330989
      End If
      w2b_i0 = w2b_l5
      w2b_i0 = (mem[w2b_i0])
      w2b_i1 = 192%
      w2b_i0 = w2b_i0 AND w2b_i1
      w2b_i1 = 128%
      If w2b_i0 <> w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b4_12189815
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 3%
      w2b_i0 += w2b_i1
      w2b_b19_23330989:
      w2b_l4 = w2b_i0
      w2b_i0 = w2b_p3
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_p3 = w2b_i0
      w2b_i0 = 1%
      w2b_l5 = w2b_i0
      Goto w2b_l17_25166005
    End If
    w2b_l20_24838319:
      
      w2b_i0 = w2b_l4
      w2b_i0 = (mem[w2b_i0])
      w2b_l6 = w2b_i0
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_i1 = 126%
      If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_l4
        w2b_i1 = 3%
        w2b_i0 = w2b_i0 AND w2b_i1
        If w2b_i0 Then
          w2b_i0 = w2b_l4
          w2b_l5 = w2b_i0
          Goto w2b_b21_22937766
        End If
        w2b_i0 = w2b_l4
        If w2b_i0 And &H3 Then
          w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
        Else
          w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
        End If
        w2b_l6 = w2b_i0
        w2b_i1 = w2b_l6
        w2b_i2 = 16843009%
        w2b_i1 -= w2b_i2
        w2b_i0 = w2b_i0 OR w2b_i1
        w2b_i1 = 2155905152%
        w2b_i0 = w2b_i0 AND w2b_i1
        If w2b_i0 Then
          w2b_i0 = w2b_l4
          w2b_l5 = w2b_i0
          Goto w2b_b21_22937766
        End If
        w2b_l25_25166004:
          
          w2b_i0 = w2b_p3
          w2b_i1 = 4%
          w2b_i0 -= w2b_i1
          w2b_p3 = w2b_i0
          w2b_i0 = w2b_l4
          w2b_i0 += 4
          If w2b_i0 And &H3 Then
            w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
          Else
            w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
          End If
          w2b_l6 = w2b_i0
          w2b_i0 = w2b_l4
          w2b_i1 = 4%
          w2b_i0 += w2b_i1
          w2b_l5 = w2b_i0
          w2b_l4 = w2b_i0
          w2b_i0 = w2b_l6
          w2b_i1 = 16843009%
          w2b_i0 -= w2b_i1
          w2b_i1 = w2b_l6
          w2b_i0 = w2b_i0 OR w2b_i1
          w2b_i1 = 2155905152%
          w2b_i0 = w2b_i0 AND w2b_i1
          If w2b_i0 = 0% Then
            w2b_i0 = 1
          Else
            w2b_i0 = 0
          End If
          If w2b_i0 Then
            Goto w2b_l25_25166004
          End If
        Goto w2b_b21_22937766
      End If
      w2b_i0 = w2b_l4
      w2b_l5 = w2b_i0
      w2b_b21_22937766:
      w2b_i0 = w2b_l6
      w2b_i1 = 255%
      w2b_i0 = w2b_i0 AND w2b_i1
      w2b_l4 = w2b_i0
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_i1 = 126%
      If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_p3
        w2b_i1 = 1%
        w2b_i0 -= w2b_i1
        w2b_p3 = w2b_i0
        w2b_i0 = w2b_l5
        w2b_i1 = 1%
        w2b_i0 += w2b_i1
        w2b_l4 = w2b_i0
        Goto w2b_l20_24838319
      End If
    w2b_i0 = w2b_l4
    w2b_i1 = 194%
    w2b_i0 -= w2b_i1
    w2b_l7 = w2b_i0
    w2b_i1 = 50%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b3_12124278
    End If
    w2b_i0 = w2b_l5
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_l4 = w2b_i0
    w2b_i0 = w2b_l7
    w2b_i1 = 2%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = 32080%
    w2b_i0 += w2b_i1
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l6 = w2b_i0
    w2b_i0 = 0%
    w2b_l5 = w2b_i0
    Goto w2b_l17_25166005
  Unreachable()
  w2b_b5_12255352:
  w2b_l27_25297078:
    
    w2b_i0 = w2b_l5
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p3
      If w2b_i0 Then
        w2b_l31_25034929:
          
          w2b_i0 = w2b_l4
          w2b_i0 = (mem[w2b_i0])
          w2b_l5 = w2b_i0
          w2b_i1 = 1%
          w2b_i0 -= w2b_i1
          w2b_l7 = w2b_i0
          w2b_i1 = 126%
          If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
            w2b_i0 = 1
          Else
            w2b_i0 = 0
          End If
          If w2b_i0 Then
            w2b_i0 = w2b_l5
            w2b_l6 = w2b_i0
            Goto w2b_b33_23199913
          End If
          w2b_i0 = w2b_l4
          w2b_i1 = 3%
          w2b_i0 = w2b_i0 AND w2b_i1
          If w2b_i0 Then
            Goto w2b_b32_23134376
          End If
          w2b_i0 = w2b_p3
          w2b_i1 = 5%
          If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
            w2b_i0 = 1
          Else
            w2b_i0 = 0
          End If
          If w2b_i0 Then
            Goto w2b_b32_23134376
          End If
          w2b_l36_25362614:
            
            w2b_i0 = w2b_l4
            If w2b_i0 And &H3 Then
              w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
            Else
              w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
            End If
            w2b_l6 = w2b_i0
            w2b_i1 = w2b_l6
            w2b_i2 = 16843009%
            w2b_i1 -= w2b_i2
            w2b_i0 = w2b_i0 OR w2b_i1
            w2b_i1 = 2155905152%
            w2b_i0 = w2b_i0 AND w2b_i1
            If w2b_i0 Then
              Goto w2b_b35_23330987
            End If
            w2b_i0 = w2b_p0
            w2b_i1 = w2b_l6
            w2b_i2 = 255%
            w2b_i1 = w2b_i1 AND w2b_i2
            mem[w2b_i0] = w2b_i1
            mem[w2b_i0 + 1] = (w2b_i1 >> 8)
            mem[w2b_i0 + 2] = (w2b_i1 >> 16)
            mem[w2b_i0 + 3] = (w2b_i1 >> 24)
            w2b_i0 = w2b_p0
            w2b_i1 = 4%
            w2b_i0 += w2b_i1
            w2b_i1 = w2b_l4
            w2b_i1 = (mem[w2b_i1 + 1])
            mem[w2b_i0] = w2b_i1
            mem[w2b_i0 + 1] = (w2b_i1 >> 8)
            mem[w2b_i0 + 2] = (w2b_i1 >> 16)
            mem[w2b_i0 + 3] = (w2b_i1 >> 24)
            w2b_i0 = w2b_p0
            w2b_i1 = 8%
            w2b_i0 += w2b_i1
            w2b_i1 = w2b_l4
            w2b_i2 = 2%
            w2b_i1 += w2b_i2
            w2b_i1 = (mem[w2b_i1])
            mem[w2b_i0] = w2b_i1
            mem[w2b_i0 + 1] = (w2b_i1 >> 8)
            mem[w2b_i0 + 2] = (w2b_i1 >> 16)
            mem[w2b_i0 + 3] = (w2b_i1 >> 24)
            w2b_i0 = w2b_p0
            w2b_i1 = 12%
            w2b_i0 += w2b_i1
            w2b_i1 = w2b_l4
            w2b_i2 = 3%
            w2b_i1 += w2b_i2
            w2b_i1 = (mem[w2b_i1])
            mem[w2b_i0] = w2b_i1
            mem[w2b_i0 + 1] = (w2b_i1 >> 8)
            mem[w2b_i0 + 2] = (w2b_i1 >> 16)
            mem[w2b_i0 + 3] = (w2b_i1 >> 24)
            w2b_i0 = w2b_l4
            w2b_i1 = 4%
            w2b_i0 += w2b_i1
            w2b_l4 = w2b_i0
            w2b_i0 = w2b_p0
            w2b_i1 = 16%
            w2b_i0 += w2b_i1
            w2b_p0 = w2b_i0
            w2b_i0 = w2b_p3
            w2b_i1 = 4%
            w2b_i0 -= w2b_i1
            w2b_p3 = w2b_i0
            w2b_i1 = 4%
            If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
              w2b_i0 = 1
            Else
              w2b_i0 = 0
            End If
            If w2b_i0 Then
              Goto w2b_l36_25362614
            End If
          w2b_i0 = w2b_l4
          w2b_i0 = (mem[w2b_i0])
          w2b_l6 = w2b_i0
          w2b_b35_23330987:
          w2b_i0 = w2b_l6
          w2b_i1 = 255%
          w2b_i0 = w2b_i0 AND w2b_i1
          w2b_l5 = w2b_i0
          w2b_i1 = 1%
          w2b_i0 -= w2b_i1
          w2b_l7 = w2b_i0
          w2b_b33_23199913:
          w2b_i0 = w2b_l7
          w2b_i1 = 126%
          If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
            w2b_i0 = 1
          Else
            w2b_i0 = 0
          End If
          If w2b_i0 Then
            Goto w2b_b29_23462062
          End If
          w2b_b32_23134376:
          w2b_i0 = w2b_p0
          w2b_i1 = w2b_l5
          mem[w2b_i0] = w2b_i1
          mem[w2b_i0 + 1] = (w2b_i1 >> 8)
          mem[w2b_i0 + 2] = (w2b_i1 >> 16)
          mem[w2b_i0 + 3] = (w2b_i1 >> 24)
          w2b_i0 = w2b_p0
          w2b_i1 = 4%
          w2b_i0 += w2b_i1
          w2b_p0 = w2b_i0
          w2b_i0 = w2b_l4
          w2b_i1 = 1%
          w2b_i0 += w2b_i1
          w2b_l4 = w2b_i0
          w2b_i0 = w2b_p3
          w2b_i1 = 1%
          w2b_i0 -= w2b_i1
          w2b_p3 = w2b_i0
          If w2b_i0 Then
            Goto w2b_l31_25034929
          End If
      End If
      w2b_i0 = w2b_p1
      w2b_i1 = w2b_l4
      mem[w2b_i0] = w2b_i1
      mem[w2b_i0 + 1] = (w2b_i1 >> 8)
      mem[w2b_i0 + 2] = (w2b_i1 >> 16)
      mem[w2b_i0 + 3] = (w2b_i1 >> 24)
      w2b_i0 = w2b_p2
      Goto w2b_bfunc_92602863
      w2b_b29_23462062:
      w2b_i0 = w2b_l5
      w2b_i1 = 194%
      w2b_i0 -= w2b_i1
      w2b_l5 = w2b_i0
      w2b_i1 = 50%
      If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_l4
        w2b_l5 = w2b_i0
        Goto w2b_b3_12124278
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 1%
      w2b_i0 += w2b_i1
      w2b_l4 = w2b_i0
      w2b_i0 = w2b_l5
      w2b_i1 = 2%
      w2b_i0 <<= (w2b_i1 AND 31)
      w2b_i1 = 32080%
      w2b_i0 += w2b_i1
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l6 = w2b_i0
      w2b_i0 = 1%
      w2b_l5 = w2b_i0
      Goto w2b_l27_25297078
    End If
    w2b_i0 = w2b_l4
    w2b_i0 = (mem[w2b_i0])
    w2b_l5 = w2b_i0
    w2b_i1 = 3%
    w2b_i0 >>= (w2b_i1 AND 31)
    w2b_l7 = w2b_i0
    w2b_i1 = 16%
    w2b_i0 -= w2b_i1
    w2b_i1 = w2b_l6
    w2b_i2 = 26%
    w2b_i2 = w2b_i2 And &H1F
If w2b_i1 < 0 And w2b_i2 <> 0 Then
    w2b_i1 = (w2b_i1 >> w2b_i2) Or (&HFFFFFFFF << (32 - w2b_i2))
Else
    w2b_i1 = w2b_i1 >> w2b_i2
End If
w2b_i2 = w2b_l7
    w2b_i1 += w2b_i2
    w2b_i0 = w2b_i0 OR w2b_i1
    w2b_i1 = 7%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b4_12189815
    End If
    w2b_i0 = w2b_l4
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_l7 = w2b_i0
    w2b_i0 = w2b_l7
    w2b_i1 = w2b_l5
    w2b_i2 = 128%
    w2b_i1 -= w2b_i2
    w2b_i2 = w2b_l6
    w2b_i3 = 6%
    w2b_i2 <<= (w2b_i3 AND 31)
    w2b_i1 = w2b_i1 OR w2b_i2
    w2b_l5 = w2b_i1
    w2b_i2 = 4294967295%
    If w2b_i1 > w2b_i2 Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b40_23134375
    End If
    w2b_i0 = w2b_l7
    w2b_i0 = (mem[w2b_i0])
    w2b_i1 = 128%
    w2b_i0 -= w2b_i1
    w2b_l8 = w2b_i0
    w2b_i1 = 63%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b39_23593135
    End If
    w2b_i0 = w2b_l4
    w2b_i1 = 2%
    w2b_i0 += w2b_i1
    w2b_l7 = w2b_i0
    w2b_i0 = w2b_l7
    w2b_i1 = w2b_l5
    w2b_i2 = 6%
    w2b_i1 <<= (w2b_i2 AND 31)
    w2b_i2 = w2b_l8
    w2b_i1 = w2b_i1 OR w2b_i2
    w2b_l5 = w2b_i1
    w2b_i2 = 4294967295%
    If w2b_i1 > w2b_i2 Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b40_23134375
    End If
    w2b_i0 = w2b_l7
    w2b_i0 = (mem[w2b_i0])
    w2b_i1 = 128%
    w2b_i0 -= w2b_i1
    w2b_l7 = w2b_i0
    w2b_i1 = 63%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b39_23593135
    End If
    w2b_i0 = w2b_l5
    w2b_i1 = 6%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = w2b_l7
    w2b_i0 = w2b_i0 OR w2b_i1
    w2b_l5 = w2b_i0
    w2b_i0 = w2b_l4
    w2b_i1 = 3%
    w2b_i0 += w2b_i1
    w2b_b40_23134375:
    w2b_l4 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_l5
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_p3
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_p3 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = 4%
    w2b_i0 += w2b_i1
    w2b_p0 = w2b_i0
    Goto w2b_b38_23527598
    w2b_b39_23593135:
    w2b_i0 = 56428%
    w2b_i1 = 25%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_l4
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_l5 = w2b_i0
    Goto w2b_b1_11993204
    w2b_b38_23527598:
    w2b_i0 = 0%
    w2b_l5 = w2b_i0
    Goto w2b_l27_25297078
  Unreachable()
  w2b_b4_12189815:
  w2b_i0 = w2b_l4
  w2b_i1 = 1%
  w2b_i0 -= w2b_i1
  w2b_l5 = w2b_i0
  w2b_i0 = w2b_l6
  If w2b_i0 Then
    Goto w2b_b2_12058741
  End If
  w2b_i0 = w2b_l5
  w2b_i0 = (mem[w2b_i0])
  w2b_l6 = w2b_i0
  w2b_b3_12124278:
  w2b_i0 = w2b_l6
  w2b_i1 = 255%
  w2b_i0 = w2b_i0 AND w2b_i1
  If w2b_i0 Then
    Goto w2b_b2_12058741
  End If
  w2b_i0 = w2b_p0
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    w2b_i1 = 0%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_p0
    w2b_i1 = 0%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = w2b_p3
  w2b_i0 -= w2b_i1
  Goto w2b_bfunc_92602863
  w2b_b2_12058741:
  w2b_i0 = 56428%
  w2b_i1 = 25%
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_i0 = w2b_p0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_b1_11993204:
  w2b_i0 = w2b_p1
  w2b_i1 = w2b_l5
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_b0_11927667:
  w2b_i0 = 4294967295%
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_mbtowc(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l3 = 0
  w2b_l4 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_l3 = w2b_i0
  w2b_i0 = w2b_p1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = 0%
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p2
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = w2b_l3
  w2b_i2 = 12%
  w2b_i1 += w2b_i2
  w2b_i2 = w2b_p0
  If w2b_i2 = 0 Then
    w2b_i0 = w2b_i1
  End If
  w2b_p0 = w2b_i0
  w2b_i0 = w2b_p1
  w2b_i0 = (mem[w2b_i0])
  w2b_l3 = w2b_i0
  w2b_i1 = 24%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = 24%
  w2b_i1 = w2b_i1 And &H1F
If w2b_i0 < 0 And w2b_i1 <> 0 Then
    w2b_i0 = (w2b_i0 >> w2b_i1) Or (&HFFFFFFFF << (32 - w2b_i1))
Else
    w2b_i0 = w2b_i0 >> w2b_i1
End If
w2b_l4 = w2b_i0
  w2b_i1 = 0%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_l3
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_l4
    w2b_i1 = 0%
    If w2b_i0 <> w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = 56800%
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_l4
    w2b_i2 = 57343%
    w2b_i1 = w2b_i1 AND w2b_i2
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = 1%
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 194%
  w2b_i0 -= w2b_i1
  w2b_l3 = w2b_i0
  w2b_i1 = 50%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 2%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = 32080%
  w2b_i0 += w2b_i1
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l3 = w2b_i0
  w2b_i0 = w2b_p2
  w2b_i1 = 3%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = w2b_p2
    w2b_i2 = 6%
    w2b_i1 *= w2b_i2
    w2b_i2 = 6%
    w2b_i1 -= w2b_i2
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = 0%
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
  End If
  w2b_i0 = w2b_p1
  w2b_i0 = (mem[w2b_i0 + 1])
  w2b_p2 = w2b_i0
  w2b_i1 = 3%
  w2b_i0 >>= (w2b_i1 AND 31)
  w2b_l4 = w2b_i0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_i1 = w2b_l3
  w2b_i2 = 26%
  w2b_i2 = w2b_i2 And &H1F
If w2b_i1 < 0 And w2b_i2 <> 0 Then
    w2b_i1 = (w2b_i1 >> w2b_i2) Or (&HFFFFFFFF << (32 - w2b_i2))
Else
    w2b_i1 = w2b_i1 >> w2b_i2
End If
w2b_i2 = w2b_l4
  w2b_i1 += w2b_i2
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_i1 = 7%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = 128%
  w2b_i0 -= w2b_i1
  w2b_i1 = w2b_l3
  w2b_i2 = 6%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_p2 = w2b_i0
  w2b_i1 = 0%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_p2
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = 2%
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p1
  w2b_i0 = (mem[w2b_i0 + 2])
  w2b_i1 = 128%
  w2b_i0 -= w2b_i1
  w2b_l3 = w2b_i0
  w2b_i1 = 63%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = 6%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = w2b_l3
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_p2 = w2b_i0
  w2b_i1 = 0%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_p2
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = 3%
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p1
  w2b_i0 = (mem[w2b_i0 + 3])
  w2b_i1 = 128%
  w2b_i0 -= w2b_i1
  w2b_p1 = w2b_i0
  w2b_i1 = 63%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = w2b_p2
  w2b_i2 = 6%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i2 = w2b_p1
  w2b_i1 = w2b_i1 OR w2b_i2
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_i0 = 4%
  Goto w2b_bfunc_92602863
  w2b_b1_11993204:
  w2b_i0 = 56428%
  w2b_i1 = 25%
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_i0 = 4294967295%
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_wcrtomb(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer) As Integer
  mem = m.w2b_memory
  w2b_i0 = 1%
  w2b_p2 = w2b_i0
  w2b_i0 = w2b_p0
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    w2b_i1 = 127%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      mem[w2b_i0] = w2b_i1
      w2b_i0 = 1%
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = 56800%
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p1
      w2b_i1 = 4294967168%
      w2b_i0 = w2b_i0 AND w2b_i1
      w2b_i1 = 57216%
      If w2b_i0 <> w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b2_12058741
      End If
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      mem[w2b_i0] = w2b_i1
      w2b_i0 = 1%
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = w2b_p1
    w2b_i1 = 2047%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 1] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 6%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 192%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0] = w2b_i1
      w2b_i0 = 2%
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = w2b_p1
    w2b_i1 = 55296%
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 0%
    w2b_i2 = w2b_p1
    w2b_i3 = 4294959104%
    w2b_i2 = w2b_i2 AND w2b_i3
    w2b_i3 = 57344%
    If w2b_i2 <> w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 2] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 12%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 224%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 6%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 1] = w2b_i1
      w2b_i0 = 3%
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = w2b_p1
    w2b_i1 = 65536%
    w2b_i0 -= w2b_i1
    w2b_i1 = 1048575%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 3] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 18%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 240%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 6%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 2] = w2b_i1
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_p1
      w2b_i2 = 12%
      w2b_i1 >>= (w2b_i2 AND 31)
      w2b_i2 = 63%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i2 = 128%
      w2b_i1 = w2b_i1 OR w2b_i2
      mem[w2b_i0 + 1] = w2b_i1
      w2b_i0 = 4%
      Goto w2b_bfunc_92602863
    End If
    w2b_b2_12058741:
    w2b_i0 = 56428%
    w2b_i1 = 25%
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = 4294967295%
  Else
    w2b_i0 = 1%
  End If
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_wcsnrtombs(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer, w2b_p3 As Integer, w2b_p4 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  w2b_l9 = 0
  w2b_l10 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 272%
  w2b_i0 -= w2b_i1
  w2b_l7 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_l7
  w2b_i1 = w2b_p1
  If w2b_i1 And &H3 Then
    w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
  Else
    w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
  End If
  w2b_p4 = w2b_i1
  mem[w2b_i0 + 12] = w2b_i1
  mem[w2b_i0 + 13] = (w2b_i1 >> 8)
  mem[w2b_i0 + 14] = (w2b_i1 >> 16)
  mem[w2b_i0 + 15] = (w2b_i1 >> 24)
  w2b_i0 = w2b_p0
  w2b_i1 = w2b_l7
  w2b_i2 = 16%
  w2b_i1 += w2b_i2
  w2b_i2 = w2b_p0
  If w2b_i2 = 0 Then
    w2b_i0 = w2b_i1
  End If
  w2b_l9 = w2b_i0
  w2b_i0 = w2b_p3
  w2b_i1 = 256%
  w2b_i2 = w2b_p0
  If w2b_i2 = 0 Then
    w2b_i0 = w2b_i1
  End If
  w2b_p3 = w2b_i0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p4
    w2b_l8 = w2b_i0
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p4
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p4
    w2b_l8 = w2b_i0
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = w2b_p3
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_l5 = w2b_i0
  If w2b_i0 Then
    Goto w2b_b4_12189815
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = 33%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b4_12189815
  End If
  w2b_i0 = w2b_p4
  w2b_l8 = w2b_i0
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  Goto w2b_b0_11927667
  w2b_b4_12189815:
  w2b_l5_13566082:
    
    w2b_i0 = w2b_l9
    w2b_i1 = w2b_l7
    w2b_i2 = 12%
    w2b_i1 += w2b_i2
    w2b_i2 = w2b_p3
    w2b_i3 = w2b_p2
    w2b_i4 = w2b_l5
    w2b_i5 = 1%
    w2b_i4 = w2b_i4 AND w2b_i5
    If w2b_i4 = 0 Then
      w2b_i2 = w2b_i3
    End If
    w2b_i0 = w2b_wcsrtombs(w2b_i0, w2b_i1, w2b_i2)
    w2b_l5 = w2b_i0
    w2b_i1 = 4294967295%
    If w2b_i0 = w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = 4294967295%
      w2b_l6 = w2b_i0
      w2b_i0 = 0%
      w2b_p3 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i0 += 12
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l8 = w2b_i0
      Goto w2b_b6_12320889
    End If
    w2b_i0 = w2b_l7
    w2b_i0 += 12
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l8 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l5
      w2b_i1 = w2b_l6
      w2b_i0 += w2b_i1
      w2b_l6 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_l9
    w2b_i1 = w2b_l5
    w2b_i2 = w2b_l9
    w2b_i1 += w2b_i2
    w2b_i2 = w2b_l7
    w2b_i3 = 16%
    w2b_i2 += w2b_i3
    w2b_i3 = w2b_l9
    If w2b_i2 = w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    w2b_l10 = w2b_i2
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    w2b_l9 = w2b_i0
    w2b_i0 = w2b_l5
    w2b_i1 = w2b_l6
    w2b_i0 += w2b_i1
    w2b_l6 = w2b_i0
    w2b_i0 = w2b_p2
    w2b_i1 = w2b_l8
    w2b_i2 = w2b_p4
    w2b_i1 -= w2b_i2
    w2b_i2 = 2%
    w2b_i2 = w2b_i2 And &H1F
If w2b_i1 < 0 And w2b_i2 <> 0 Then
    w2b_i1 = (w2b_i1 >> w2b_i2) Or (&HFFFFFFFF << (32 - w2b_i2))
Else
    w2b_i1 = w2b_i1 >> w2b_i2
End If
w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_p3
    w2b_i1 = 0%
    w2b_i2 = w2b_l5
    w2b_i3 = w2b_l10
    If w2b_i3 = 0 Then
      w2b_i1 = w2b_i2
    End If
    w2b_i0 -= w2b_i1
    w2b_p3 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_i0 = w2b_l8
    w2b_p4 = w2b_i0
    w2b_i0 = w2b_p2
    w2b_i1 = w2b_p3
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_l5 = w2b_i0
    If w2b_i0 Then
      Goto w2b_l5_13566082
    End If
    w2b_i0 = w2b_p2
    w2b_i1 = 33%
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l5_13566082
    End If
    w2b_b6_12320889:
  w2b_i0 = w2b_l8
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_b1_11993204:
  w2b_i0 = w2b_p3
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p2
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p2
  w2b_i1 = 1%
  w2b_i0 -= w2b_i1
  w2b_p4 = w2b_i0
  w2b_i0 = w2b_l6
  w2b_l5 = w2b_i0
  w2b_l9_13828230:
    
    w2b_i0 = w2b_l9
    w2b_i1 = w2b_l8
    If w2b_i1 And &H3 Then
      w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
    Else
      w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
    End If
    w2b_i2 = 0%
    w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
    w2b_p2 = w2b_i0
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_i1 = 1%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = 4294967295%
      w2b_l6 = w2b_i0
      w2b_i0 = w2b_p2
      If w2b_i0 Then
        Goto w2b_b0_11927667
      End If
      w2b_i0 = w2b_l7
      w2b_i1 = 0%
      mem[w2b_i0 + 12] = w2b_i1
      mem[w2b_i0 + 13] = (w2b_i1 >> 8)
      mem[w2b_i0 + 14] = (w2b_i1 >> 16)
      mem[w2b_i0 + 15] = (w2b_i1 >> 24)
      w2b_i0 = w2b_l5
      w2b_l6 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_l7
    w2b_i1 = w2b_l7
    w2b_i1 += 12
    If w2b_i1 And &H3 Then
      w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
    Else
      w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
    End If
    w2b_i2 = 4%
    w2b_i1 += w2b_i2
    w2b_l8 = w2b_i1
    mem[w2b_i0 + 12] = w2b_i1
    mem[w2b_i0 + 13] = (w2b_i1 >> 8)
    mem[w2b_i0 + 14] = (w2b_i1 >> 16)
    mem[w2b_i0 + 15] = (w2b_i1 >> 24)
    w2b_i0 = w2b_p2
    w2b_i1 = w2b_l5
    w2b_i0 += w2b_i1
    w2b_l5 = w2b_i0
    w2b_i0 = w2b_p3
    w2b_i1 = w2b_p2
    w2b_i0 -= w2b_i1
    w2b_p3 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l5
      w2b_l6 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_p2
    w2b_i1 = w2b_l9
    w2b_i0 += w2b_i1
    w2b_l9 = w2b_i0
    w2b_i0 = w2b_p4
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i1 = w2b_p4
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = w2b_p2
    w2b_p4 = w2b_i1
    w2b_i1 = w2b_l5
    w2b_l6 = w2b_i1
    If w2b_i0 Then
      Goto w2b_l9_13828230
    End If
  w2b_b0_11927667:
  w2b_i0 = w2b_p0
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_l7
    w2b_i1 += 12
    If w2b_i1 And &H3 Then
      w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
    Else
      w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
    End If
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  End If
  w2b_i0 = w2b_l7
  w2b_i1 = 272%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_l6
  Return w2b_i0
End Function
Function w2b_wcsrtombs(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_l7 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_p0
  If w2b_i0 Then
    w2b_i0 = w2b_p2
    w2b_i1 = 4%
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b2_12058741
    End If
    w2b_i0 = w2b_p2
    w2b_l3 = w2b_i0
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_p1
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_p0 = w2b_i0
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l3 = w2b_i0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 4%
  w2b_i0 += w2b_i1
  w2b_p0 = w2b_i0
  w2b_i0 = 0%
  w2b_p1 = w2b_i0
  w2b_l4_13500545:
    
    w2b_i0 = 1%
    w2b_l5 = w2b_i0
    w2b_i0 = w2b_l3
    w2b_i1 = 128%
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = 4294967295%
      w2b_l6 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i1 = 12%
      w2b_i0 += w2b_i1
      w2b_i1 = w2b_l3
      w2b_i2 = 0%
      w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
      w2b_l5 = w2b_i0
      w2b_i1 = 4294967295%
      If w2b_i0 = w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b0_11927667
      End If
    End If
    w2b_i0 = w2b_p0
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l3 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = 4%
    w2b_i0 += w2b_i1
    w2b_p0 = w2b_i0
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_l5
    w2b_i0 += w2b_i1
    w2b_p1 = w2b_i0
    w2b_l6 = w2b_i0
    w2b_i0 = w2b_l3
    If w2b_i0 Then
      Goto w2b_l4_13500545
    End If
  Goto w2b_b0_11927667
  w2b_b2_12058741:
  w2b_i0 = w2b_p1
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l5 = w2b_i0
  w2b_i0 = w2b_p2
  w2b_l3 = w2b_i0
  w2b_l6_13631619:
    
    w2b_i0 = w2b_l5
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l4 = w2b_i0
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_i1 = 127%
    If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l4
      If w2b_i0 = 0% Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_p0
        w2b_i1 = 0%
        mem[w2b_i0] = w2b_i1
        w2b_i0 = w2b_p1
        w2b_i1 = 0%
        mem[w2b_i0] = w2b_i1
        mem[w2b_i0 + 1] = (w2b_i1 >> 8)
        mem[w2b_i0 + 2] = (w2b_i1 >> 16)
        mem[w2b_i0 + 3] = (w2b_i1 >> 24)
        w2b_i0 = w2b_p2
        w2b_i1 = w2b_l3
        w2b_i0 -= w2b_i1
        w2b_l6 = w2b_i0
        Goto w2b_b0_11927667
      End If
      w2b_i0 = 4294967295%
      w2b_l6 = w2b_i0
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_l4
      w2b_i2 = 0%
      w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
      w2b_l4 = w2b_i0
      w2b_i1 = 4294967295%
      If w2b_i0 = w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b0_11927667
      End If
      w2b_i0 = w2b_l3
      w2b_i1 = w2b_l4
      w2b_i0 -= w2b_i1
      w2b_l3 = w2b_i0
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_l4
      w2b_i0 += w2b_i1
      Goto w2b_b7_12386426
    End If
    w2b_i0 = w2b_p0
    w2b_i1 = w2b_l4
    mem[w2b_i0] = w2b_i1
    w2b_i0 = w2b_l3
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_l3 = w2b_i0
    w2b_i0 = w2b_p1
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l5 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_b7_12386426:
    w2b_p0 = w2b_i0
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_l5
    w2b_i2 = 4%
    w2b_i1 += w2b_i2
    w2b_l5 = w2b_i1
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_l3
    w2b_i1 = 3%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l6_13631619
    End If
  w2b_b1_11993204:
  w2b_i0 = w2b_l3
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_l5 = w2b_i0
    w2b_l11_24772783:
      
      w2b_i0 = w2b_l5
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l4 = w2b_i0
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_i1 = 127%
      If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_l4
        If w2b_i0 = 0% Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          w2b_i0 = w2b_p0
          w2b_i1 = 0%
          mem[w2b_i0] = w2b_i1
          w2b_i0 = w2b_p1
          w2b_i1 = 0%
          mem[w2b_i0] = w2b_i1
          mem[w2b_i0 + 1] = (w2b_i1 >> 8)
          mem[w2b_i0 + 2] = (w2b_i1 >> 16)
          mem[w2b_i0 + 3] = (w2b_i1 >> 24)
          w2b_i0 = w2b_p2
          w2b_i1 = w2b_l3
          w2b_i0 -= w2b_i1
          w2b_l6 = w2b_i0
          Goto w2b_b0_11927667
        End If
        w2b_i0 = 4294967295%
        w2b_l6 = w2b_i0
        w2b_i0 = w2b_l7
        w2b_i1 = 12%
        w2b_i0 += w2b_i1
        w2b_i1 = w2b_l4
        w2b_i2 = 0%
        w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
        w2b_l4 = w2b_i0
        w2b_i1 = 4294967295%
        If w2b_i0 = w2b_i1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_b0_11927667
        End If
        w2b_i0 = w2b_l3
        w2b_i1 = w2b_l4
        If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          w2b_i0 = w2b_p2
          w2b_i1 = w2b_l3
          w2b_i0 -= w2b_i1
          w2b_l6 = w2b_i0
          Goto w2b_b0_11927667
        End If
        w2b_i0 = w2b_p0
        w2b_i1 = w2b_l5
        If w2b_i1 And &H3 Then
          w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
        Else
          w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
        End If
        w2b_i2 = 0%
        w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
        w2b_i0 = w2b_l3
        w2b_i1 = w2b_l4
        w2b_i0 -= w2b_i1
        w2b_l3 = w2b_i0
        w2b_i0 = w2b_p0
        w2b_i1 = w2b_l4
        w2b_i0 += w2b_i1
        Goto w2b_b12_22872230
      End If
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_l4
      mem[w2b_i0] = w2b_i1
      w2b_i0 = w2b_l3
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_l3 = w2b_i0
      w2b_i0 = w2b_p1
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_p0
      w2b_i1 = 1%
      w2b_i0 += w2b_i1
      w2b_b12_22872230:
      w2b_p0 = w2b_i0
      w2b_i0 = w2b_p1
      w2b_i1 = w2b_l5
      w2b_i2 = 4%
      w2b_i1 += w2b_i2
      w2b_l5 = w2b_i1
      mem[w2b_i0] = w2b_i1
      mem[w2b_i0 + 1] = (w2b_i1 >> 8)
      mem[w2b_i0 + 2] = (w2b_i1 >> 16)
      mem[w2b_i0 + 3] = (w2b_i1 >> 24)
      w2b_i0 = w2b_l3
      If w2b_i0 Then
        Goto w2b_l11_24772783
      End If
  End If
  w2b_i0 = w2b_p2
  w2b_l6 = w2b_i0
  w2b_b0_11927667:
  w2b_i0 = w2b_l7
  w2b_i1 = 16%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_l6
  Return w2b_i0
End Function
Function w2b_wctomb(w2b_p0 As Integer, w2b_p1 As Integer) As Integer
  mem = m.w2b_memory
  w2b_i0 = w2b_p0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = 0%
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = w2b_p1
  w2b_i2 = 0%
  w2b_i0 = w2b_wcrtomb(w2b_i0, w2b_i1, w2b_i2)
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_iswalpha(w2b_p0 As Integer) As Integer
  mem = m.w2b_memory
  w2b_i0 = w2b_p0
  w2b_i1 = 131071%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = 3%
    w2b_i0 >>= (w2b_i1 AND 31)
    w2b_i1 = 31%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_i1 = w2b_p0
    w2b_i2 = 8%
    w2b_i1 >>= (w2b_i2 AND 31)
    w2b_i2 = 32288%
    w2b_i1 += w2b_i2
    w2b_i1 = (mem[w2b_i1])
    w2b_i2 = 5%
    w2b_i1 <<= (w2b_i2 AND 31)
    w2b_i0 = w2b_i0 OR w2b_i1
    w2b_i1 = 32288%
    w2b_i0 += w2b_i1
    w2b_i0 = (mem[w2b_i0])
    w2b_i1 = w2b_p0
    w2b_i2 = 7%
    w2b_i1 = w2b_i1 AND w2b_i2
    w2b_i0 >>= (w2b_i1 AND 31)
    w2b_i1 = 1%
    w2b_i0 = w2b_i0 AND w2b_i1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 196606%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_towupper(w2b_p0 As Integer) As Integer
  mem = m.w2b_memory
  w2b_i0 = w2b_p0
  w2b_i1 = 127%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = 95%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_i1 = w2b_p0
    w2b_i2 = w2b_p0
    w2b_i3 = 97%
    w2b_i2 -= w2b_i3
    w2b_i3 = 26%
    If (w2b_i2 And &HFFFFFFFF&) < (w2b_i3 And &HFFFFFFFF&) Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i0 = w2b___towcase(w2b_i0)
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b___towcase(w2b_p0 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  w2b_l3 = 0
  
  w2b_i0 = w2b_p0
  w2b_i0 = w2b_iswalpha(w2b_i0)
  w2b_l1 = w2b_i0
  w2b_i0 = w2b_p0
  w2b_i1 = 43968%
  w2b_i0 -= w2b_i1
  w2b_i1 = 21312%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 43008%
  w2b_i0 -= w2b_i1
  w2b_i1 = 851%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 11776%
  w2b_i0 -= w2b_i1
  w2b_i1 = 30784%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 1536%
  w2b_i0 -= w2b_i1
  w2b_i1 = 2560%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_l1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 11520%
  w2b_i0 -= w2b_i1
  w2b_i1 = 37%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = 7264%
    w2b_i0 -= w2b_i1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 43888%
  w2b_i0 -= w2b_i1
  w2b_i1 = 80%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_i0 = 4294967040%
  w2b_l1 = w2b_i0
  w2b_l5_13566082:
    
    w2b_i0 = w2b_l1
    w2b_i1 = 36227%
    w2b_i0 += w2b_i1
    w2b_i0 = (mem[w2b_i0])
    w2b_i1 = w2b_p0
    w2b_i2 = w2b_l1
    w2b_i3 = 36224%
    w2b_i2 += w2b_i3
    w2b_i2 = (mem[w2b_i2]) + (mem[w2b_i2 + 1] << 8)
    w2b_i1 -= w2b_i2
    w2b_l3 = w2b_i1
    w2b_i2 = w2b_l1
    w2b_i3 = 36226%
    w2b_i2 += w2b_i3
    w2b_i2 = mem.GetSignedByte(w2b_i2)
    w2b_l2 = w2b_i2
    w2b_i1 -= w2b_i2
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l2
      w2b_i1 = 1%
      If w2b_i0 <> w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b2_12058741
      End If
      w2b_i0 = w2b_p0
      w2b_i1 = w2b_l3
      w2b_i2 = 1%
      w2b_i1 = w2b_i1 AND w2b_i2
      w2b_i0 -= w2b_i1
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = w2b_l1
    w2b_i1 = 4%
    w2b_i0 += w2b_i1
    w2b_l1 = w2b_i0
    If w2b_i0 Then
      Goto w2b_l5_13566082
    End If
  w2b_i0 = 36242%
  w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8)
  w2b_l1 = w2b_i0
  If w2b_i0 Then
    w2b_i0 = 36240%
    w2b_l2 = w2b_i0
    w2b_i0 = 36246%
    w2b_l3 = w2b_i0
    w2b_l8_13762693:
      
      w2b_i0 = w2b_l1
      w2b_i1 = 65535%
      w2b_i0 = w2b_i0 AND w2b_i1
      w2b_i1 = w2b_p0
      If w2b_i0 = w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_l2
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8)
        Goto w2b_bfunc_92602863
      End If
      w2b_i0 = w2b_l2
      w2b_i1 = 4%
      w2b_i0 += w2b_i1
      w2b_l2 = w2b_i0
      w2b_i0 = w2b_l3
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8)
      w2b_l1 = w2b_i0
      w2b_i0 = w2b_l3
      w2b_i1 = 4%
      w2b_i0 += w2b_i1
      w2b_l3 = w2b_i0
      w2b_i0 = w2b_l1
      If w2b_i0 Then
        Goto w2b_l8_13762693
      End If
  End If
  w2b_i0 = w2b_p0
  w2b_l1 = w2b_i0
  w2b_i1 = 66600%
  w2b_i0 -= w2b_i1
  w2b_i1 = 39%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 66776%
  w2b_i0 -= w2b_i1
  w2b_i1 = 35%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 68800%
  w2b_i0 -= w2b_i1
  w2b_i1 = 50%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = 4294967232%
    w2b_i0 += w2b_i1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 71872%
  w2b_i0 -= w2b_i1
  w2b_i1 = 31%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p0
    w2b_i1 = 32%
    w2b_i0 -= w2b_i1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 125218%
  w2b_i0 -= w2b_i1
  w2b_i1 = 33%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b3_12124278
  End If
  w2b_i0 = w2b_p0
  w2b_i1 = 34%
  w2b_i0 -= w2b_i1
  w2b_p0 = w2b_i0
  w2b_b3_12124278:
  w2b_i0 = w2b_p0
  Goto w2b_bfunc_92602863
  w2b_b2_12058741:
  w2b_i0 = w2b_p0
  w2b_i1 = w2b_l2
  w2b_i0 -= w2b_i1
  Goto w2b_bfunc_92602863
  w2b_b1_11993204:
  w2b_i0 = w2b_p0
  w2b_i1 = 38864%
  w2b_i0 -= w2b_i1
  Goto w2b_bfunc_92602863
  w2b_b0_11927667:
  w2b_i0 = w2b_l1
  w2b_i1 = 40%
  w2b_i0 -= w2b_i1
  w2b_bfunc_92602863:
  Return w2b_i0
End Function
Function w2b_acos(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  
  w2b_l2 = 0
  
  w2b_l3 = 0
  w2b_l4 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l2 = w2b_j0
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 1072693248%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_j0 = w2b_l2
    w2b_i0 = I32WrapI64(w2b_j0)
    w2b_i1 = w2b_l1
    w2b_i2 = 1072693248%
    w2b_i1 -= w2b_i2
    w2b_i0 = w2b_i0 OR w2b_i1
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = 3.1415926535897931#
      w2b_d1 = 0#
      w2b_j2 = w2b_l2
      w2b_j3 = 0&
      If w2b_j2 < w2b_j3 Then
        w2b_i2 = 1
      Else
        w2b_i2 = 0
      End If
      If w2b_i2 = 0 Then
        w2b_d0 = w2b_d1
      End If
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = 0#
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 -= w2b_d2
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 1071644671%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1.5707963267948966#
    w2b_i1 = w2b_l1
    w2b_i2 = 1012924417%
    If (w2b_i1 And &HFFFFFFFF&) < (w2b_i2 And &HFFFFFFFF&) Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b2_12058741
    End If
    w2b_d0 = 6.123233995736766e-17#
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 *= w2b_d2
    w2b_l3 = w2b_d1
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_l3
    w2b_d4 = w2b_l3
    w2b_d5 = w2b_l3
    w2b_d6 = w2b_l3
    w2b_d7 = 3.4793310759602117e-05#
    w2b_d6 *= w2b_d7
    w2b_d7 = 0.00079153499428981453#
    w2b_d6 += w2b_d7
    w2b_d5 *= w2b_d6
    w2b_d6 = -0.040055534500679411#
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d5 = 0.20121253213486293#
    w2b_d4 += w2b_d5
    w2b_d3 *= w2b_d4
    w2b_d4 = -0.32556581862240092#
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d3 = 0.16666666666666666#
    w2b_d2 += w2b_d3
    w2b_d1 *= w2b_d2
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_l3
    w2b_d4 = w2b_l3
    w2b_d5 = w2b_l3
    w2b_d6 = 0.077038150555901935#
    w2b_d5 *= w2b_d6
    w2b_d6 = -0.68828397160545329#
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d5 = 2.0209457602335057#
    w2b_d4 += w2b_d5
    w2b_d3 *= w2b_d4
    w2b_d4 = -2.4033949117344142#
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d3 = 1#
    w2b_d2 += w2b_d3
    w2b_d1 = F64Div(w2b_d1, w2b_d2)
    w2b_d2 = w2b_p0
    w2b_d1 *= w2b_d2
    w2b_d0 -= w2b_d1
    w2b_d1 = w2b_p0
    w2b_d0 -= w2b_d1
    w2b_d1 = 1.5707963267948966#
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l2
  w2b_j1 = 18446744073709551615&
  If w2b_j0 <= w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1.5707963267948966#
    w2b_d1 = w2b_p0
    w2b_d2 = 1#
    w2b_d1 += w2b_d2
    w2b_d2 = 0.5#
    w2b_d1 *= w2b_d2
    w2b_p0 = w2b_d1
    w2b_d1 = F64Sqrt(w2b_d1)
    w2b_l3 = w2b_d1
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_p0
    w2b_d4 = w2b_p0
    w2b_d5 = w2b_p0
    w2b_d6 = w2b_p0
    w2b_d7 = w2b_p0
    w2b_d8 = w2b_p0
    w2b_d9 = 3.4793310759602117e-05#
    w2b_d8 *= w2b_d9
    w2b_d9 = 0.00079153499428981453#
    w2b_d8 += w2b_d9
    w2b_d7 *= w2b_d8
    w2b_d8 = -0.040055534500679411#
    w2b_d7 += w2b_d8
    w2b_d6 *= w2b_d7
    w2b_d7 = 0.20121253213486293#
    w2b_d6 += w2b_d7
    w2b_d5 *= w2b_d6
    w2b_d6 = -0.32556581862240092#
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d5 = 0.16666666666666666#
    w2b_d4 += w2b_d5
    w2b_d3 *= w2b_d4
    w2b_d4 = w2b_p0
    w2b_d5 = w2b_p0
    w2b_d6 = w2b_p0
    w2b_d7 = w2b_p0
    w2b_d8 = 0.077038150555901935#
    w2b_d7 *= w2b_d8
    w2b_d8 = -0.68828397160545329#
    w2b_d7 += w2b_d8
    w2b_d6 *= w2b_d7
    w2b_d7 = 2.0209457602335057#
    w2b_d6 += w2b_d7
    w2b_d5 *= w2b_d6
    w2b_d6 = -2.4033949117344142#
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d5 = 1#
    w2b_d4 += w2b_d5
    w2b_d3 = F64Div(w2b_d3, w2b_d4)
    w2b_d2 *= w2b_d3
    w2b_d3 = -6.123233995736766e-17#
    w2b_d2 += w2b_d3
    w2b_d1 += w2b_d2
    w2b_d0 -= w2b_d1
    w2b_p0 = w2b_d0
    w2b_d1 = w2b_p0
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = 1#
  w2b_d1 = w2b_p0
  w2b_d0 -= w2b_d1
  w2b_d1 = 0.5#
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d0 = F64Sqrt(w2b_d0)
  w2b_l4 = w2b_d0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_j1 = 18446744069414584320&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_d0 = F64ReinterpretI64(w2b_j0)
  w2b_l3 = w2b_d0
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_l3
  w2b_d2 = w2b_l3
  w2b_d1 *= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_d1 = w2b_l4
  w2b_d2 = w2b_l3
  w2b_d1 += w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_d1 = w2b_l4
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_p0
  w2b_d5 = w2b_p0
  w2b_d6 = w2b_p0
  w2b_d7 = w2b_p0
  w2b_d8 = 3.4793310759602117e-05#
  w2b_d7 *= w2b_d8
  w2b_d8 = 0.00079153499428981453#
  w2b_d7 += w2b_d8
  w2b_d6 *= w2b_d7
  w2b_d7 = -0.040055534500679411#
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d6 = 0.20121253213486293#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d5 = -0.32556581862240092#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = 0.16666666666666666#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_p0
  w2b_d5 = w2b_p0
  w2b_d6 = w2b_p0
  w2b_d7 = 0.077038150555901935#
  w2b_d6 *= w2b_d7
  w2b_d7 = -0.68828397160545329#
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d6 = 2.0209457602335057#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d5 = -2.4033949117344142#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = 1#
  w2b_d3 += w2b_d4
  w2b_d2 = F64Div(w2b_d2, w2b_d3)
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_l3
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_b2_12058741:
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_asin(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  
  w2b_l2 = 0
  
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l2 = w2b_j0
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 1072693248%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_j0 = w2b_l2
    w2b_i0 = I32WrapI64(w2b_j0)
    w2b_i1 = w2b_l1
    w2b_i2 = 1072693248%
    w2b_i1 -= w2b_i2
    w2b_i0 = w2b_i0 OR w2b_i1
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 1.5707963267948966#
    w2b_d0 *= w2b_d1
    w2b_d1 = 7.5231638452626401e-37#
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 1071644671%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l1
    w2b_i1 = 4293918720%
    w2b_i0 += w2b_i1
    w2b_i1 = 1044381696%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b0_11927667
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d0 *= w2b_d1
    w2b_l3 = w2b_d0
    w2b_d1 = w2b_l3
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_l3
    w2b_d4 = w2b_l3
    w2b_d5 = w2b_l3
    w2b_d6 = 3.4793310759602117e-05#
    w2b_d5 *= w2b_d6
    w2b_d6 = 0.00079153499428981453#
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d5 = -0.040055534500679411#
    w2b_d4 += w2b_d5
    w2b_d3 *= w2b_d4
    w2b_d4 = 0.20121253213486293#
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d3 = -0.32556581862240092#
    w2b_d2 += w2b_d3
    w2b_d1 *= w2b_d2
    w2b_d2 = 0.16666666666666666#
    w2b_d1 += w2b_d2
    w2b_d0 *= w2b_d1
    w2b_d1 = w2b_l3
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_l3
    w2b_d4 = w2b_l3
    w2b_d5 = 0.077038150555901935#
    w2b_d4 *= w2b_d5
    w2b_d5 = -0.68828397160545329#
    w2b_d4 += w2b_d5
    w2b_d3 *= w2b_d4
    w2b_d4 = 2.0209457602335057#
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d3 = -2.4033949117344142#
    w2b_d2 += w2b_d3
    w2b_d1 *= w2b_d2
    w2b_d2 = 1#
    w2b_d1 += w2b_d2
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    w2b_d1 = w2b_p0
    w2b_d0 *= w2b_d1
    w2b_d1 = w2b_p0
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = 1#
  w2b_d1 = w2b_p0
  w2b_d1 = F64Abs(w2b_d1)
  w2b_d0 -= w2b_d1
  w2b_d1 = 0.5#
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_p0
  w2b_d5 = w2b_p0
  w2b_d6 = 3.4793310759602117e-05#
  w2b_d5 *= w2b_d6
  w2b_d6 = 0.00079153499428981453#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d5 = -0.040055534500679411#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = 0.20121253213486293#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = -0.32556581862240092#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = 0.16666666666666666#
  w2b_d1 += w2b_d2
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_p0
  w2b_d5 = 0.077038150555901935#
  w2b_d4 *= w2b_d5
  w2b_d5 = -0.68828397160545329#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = 2.0209457602335057#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = -2.4033949117344142#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = 1#
  w2b_d1 += w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_l4 = w2b_d0
  w2b_d0 = w2b_p0
  w2b_d0 = F64Sqrt(w2b_d0)
  w2b_l3 = w2b_d0
  w2b_i0 = w2b_l1
  w2b_i1 = 1072640819%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1.5707963267948966#
    w2b_d1 = w2b_l3
    w2b_d2 = w2b_l3
    w2b_d3 = w2b_l4
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_p0 = w2b_d1
    w2b_d2 = w2b_p0
    w2b_d1 += w2b_d2
    w2b_d2 = -6.123233995736766e-17#
    w2b_d1 += w2b_d2
    w2b_d0 -= w2b_d1
    Goto w2b_b4_12189815
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_l3
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 18446744069414584320&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_p0 = w2b_d1
  w2b_d2 = w2b_p0
  w2b_d1 *= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_d1 = w2b_l3
  w2b_d2 = w2b_p0
  w2b_d1 += w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_l5 = w2b_d0
  w2b_d0 = 0.78539816339744828#
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d1 += w2b_d2
  w2b_d0 -= w2b_d1
  w2b_d1 = w2b_l3
  w2b_d2 = w2b_l3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_l4
  w2b_d1 *= w2b_d2
  w2b_d2 = 6.123233995736766e-17#
  w2b_d3 = w2b_l5
  w2b_d4 = w2b_l5
  w2b_d3 += w2b_d4
  w2b_d2 -= w2b_d3
  w2b_d1 -= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_d1 = 0.78539816339744828#
  w2b_d0 += w2b_d1
  w2b_b4_12189815:
  w2b_p0 = w2b_d0
  w2b_d0 = -(w2b_d0)
  w2b_d1 = w2b_p0
  w2b_j2 = w2b_l2
  w2b_j3 = 0&
  If w2b_j2 < w2b_j3 Then
    w2b_i2 = 1
  Else
    w2b_i2 = 0
  End If
  If w2b_i2 = 0 Then
    w2b_d0 = w2b_d1
  End If
  Goto w2b_bfunc_92602863
  w2b_b1_11993204:
  w2b_d0 = 0#
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d1 -= w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_p0 = w2b_d0
  w2b_b0_11927667:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_atan(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  
  w2b_l3 = 0
  
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l3 = w2b_j0
  w2b_j1 = 63&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l2 = w2b_i0
  w2b_j0 = w2b_l3
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 1141899264%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    If w2b_d0 <> w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b0_11927667
    End If
    w2b_d0 = -1.5707963267948966#
    w2b_d1 = 1.5707963267948966#
    w2b_i2 = w2b_l2
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 1071382527%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = 4294967295%
    w2b_i1 = w2b_l1
    w2b_i2 = 1044381696%
    If (w2b_i1 And &HFFFFFFFF&) >= (w2b_i2 And &HFFFFFFFF&) Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b2_12058741
    End If
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_d0 = F64Abs(w2b_d0)
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l1
  w2b_i1 = 1072889855%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l1
    w2b_i1 = 1072037887%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = w2b_p0
      w2b_d0 += w2b_d1
      w2b_d1 = -1#
      w2b_d0 += w2b_d1
      w2b_d1 = w2b_p0
      w2b_d2 = 2#
      w2b_d1 += w2b_d2
      w2b_d0 = F64Div(w2b_d0, w2b_d1)
      w2b_p0 = w2b_d0
      w2b_i0 = 0%
      Goto w2b_b2_12058741
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = -1#
    w2b_d0 += w2b_d1
    w2b_d1 = w2b_p0
    w2b_d2 = 1#
    w2b_d1 += w2b_d2
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    w2b_p0 = w2b_d0
    w2b_i0 = 1%
    Goto w2b_b2_12058741
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 1073971199%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = -1.5#
    w2b_d0 += w2b_d1
    w2b_d1 = w2b_p0
    w2b_d2 = 1.5#
    w2b_d1 *= w2b_d2
    w2b_d2 = 1#
    w2b_d1 += w2b_d2
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    w2b_p0 = w2b_d0
    w2b_i0 = 2%
    Goto w2b_b2_12058741
  End If
  w2b_d0 = -1#
  w2b_d1 = w2b_p0
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_p0 = w2b_d0
  w2b_i0 = 3%
  w2b_b2_12058741:
  w2b_l1 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_l5 = w2b_d0
  w2b_d1 = w2b_l5
  w2b_d0 *= w2b_d1
  w2b_l4 = w2b_d0
  w2b_d1 = w2b_l4
  w2b_d2 = w2b_l4
  w2b_d3 = w2b_l4
  w2b_d4 = w2b_l4
  w2b_d5 = -0.036531572744216916#
  w2b_d4 *= w2b_d5
  w2b_d5 = -0.058335701337905735#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = -0.0769187620504483#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = -0.11111110405462356#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = -0.19999999999876483#
  w2b_d1 += w2b_d2
  w2b_d0 *= w2b_d1
  w2b_l6 = w2b_d0
  w2b_d0 = w2b_l5
  w2b_d1 = w2b_l4
  w2b_d2 = w2b_l4
  w2b_d3 = w2b_l4
  w2b_d4 = w2b_l4
  w2b_d5 = w2b_l4
  w2b_d6 = 0.016285820115365782#
  w2b_d5 *= w2b_d6
  w2b_d6 = 0.049768779946159324#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d5 = 0.066610731373875312#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = 0.090908871334365066#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = 0.14285714272503466#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = 0.33333333333332932#
  w2b_d1 += w2b_d2
  w2b_d0 *= w2b_d1
  w2b_l4 = w2b_d0
  w2b_i0 = w2b_l1
  w2b_i1 = 4294967295%
  If w2b_i0 <= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l6
    w2b_d3 = w2b_l4
    w2b_d2 += w2b_d3
    w2b_d1 *= w2b_d2
    w2b_d0 -= w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 3%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_l1 = w2b_i0
  w2b_i1 = 36800%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_l6
  w2b_d3 = w2b_l4
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_i2 = w2b_l1
  w2b_i3 = 36832%
  w2b_i2 += w2b_i3
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d1 -= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d0 = -(w2b_d0)
  w2b_d1 = w2b_p0
  w2b_i2 = w2b_l2
  If w2b_i2 = 0 Then
    w2b_d0 = w2b_d1
  End If
  w2b_p0 = w2b_d0
  w2b_b0_11927667:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_atan2(w2b_p0 As Double, w2b_p1 As Double) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  
  w2b_l8 = 0
  
  w2b_d0 = w2b_p1
  w2b_d1 = w2b_p1
  If w2b_d0 = w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  If w2b_d1 = w2b_d2 Then
    w2b_i1 = 1
  Else
    w2b_i1 = 0
  End If
  w2b_i0 = w2b_i0 AND w2b_i1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p1
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p1
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l8 = w2b_j0
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l2 = w2b_i0
  w2b_j0 = w2b_l8
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l6 = w2b_i0
  w2b_i1 = w2b_l2
  w2b_i2 = 1072693248%
  w2b_i1 -= w2b_i2
  w2b_i0 = w2b_i0 OR w2b_i1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d0 = w2b_atan(w2b_d0)
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l8
  w2b_j1 = 62&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l7 = w2b_i0
  w2b_d1 = w2b_p0
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_l8 = w2b_j1
  w2b_j2 = 63&
  w2b_j1 >>= (w2b_j2 AND 63)
  w2b_i1 = I32WrapI64(w2b_j1)
  w2b_l5 = w2b_i1
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_l3 = w2b_i0
  w2b_j0 = w2b_l8
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l4 = w2b_i0
  w2b_j1 = w2b_l8
  w2b_i1 = I32WrapI64(w2b_j1)
  w2b_i0 = w2b_i0 OR w2b_i1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = 2%
    w2b_i0 -= w2b_i1
    switch = w2b_i0
    If switch = 1 Then
      Goto w2b_b5_12255352
    End If
    If switch = 0 Then
      Goto w2b_b3_12124278
    End If
    Goto w2b_b2_12058741
    w2b_b5_12255352:
    w2b_d0 = -3.1415926535897931#
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = w2b_l6
  w2b_i0 = w2b_i0 OR w2b_i1
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = -1.5707963267948966#
    w2b_d1 = 1.5707963267948966#
    w2b_i2 = w2b_l5
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 2146435072%
  If w2b_i0 = w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l4
    w2b_i1 = 2146435072%
    If w2b_i0 <> w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b7_12386426
    End If
    w2b_i0 = w2b_l3
    w2b_i1 = 3%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = 36864%
    w2b_i0 += w2b_i1
    w2b_d0 = F64Load(mem, w2b_i0)
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l4
  w2b_i1 = 2146435072%
  If w2b_i0 <> w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_i1 = 0%
  w2b_i2 = w2b_l2
  w2b_i3 = 67108864%
  w2b_i2 += w2b_i3
  w2b_i3 = w2b_l4
  If (w2b_i2 And &HFFFFFFFF&) >= (w2b_i3 And &HFFFFFFFF&) Then
    w2b_i2 = 1
  Else
    w2b_i2 = 0
  End If
  If w2b_i2 = 0 Then
    w2b_i0 = w2b_i1
  End If
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = -1.5707963267948966#
    w2b_d1 = 1.5707963267948966#
    w2b_i2 = w2b_l5
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l7
  If w2b_i0 Then
    w2b_d0 = 0#
    w2b_i1 = w2b_l4
    w2b_i2 = 67108864%
    w2b_i1 += w2b_i2
    w2b_i2 = w2b_l2
    If (w2b_i1 And &HFFFFFFFF&) < (w2b_i2 And &HFFFFFFFF&) Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b10_22741156
    End If
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p1
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_d0 = F64Abs(w2b_d0)
  w2b_d0 = w2b_atan(w2b_d0)
  w2b_b10_22741156:
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l3
  w2b_i1 = 2%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    switch = w2b_i0
    If switch = 1 Then
      Goto w2b_b13_22937767
    End If
    If switch = 0 Then
      Goto w2b_b14_23003304
    End If
    Goto w2b_b2_12058741
    w2b_b14_23003304:
    w2b_d0 = w2b_p0
    w2b_d0 = -(w2b_d0)
    Goto w2b_bfunc_92602863
    w2b_b13_22937767:
    w2b_d0 = 3.1415926535897931#
    w2b_d1 = w2b_p0
    w2b_d2 = -1.2246467991473532e-16#
    w2b_d1 += w2b_d2
    w2b_d0 -= w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = -1.2246467991473532e-16#
  w2b_d0 += w2b_d1
  w2b_d1 = -3.1415926535897931#
  w2b_d0 += w2b_d1
  Goto w2b_bfunc_92602863
  w2b_b7_12386426:
  w2b_i0 = w2b_l3
  w2b_i1 = 3%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = 36896%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  Goto w2b_bfunc_92602863
  w2b_b3_12124278:
  w2b_d0 = 3.1415926535897931#
  w2b_p0 = w2b_d0
  w2b_b2_12058741:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_cbrt(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  
  w2b_l3 = 0
  
  w2b_l4 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l3 = w2b_j0
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 2146435072%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = 715094163%
  w2b_l2 = w2b_i0
  w2b_i0 = w2b_l1
  w2b_i1 = 1048575%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = 696219795%
    w2b_l2 = w2b_i0
    w2b_d0 = w2b_p0
    w2b_d1 = 18014398509481984#
    w2b_d0 *= w2b_d1
    w2b_j0 = I64ReinterpretF64(w2b_d0)
    w2b_l3 = w2b_j0
    w2b_j1 = 32&
    w2b_j0 >>= (w2b_j1 AND 63)
    w2b_i0 = I32WrapI64(w2b_j0)
    w2b_i1 = 2147483647%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_l1 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
  End If
  w2b_d0 = w2b_p0
  w2b_j1 = w2b_l3
  w2b_j2 = 9223372036854775808&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_i2 = w2b_l1
  w2b_i3 = 3%
  w2b_i2 = I32DivU(w2b_i2, w2b_i3)
  w2b_i3 = w2b_l2
  w2b_i2 += w2b_i3
  w2b_j2 = I64ExtendI32U(w2b_i2)
  w2b_j3 = 32&
  w2b_j2 <<= (w2b_j3 AND 63)
  w2b_j1 = w2b_j1 OR w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_l4 = w2b_d1
  w2b_d2 = w2b_l4
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_l4
  w2b_d3 = w2b_p0
  w2b_d2 = F64Div(w2b_d2, w2b_d3)
  w2b_d1 *= w2b_d2
  w2b_p0 = w2b_d1
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d2 *= w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d3 = 0.14599619288661245#
  w2b_d2 *= w2b_d3
  w2b_d3 = -0.75839793477876605#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d4 = 1.6214297201053545#
  w2b_d3 *= w2b_d4
  w2b_d4 = -1.8849797954337717#
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = 1.8759518242717701#
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_l4
  w2b_d1 *= w2b_d2
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 2147483648&
  w2b_j1 += w2b_j2
  w2b_j2 = 18446744072635809792&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_p0 = w2b_d1
  w2b_d2 = w2b_p0
  w2b_d1 *= w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_l4 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 -= w2b_d1
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_l4
  w2b_d1 += w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_b1_11993204:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b___cos(w2b_p0 As Double, w2b_p1 As Double) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  w2b_l3 = 0
  w2b_l4 = 0
  
  w2b_d0 = 1#
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d1 *= w2b_d2
  w2b_l2 = w2b_d1
  w2b_d2 = 0.5#
  w2b_d1 *= w2b_d2
  w2b_l3 = w2b_d1
  w2b_d0 -= w2b_d1
  w2b_l4 = w2b_d0
  w2b_d1 = 1#
  w2b_d2 = w2b_l4
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_l3
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_l2
  w2b_d3 = w2b_l2
  w2b_d4 = w2b_l2
  w2b_d5 = w2b_l2
  w2b_d6 = 2.4801587289476729e-05#
  w2b_d5 *= w2b_d6
  w2b_d6 = -0.001388888888887411#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d5 = 0.041666666666666602#
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d4 = w2b_l2
  w2b_d5 = w2b_l2
  w2b_d4 *= w2b_d5
  w2b_l3 = w2b_d4
  w2b_d5 = w2b_l3
  w2b_d4 *= w2b_d5
  w2b_d5 = w2b_l2
  w2b_d6 = w2b_l2
  w2b_d7 = -1.1359647557788195e-11#
  w2b_d6 *= w2b_d7
  w2b_d7 = 2.0875723212981748e-09#
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d6 = -2.7557314351390663e-07#
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_p1
  w2b_d3 *= w2b_d4
  w2b_d2 -= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  Return w2b_d0
End Function
Function w2b___rem_pio2_large(w2b_p0 As Integer, w2b_p1 As Integer, w2b_p2 As Integer, w2b_p3 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  w2b_l9 = 0
  w2b_l10 = 0
  w2b_l11 = 0
  w2b_l12 = 0
  w2b_l13 = 0
  w2b_l14 = 0
  w2b_l15 = 0
  w2b_l16 = 0
  w2b_l17 = 0
  w2b_l18 = 0
  w2b_l19 = 0
  w2b_l20 = 0
  
  w2b_l21 = 0
  w2b_l22 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 560%
  w2b_i0 -= w2b_i1
  w2b_l6 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_p2
  w2b_i1 = w2b_p2
  w2b_i2 = 3%
  w2b_i1 -= w2b_i2
  w2b_i2 = 24%
  w2b_i1 \= w2b_i2
  w2b_p2 = w2b_i1
  w2b_i2 = 0%
  w2b_i3 = w2b_p2
  w2b_i4 = 0%
  If w2b_i3 > w2b_i4 Then
    w2b_i3 = 1
  Else
    w2b_i3 = 0
  End If
  If w2b_i3 = 0 Then
    w2b_i1 = w2b_i2
  End If
  w2b_l15 = w2b_i1
  w2b_i2 = 4294967272%
  w2b_i1 *= w2b_i2
  w2b_i0 += w2b_i1
  w2b_l12 = w2b_i0
  w2b_i0 = 36932%
  If w2b_i0 And &H3 Then
    w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
  Else
    w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
  End If
  w2b_l11 = w2b_i0
  w2b_i1 = w2b_p3
  w2b_i2 = 1%
  w2b_i1 -= w2b_i2
  w2b_p2 = w2b_i1
  w2b_i0 += w2b_i1
  w2b_i1 = 0%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p3
    w2b_i1 = w2b_l11
    w2b_i0 += w2b_i1
    w2b_l7 = w2b_i0
    w2b_i0 = w2b_l15
    w2b_i1 = w2b_p2
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_l15
    w2b_i1 = w2b_p3
    w2b_i0 -= w2b_i1
    w2b_i1 = 2%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = 36948%
    w2b_i0 += w2b_i1
    w2b_l8 = w2b_i0
    w2b_i0 = w2b_l6
    w2b_i1 = 320%
    w2b_i0 += w2b_i1
    w2b_l5 = w2b_i0
    w2b_l1_13303934:
      
      w2b_i0 = w2b_l5
      w2b_i1 = w2b_p2
      w2b_i2 = 0%
      If w2b_i1 < w2b_i2 Then
        w2b_i1 = 1
      Else
        w2b_i1 = 0
      End If
      If w2b_i1 Then
        w2b_d1 = 0#
      Else
        w2b_i1 = w2b_l8
        If w2b_i1 And &H3 Then
          w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
        Else
          w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
        End If
        w2b_d1 = F64ConvertI32S(w2b_i1)
      End If
      F64Store(mem, w2b_i0, w2b_d1)
      w2b_i0 = w2b_l5
      w2b_i1 = 8%
      w2b_i0 += w2b_i1
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_l8
      w2b_i1 = 4%
      w2b_i0 += w2b_i1
      w2b_l8 = w2b_i0
      w2b_i0 = w2b_p2
      w2b_i1 = 1%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_l7 = w2b_i0
      If w2b_i0 Then
        Goto w2b_l1_13303934
      End If
  End If
  w2b_i0 = w2b_l12
  w2b_i1 = 24%
  w2b_i0 -= w2b_i1
  w2b_l10 = w2b_i0
  w2b_i0 = w2b_p3
  w2b_i1 = 3%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = w2b_l6
  w2b_i0 += w2b_i1
  w2b_i1 = 312%
  w2b_i0 += w2b_i1
  w2b_l7 = w2b_i0
  w2b_i0 = w2b_p3
  w2b_i1 = 1%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_l9 = w2b_i0
  w2b_l3_13435008:
    
    w2b_d0 = 0#
    w2b_l21 = w2b_d0
    w2b_i0 = w2b_l9
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p0
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_p3
      w2b_l8 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_l5 = w2b_i0
      w2b_l5_13566082:
        
        w2b_d0 = w2b_l21
        w2b_i1 = w2b_p2
        w2b_d1 = F64Load(mem, w2b_i1)
        w2b_i2 = w2b_l5
        w2b_d2 = F64Load(mem, w2b_i2)
        w2b_d1 *= w2b_d2
        w2b_d0 += w2b_d1
        w2b_l21 = w2b_d0
        w2b_i0 = w2b_p2
        w2b_i1 = 8%
        w2b_i0 += w2b_i1
        w2b_p2 = w2b_i0
        w2b_i0 = w2b_l5
        w2b_i1 = 8%
        w2b_i0 -= w2b_i1
        w2b_l5 = w2b_i0
        w2b_i0 = w2b_l8
        w2b_i1 = 1%
        w2b_i0 -= w2b_i1
        w2b_l8 = w2b_i0
        If w2b_i0 Then
          Goto w2b_l5_13566082
        End If
    End If
    w2b_i0 = w2b_l4
    w2b_i1 = 3%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = w2b_l6
    w2b_i0 += w2b_i1
    w2b_d1 = w2b_l21
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_l7
    w2b_i1 = 8%
    w2b_i0 += w2b_i1
    w2b_l7 = w2b_i0
    w2b_i0 = w2b_l4
    w2b_i1 = w2b_l11
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = w2b_l4
    w2b_i2 = 1%
    w2b_i1 += w2b_i2
    w2b_l4 = w2b_i1
    If w2b_i0 Then
      Goto w2b_l3_13435008
    End If
  w2b_i0 = 23%
  w2b_i1 = w2b_l10
  w2b_i0 -= w2b_i1
  w2b_l17 = w2b_i0
  w2b_i0 = 24%
  w2b_i1 = w2b_l10
  w2b_i0 -= w2b_i1
  w2b_l16 = w2b_i0
  w2b_i0 = w2b_l6
  w2b_i1 = 480%
  w2b_i0 += w2b_i1
  w2b_p2 = w2b_i0
  w2b_i1 = w2b_l11
  w2b_i2 = 2%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i0 += w2b_i1
  w2b_i1 = 4%
  w2b_i0 -= w2b_i1
  w2b_l18 = w2b_i0
  w2b_i0 = w2b_p2
  w2b_i1 = 4%
  w2b_i0 -= w2b_i1
  w2b_l19 = w2b_i0
  w2b_i0 = w2b_l6
  w2b_i1 = 8%
  w2b_i0 -= w2b_i1
  w2b_l20 = w2b_i0
  w2b_i0 = w2b_l11
  w2b_l4 = w2b_i0
  w2b_l7_13697156:
    
    w2b_i0 = w2b_l4
    w2b_i1 = 3%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_p2 = w2b_i0
    w2b_i1 = w2b_l6
    w2b_i0 += w2b_i1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_l21 = w2b_d0
    w2b_i0 = w2b_l4
    w2b_i1 = 1%
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_l9 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p2
      w2b_i1 = w2b_l20
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l6
      w2b_i1 = 480%
      w2b_i0 += w2b_i1
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_l4
      w2b_l8 = w2b_i0
      w2b_l9_13828230:
        
        w2b_i0 = w2b_l5
        w2b_l7 = w2b_i0
        w2b_d1 = w2b_l21
        w2b_d2 = w2b_l21
        w2b_d3 = 5.9604644775390625e-08#
        w2b_d2 *= w2b_d3
        w2b_l22 = w2b_d2
        w2b_d2 = F64Abs(w2b_d2)
        w2b_d3 = 2147483648#
        If w2b_d2 < w2b_d3 Then
          w2b_i2 = 1
        Else
          w2b_i2 = 0
        End If
        If w2b_i2 Then
          w2b_d2 = w2b_l22
          w2b_i2 = I32TruncF64S(w2b_d2)
          Goto w2b_b11_22806693
        End If
        w2b_i2 = 2147483648%
        w2b_b11_22806693:
        w2b_d2 = F64ConvertI32S(w2b_i2)
        w2b_l21 = w2b_d2
        w2b_d3 = -16777216#
        w2b_d2 *= w2b_d3
        w2b_d1 += w2b_d2
        w2b_l22 = w2b_d1
        w2b_d1 = F64Abs(w2b_d1)
        w2b_d2 = 2147483648#
        If w2b_d1 < w2b_d2 Then
          w2b_i1 = 1
        Else
          w2b_i1 = 0
        End If
        If w2b_i1 Then
          w2b_d1 = w2b_l22
          w2b_i1 = I32TruncF64S(w2b_d1)
          Goto w2b_b10_22741156
        End If
        w2b_i1 = 2147483648%
        w2b_b10_22741156:
        mem[w2b_i0] = w2b_i1
        mem[w2b_i0 + 1] = (w2b_i1 >> 8)
        mem[w2b_i0 + 2] = (w2b_i1 >> 16)
        mem[w2b_i0 + 3] = (w2b_i1 >> 24)
        w2b_i0 = w2b_l7
        w2b_i1 = 4%
        w2b_i0 += w2b_i1
        w2b_l5 = w2b_i0
        w2b_i0 = w2b_p2
        w2b_d0 = F64Load(mem, w2b_i0)
        w2b_d1 = w2b_l21
        w2b_d0 += w2b_d1
        w2b_l21 = w2b_d0
        w2b_i0 = w2b_p2
        w2b_i1 = 8%
        w2b_i0 -= w2b_i1
        w2b_p2 = w2b_i0
        w2b_i0 = w2b_l8
        w2b_i1 = 1%
        w2b_i0 -= w2b_i1
        w2b_l8 = w2b_i0
        If w2b_i0 Then
          Goto w2b_l9_13828230
        End If
    End If
    w2b_d0 = w2b_l21
    w2b_i1 = w2b_l10
    w2b_d0 = w2b_scalbn(w2b_d0, w2b_i1)
    w2b_l21 = w2b_d0
    w2b_d1 = w2b_l21
    w2b_d2 = 0.125#
    w2b_d1 *= w2b_d2
    w2b_d1 = F64Floor(w2b_d1)
    w2b_d2 = -8#
    w2b_d1 *= w2b_d2
    w2b_d0 += w2b_d1
    w2b_l21 = w2b_d0
    w2b_d0 = F64Abs(w2b_d0)
    w2b_d1 = 2147483648#
    If w2b_d0 < w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_l21
      w2b_i0 = I32TruncF64S(w2b_d0)
      Goto w2b_b14_23003304
    End If
    w2b_i0 = 2147483648%
    w2b_b14_23003304:
    w2b_p2 = w2b_i0
    w2b_d0 = w2b_l21
    w2b_i1 = w2b_p2
    w2b_l14 = w2b_i1
    w2b_d1 = F64ConvertI32S(w2b_i1)
    w2b_d0 -= w2b_d1
    w2b_l21 = w2b_d0
    w2b_i0 = w2b_l10
    w2b_i1 = 1%
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_l8 = w2b_i0
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l4
      w2b_i1 = 2%
      w2b_i0 <<= (w2b_i1 AND 31)
      w2b_i1 = w2b_l6
      w2b_i0 += w2b_i1
      w2b_i1 = 476%
      w2b_i0 += w2b_i1
      w2b_l7 = w2b_i0
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l5 = w2b_i0
      w2b_i1 = w2b_l16
      w2b_i1 = w2b_i1 And &H1F
If w2b_i0 < 0 And w2b_i1 <> 0 Then
    w2b_i0 = (w2b_i0 >> w2b_i1) Or (&HFFFFFFFF << (32 - w2b_i1))
Else
    w2b_i0 = w2b_i0 >> w2b_i1
End If
w2b_p2 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i1 = w2b_l5
      w2b_i2 = w2b_p2
      w2b_i3 = w2b_l16
      w2b_i2 <<= (w2b_i3 AND 31)
      w2b_i1 -= w2b_i2
      w2b_l7 = w2b_i1
      mem[w2b_i0] = w2b_i1
      mem[w2b_i0 + 1] = (w2b_i1 >> 8)
      mem[w2b_i0 + 2] = (w2b_i1 >> 16)
      mem[w2b_i0 + 3] = (w2b_i1 >> 24)
      w2b_i0 = w2b_p2
      w2b_i1 = w2b_l14
      w2b_i0 += w2b_i1
      w2b_l14 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i1 = w2b_l17
      w2b_i1 = w2b_i1 And &H1F
If w2b_i0 < 0 And w2b_i1 <> 0 Then
    w2b_i0 = (w2b_i0 >> w2b_i1) Or (&HFFFFFFFF << (32 - w2b_i1))
Else
    w2b_i0 = w2b_i0 >> w2b_i1
End If
Goto w2b_b19_23330989
    End If
    w2b_i0 = w2b_l10
    If w2b_i0 Then
      Goto w2b_b18_23265452
    End If
    w2b_i0 = w2b_l4
    w2b_i1 = 2%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = w2b_l6
    w2b_i0 += w2b_i1
    w2b_i1 = 476%
    w2b_i0 += w2b_i1
    If w2b_i0 And &H3 Then
      w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
    Else
      w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
    End If
    w2b_i1 = 23%
    w2b_i1 = w2b_i1 And &H1F
If w2b_i0 < 0 And w2b_i1 <> 0 Then
    w2b_i0 = (w2b_i0 >> w2b_i1) Or (&HFFFFFFFF << (32 - w2b_i1))
Else
    w2b_i0 = w2b_i0 >> w2b_i1
End If
w2b_b19_23330989:
    w2b_l13 = w2b_i0
    w2b_i1 = 1%
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b16_23134378
    End If
    Goto w2b_b17_23199915
    w2b_b18_23265452:
    w2b_i0 = 2%
    w2b_l13 = w2b_i0
    w2b_d0 = w2b_l21
    w2b_d1 = 0.5#
    If w2b_d0 >= w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 1%
    w2b_i0 = (w2b_i0 Or w2b_i1) And Not (w2b_i0 And w2b_i1)
If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b17_23199915
    End If
    w2b_i0 = 0%
    w2b_l13 = w2b_i0
    Goto w2b_b16_23134378
    w2b_b17_23199915:
    w2b_i0 = w2b_l9
    If w2b_i0 Then
      w2b_i0 = 0%
      w2b_l9 = w2b_i0
      Goto w2b_b21_22937766
    End If
    w2b_i0 = 0%
    w2b_l9 = w2b_i0
    w2b_i0 = w2b_l6
    w2b_i1 = 480%
    w2b_i0 += w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_l4
    w2b_l7 = w2b_i0
    w2b_l23_25034930:
      
      w2b_i0 = w2b_p2
      If w2b_i0 And &H3 Then
        w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
      Else
        w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
      End If
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_p2
      w2b_i1 = w2b_l9
      If w2b_i1 Then
        w2b_i1 = 16777215%
      Else
        w2b_i1 = w2b_l5
        If w2b_i1 = 0% Then
          w2b_i1 = 1
        Else
          w2b_i1 = 0
        End If
        If w2b_i1 Then
          Goto w2b_b25_23199914
        End If
        w2b_i1 = 1%
        w2b_l9 = w2b_i1
        w2b_i1 = 16777216%
      End If
      w2b_i2 = w2b_l5
      w2b_i1 -= w2b_i2
      mem[w2b_i0] = w2b_i1
      mem[w2b_i0 + 1] = (w2b_i1 >> 8)
      mem[w2b_i0 + 2] = (w2b_i1 >> 16)
      mem[w2b_i0 + 3] = (w2b_i1 >> 24)
      Goto w2b_b24_23134377
      w2b_b25_23199914:
      w2b_i0 = 0%
      w2b_l9 = w2b_i0
      w2b_b24_23134377:
      w2b_i0 = w2b_p2
      w2b_i1 = 4%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l7
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_l7 = w2b_i0
      If w2b_i0 Then
        Goto w2b_l23_25034930
      End If
    w2b_b21_22937766:
    w2b_i0 = w2b_l8
    If w2b_i0 Then
      Goto w2b_b27_23330988
    End If
    w2b_i0 = w2b_l10
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i1 = 1%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b27_23330988
    End If
    w2b_i0 = w2b_p2
    w2b_i1 = 1%
    If w2b_i0 <> w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l4
      w2b_i1 = 2%
      w2b_i0 <<= (w2b_i1 AND 31)
      w2b_i1 = w2b_l6
      w2b_i0 += w2b_i1
      w2b_i1 = 476%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i1 = w2b_p2
      If w2b_i1 And &H3 Then
        w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
      Else
        w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
      End If
      w2b_i2 = 8388607%
      w2b_i1 = w2b_i1 AND w2b_i2
      mem[w2b_i0] = w2b_i1
      mem[w2b_i0 + 1] = (w2b_i1 >> 8)
      mem[w2b_i0 + 2] = (w2b_i1 >> 16)
      mem[w2b_i0 + 3] = (w2b_i1 >> 24)
      Goto w2b_b27_23330988
    End If
    w2b_i0 = w2b_l4
    w2b_i1 = 2%
    w2b_i0 <<= (w2b_i1 AND 31)
    w2b_i1 = w2b_l6
    w2b_i0 += w2b_i1
    w2b_i1 = 476%
    w2b_i0 += w2b_i1
    w2b_p2 = w2b_i0
    w2b_i1 = w2b_p2
    If w2b_i1 And &H3 Then
      w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
    Else
      w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
    End If
    w2b_i2 = 4194303%
    w2b_i1 = w2b_i1 AND w2b_i2
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_b27_23330988:
    w2b_i0 = w2b_l14
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_l14 = w2b_i0
    w2b_i0 = w2b_l13
    w2b_i1 = 2%
    If w2b_i0 <> w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b16_23134378
    End If
    w2b_d0 = 1#
    w2b_d1 = w2b_l21
    w2b_d0 -= w2b_d1
    w2b_l21 = w2b_d0
    w2b_i0 = 2%
    w2b_l13 = w2b_i0
    w2b_i0 = w2b_l9
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b16_23134378
    End If
    w2b_d0 = w2b_l21
    w2b_d1 = 1#
    w2b_i2 = w2b_l10
    w2b_d1 = w2b_scalbn(w2b_d1, w2b_i2)
    w2b_d0 -= w2b_d1
    w2b_l21 = w2b_d0
    w2b_b16_23134378:
    w2b_d0 = w2b_l21
    w2b_d1 = 0#
    If w2b_d0 = w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l4
      w2b_i1 = w2b_l11
      If w2b_i0 <= w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b30_23003302
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 2%
      w2b_i0 <<= (w2b_i1 AND 31)
      w2b_i1 = w2b_l19
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = 0%
      w2b_l5 = w2b_i0
      w2b_i0 = w2b_l4
      w2b_l8 = w2b_i0
      w2b_l31_25034929:
        
        w2b_i0 = w2b_p2
        If w2b_i0 And &H3 Then
          w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
        Else
          w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
        End If
        w2b_i1 = w2b_l5
        w2b_i0 = w2b_i0 OR w2b_i1
        w2b_l5 = w2b_i0
        w2b_i0 = w2b_p2
        w2b_i1 = 4%
        w2b_i0 -= w2b_i1
        w2b_p2 = w2b_i0
        w2b_i0 = w2b_l11
        w2b_i1 = w2b_l8
        w2b_i2 = 1%
        w2b_i1 -= w2b_i2
        w2b_l8 = w2b_i1
        If w2b_i0 < w2b_i1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_l31_25034929
        End If
      w2b_i0 = w2b_l5
      If w2b_i0 = 0% Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b30_23003302
      End If
      w2b_i0 = w2b_l4
      w2b_i1 = 2%
      w2b_i0 <<= (w2b_i1 AND 31)
      w2b_i1 = w2b_l6
      w2b_i0 += w2b_i1
      w2b_i1 = 476%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l10
      w2b_l12 = w2b_i0
      w2b_l32_25100466:
        
        w2b_i0 = w2b_l4
        w2b_i1 = 1%
        w2b_i0 -= w2b_i1
        w2b_l4 = w2b_i0
        w2b_i0 = w2b_l12
        w2b_i1 = 24%
        w2b_i0 -= w2b_i1
        w2b_l12 = w2b_i0
        w2b_i0 = w2b_p2
        If w2b_i0 And &H3 Then
          w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
        Else
          w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
        End If
        w2b_i1 = w2b_p2
        w2b_i2 = 4%
        w2b_i1 -= w2b_i2
        w2b_p2 = w2b_i1
        If w2b_i0 = 0% Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_l32_25100466
        End If
      Goto w2b_b6_12320889
      w2b_b30_23003302:
      w2b_i0 = w2b_l18
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l4
      w2b_l7 = w2b_i0
      w2b_l33_25166003:
        
        w2b_i0 = w2b_l7
        w2b_i1 = 1%
        w2b_i0 += w2b_i1
        w2b_l7 = w2b_i0
        w2b_i0 = w2b_p2
        If w2b_i0 And &H3 Then
          w2b_i0 = (mem[w2b_i0]) + (mem[w2b_i0 + 1] << 8) + (mem[w2b_i0 + 2] << 16) + (mem[w2b_i0 + 3] << 24)
        Else
          w2b_i0 = mem.GetSignedLong(w2b_i0 >> 2)
        End If
        w2b_i1 = w2b_p2
        w2b_i2 = 4%
        w2b_i1 -= w2b_i2
        w2b_p2 = w2b_i1
        If w2b_i0 = 0% Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_l33_25166003
        End If
      w2b_i0 = w2b_l6
      w2b_i1 = 320%
      w2b_i0 += w2b_i1
      w2b_i1 = w2b_p3
      w2b_i2 = w2b_l4
      w2b_i1 += w2b_i2
      w2b_i2 = 3%
      w2b_i1 <<= (w2b_i2 AND 31)
      w2b_i0 += w2b_i1
      w2b_l9 = w2b_i0
      w2b_l34_25231540:
        
        w2b_i0 = w2b_l6
        w2b_i1 = 320%
        w2b_i0 += w2b_i1
        w2b_i1 = w2b_p3
        w2b_i2 = w2b_l4
        w2b_i1 += w2b_i2
        w2b_i2 = 3%
        w2b_i1 <<= (w2b_i2 AND 31)
        w2b_i0 += w2b_i1
        w2b_i1 = w2b_l15
        w2b_i2 = w2b_l4
        w2b_i3 = 1%
        w2b_i2 += w2b_i3
        w2b_l4 = w2b_i2
        w2b_i1 += w2b_i2
        w2b_i2 = 2%
        w2b_i1 <<= (w2b_i2 AND 31)
        w2b_i2 = 36944%
        w2b_i1 += w2b_i2
        If w2b_i1 And &H3 Then
          w2b_i1 = (mem[w2b_i1]) + (mem[w2b_i1 + 1] << 8) + (mem[w2b_i1 + 2] << 16) + (mem[w2b_i1 + 3] << 24)
        Else
          w2b_i1 = mem.GetSignedLong(w2b_i1 >> 2)
        End If
        w2b_d1 = F64ConvertI32S(w2b_i1)
        F64Store(mem, w2b_i0, w2b_d1)
        w2b_d0 = 0#
        w2b_l21 = w2b_d0
        w2b_i0 = w2b_p3
        w2b_i1 = 1%
        If w2b_i0 >= w2b_i1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          w2b_i0 = w2b_p0
          w2b_p2 = w2b_i0
          w2b_i0 = w2b_l9
          w2b_l5 = w2b_i0
          w2b_i0 = w2b_p3
          w2b_l8 = w2b_i0
          w2b_l36_25362614:
            
            w2b_d0 = w2b_l21
            w2b_i1 = w2b_p2
            w2b_d1 = F64Load(mem, w2b_i1)
            w2b_i2 = w2b_l5
            w2b_d2 = F64Load(mem, w2b_i2)
            w2b_d1 *= w2b_d2
            w2b_d0 += w2b_d1
            w2b_l21 = w2b_d0
            w2b_i0 = w2b_p2
            w2b_i1 = 8%
            w2b_i0 += w2b_i1
            w2b_p2 = w2b_i0
            w2b_i0 = w2b_l5
            w2b_i1 = 8%
            w2b_i0 -= w2b_i1
            w2b_l5 = w2b_i0
            w2b_i0 = w2b_l8
            w2b_i1 = 1%
            w2b_i0 -= w2b_i1
            w2b_l8 = w2b_i0
            If w2b_i0 Then
              Goto w2b_l36_25362614
            End If
        End If
        w2b_i0 = w2b_l4
        w2b_i1 = 3%
        w2b_i0 <<= (w2b_i1 AND 31)
        w2b_i1 = w2b_l6
        w2b_i0 += w2b_i1
        w2b_d1 = w2b_l21
        F64Store(mem, w2b_i0, w2b_d1)
        w2b_i0 = w2b_l9
        w2b_i1 = 8%
        w2b_i0 += w2b_i1
        w2b_l9 = w2b_i0
        w2b_i0 = w2b_l4
        w2b_i1 = w2b_l7
        If w2b_i0 < w2b_i1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_l34_25231540
        End If
      w2b_i0 = w2b_l7
      w2b_l4 = w2b_i0
      Goto w2b_l7_13697156
    End If
  w2b_d0 = w2b_l21
  w2b_i1 = 0%
  w2b_i2 = w2b_l10
  w2b_i1 -= w2b_i2
  w2b_d0 = w2b_scalbn(w2b_d0, w2b_i1)
  w2b_l21 = w2b_d0
  w2b_d1 = 16777216#
  If w2b_d0 >= w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_i1 = 1%
  w2b_i0 = (w2b_i0 Or w2b_i1) And Not (w2b_i0 And w2b_i1)
If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l6
    w2b_i1 = 480%
    w2b_i0 += w2b_i1
    w2b_i1 = w2b_l4
    w2b_i2 = 2%
    w2b_i1 <<= (w2b_i2 AND 31)
    w2b_i0 += w2b_i1
    w2b_d1 = w2b_l21
    w2b_d2 = w2b_l21
    w2b_d3 = 5.9604644775390625e-08#
    w2b_d2 *= w2b_d3
    w2b_l22 = w2b_d2
    w2b_d2 = F64Abs(w2b_d2)
    w2b_d3 = 2147483648#
    If w2b_d2 < w2b_d3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 Then
      w2b_d2 = w2b_l22
      w2b_i2 = I32TruncF64S(w2b_d2)
      Goto w2b_b40_23134375
    End If
    w2b_i2 = 2147483648%
    w2b_b40_23134375:
    w2b_p2 = w2b_i2
    w2b_d2 = F64ConvertI32S(w2b_i2)
    w2b_d3 = -16777216#
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_l21 = w2b_d1
    w2b_d1 = F64Abs(w2b_d1)
    w2b_d2 = 2147483648#
    If w2b_d1 < w2b_d2 Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      w2b_d1 = w2b_l21
      w2b_i1 = I32TruncF64S(w2b_d1)
      Goto w2b_b39_23593135
    End If
    w2b_i1 = 2147483648%
    w2b_b39_23593135:
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_i0 = w2b_l4
    w2b_i1 = 1%
    w2b_i0 += w2b_i1
    w2b_l4 = w2b_i0
    Goto w2b_b37_23462061
  End If
  w2b_d0 = w2b_l21
  w2b_d0 = F64Abs(w2b_d0)
  w2b_d1 = 2147483648#
  If w2b_d0 < w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_l21
    w2b_i0 = I32TruncF64S(w2b_d0)
    Goto w2b_b43_23330986
  End If
  w2b_i0 = 2147483648%
  w2b_b43_23330986:
  w2b_p2 = w2b_i0
  w2b_i0 = w2b_l10
  w2b_l12 = w2b_i0
  w2b_b37_23462061:
  w2b_i0 = w2b_l6
  w2b_i1 = 480%
  w2b_i0 += w2b_i1
  w2b_i1 = w2b_l4
  w2b_i2 = 2%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i0 += w2b_i1
  w2b_i1 = w2b_p2
  mem[w2b_i0] = w2b_i1
  mem[w2b_i0 + 1] = (w2b_i1 >> 8)
  mem[w2b_i0 + 2] = (w2b_i1 >> 16)
  mem[w2b_i0 + 3] = (w2b_i1 >> 24)
  w2b_b6_12320889:
  w2b_i0 = w2b_l4
  w2b_i1 = 0%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b45_23462060
  End If
  w2b_i0 = w2b_l4
  w2b_i1 = 1%
  w2b_i0 += w2b_i1
  w2b_l8 = w2b_i0
  w2b_d0 = 1#
  w2b_i1 = w2b_l12
  w2b_d0 = w2b_scalbn(w2b_d0, w2b_i1)
  w2b_l21 = w2b_d0
  w2b_i0 = w2b_l6
  w2b_i1 = 480%
  w2b_i0 += w2b_i1
  w2b_i1 = w2b_l4
  w2b_i2 = 2%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i0 += w2b_i1
  w2b_p2 = w2b_i0
  w2b_i0 = w2b_l4
  w2b_i1 = 3%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = w2b_l6
  w2b_i0 += w2b_i1
  w2b_l5 = w2b_i0
  w2b_l46_25493687:
    
    w2b_i0 = w2b_l5
    w2b_d1 = w2b_l21
    w2b_i2 = w2b_p2
    If w2b_i2 And &H3 Then
      w2b_i2 = (mem[w2b_i2]) + (mem[w2b_i2 + 1] << 8) + (mem[w2b_i2 + 2] << 16) + (mem[w2b_i2 + 3] << 24)
    Else
      w2b_i2 = mem.GetSignedLong(w2b_i2 >> 2)
    End If
    w2b_d2 = F64ConvertI32S(w2b_i2)
    w2b_d1 *= w2b_d2
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_p2
    w2b_i1 = 4%
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_l5
    w2b_i1 = 8%
    w2b_i0 -= w2b_i1
    w2b_l5 = w2b_i0
    w2b_d0 = w2b_l21
    w2b_d1 = 5.9604644775390625e-08#
    w2b_d0 *= w2b_d1
    w2b_l21 = w2b_d0
    w2b_i0 = w2b_l8
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_l8 = w2b_i0
    w2b_i1 = 0%
    If w2b_i0 > w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l46_25493687
    End If
  w2b_i0 = w2b_l4
  w2b_i1 = 0%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b45_23462060
  End If
  w2b_i0 = w2b_l4
  w2b_i1 = 3%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = w2b_l6
  w2b_i0 += w2b_i1
  w2b_l7 = w2b_i0
  w2b_i0 = w2b_l4
  w2b_p2 = w2b_i0
  w2b_l47_25559224:
    
    w2b_i0 = w2b_l4
    w2b_i1 = w2b_p2
    w2b_p0 = w2b_i1
    w2b_i0 -= w2b_i1
    w2b_p3 = w2b_i0
    w2b_d0 = 0#
    w2b_l21 = w2b_d0
    w2b_i0 = 0%
    w2b_p2 = w2b_i0
    w2b_i0 = 0%
    w2b_l5 = w2b_i0
    w2b_l48_25624761:
      
      w2b_d0 = w2b_l21
      w2b_i1 = w2b_p2
      w2b_i2 = 39712%
      w2b_i1 += w2b_i2
      w2b_d1 = F64Load(mem, w2b_i1)
      w2b_i2 = w2b_p2
      w2b_i3 = w2b_l7
      w2b_i2 += w2b_i3
      w2b_d2 = F64Load(mem, w2b_i2)
      w2b_d1 *= w2b_d2
      w2b_d0 += w2b_d1
      w2b_l21 = w2b_d0
      w2b_i0 = w2b_l5
      w2b_i1 = w2b_l11
      If w2b_i0 >= w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b49_23724208
      End If
      w2b_i0 = w2b_p2
      w2b_i1 = 8%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_p3
      w2b_i1 = w2b_l5
      If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      w2b_i1 = w2b_l5
      w2b_i2 = 1%
      w2b_i1 += w2b_i2
      w2b_l5 = w2b_i1
      If w2b_i0 Then
        Goto w2b_l48_25624761
      End If
      w2b_b49_23724208:
    w2b_i0 = w2b_l6
    w2b_i1 = 160%
    w2b_i0 += w2b_i1
    w2b_i1 = w2b_p3
    w2b_i2 = 3%
    w2b_i1 <<= (w2b_i2 AND 31)
    w2b_i0 += w2b_i1
    w2b_d1 = w2b_l21
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_l7
    w2b_i1 = 8%
    w2b_i0 -= w2b_i1
    w2b_l7 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_p0
    w2b_i1 = 0%
    If w2b_i0 > w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l47_25559224
    End If
  w2b_b45_23462060:
  w2b_i0 = w2b_l4
  w2b_i1 = 0%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 0#
    w2b_l21 = w2b_d0
    Goto w2b_b50_23265448
  End If
  w2b_i0 = w2b_l4
  w2b_i1 = 1%
  w2b_i0 += w2b_i1
  w2b_l5 = w2b_i0
  w2b_i0 = w2b_l6
  w2b_i1 = 160%
  w2b_i0 += w2b_i1
  w2b_i1 = w2b_l4
  w2b_i2 = 3%
  w2b_i1 <<= (w2b_i2 AND 31)
  w2b_i0 += w2b_i1
  w2b_p2 = w2b_i0
  w2b_d0 = 0#
  w2b_l21 = w2b_d0
  w2b_l52_25362612:
    
    w2b_d0 = w2b_l21
    w2b_i1 = w2b_p2
    w2b_d1 = F64Load(mem, w2b_i1)
    w2b_d0 += w2b_d1
    w2b_l21 = w2b_d0
    w2b_i0 = w2b_p2
    w2b_i1 = 8%
    w2b_i0 -= w2b_i1
    w2b_p2 = w2b_i0
    w2b_i0 = w2b_l5
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_l5 = w2b_i0
    w2b_i1 = 0%
    If w2b_i0 > w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l52_25362612
    End If
  w2b_b50_23265448:
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_l21
  w2b_d1 = -(w2b_d1)
  w2b_d2 = w2b_l21
  w2b_i3 = w2b_l13
  If w2b_i3 = 0 Then
    w2b_d1 = w2b_d2
  End If
  F64Store(mem, w2b_i0, w2b_d1)
  w2b_i0 = w2b_l6
  w2b_d0 = F64Load(mem, w2b_i0 + 160)
  w2b_d1 = w2b_l21
  w2b_d0 -= w2b_d1
  w2b_l21 = w2b_d0
  w2b_i0 = w2b_l4
  w2b_i1 = 1%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l6
    w2b_i1 = 160%
    w2b_i0 += w2b_i1
    w2b_i1 = 8%
    w2b_i0 = w2b_i0 OR w2b_i1
    w2b_p2 = w2b_i0
    w2b_l54_25493686:
      
      w2b_d0 = w2b_l21
      w2b_i1 = w2b_p2
      w2b_d1 = F64Load(mem, w2b_i1)
      w2b_d0 += w2b_d1
      w2b_l21 = w2b_d0
      w2b_i0 = w2b_p2
      w2b_i1 = 8%
      w2b_i0 += w2b_i1
      w2b_p2 = w2b_i0
      w2b_i0 = w2b_l4
      w2b_i1 = 1%
      w2b_i0 -= w2b_i1
      w2b_l4 = w2b_i0
      If w2b_i0 Then
        Goto w2b_l54_25493686
      End If
  End If
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_l21
  w2b_d1 = -(w2b_d1)
  w2b_d2 = w2b_l21
  w2b_i3 = w2b_l13
  If w2b_i3 = 0 Then
    w2b_d1 = w2b_d2
  End If
  F64Store(mem, w2b_i0 + 8, w2b_d1)
  w2b_i0 = w2b_l6
  w2b_i1 = 560%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_l14
  w2b_i1 = 7%
  w2b_i0 = w2b_i0 AND w2b_i1
  Return w2b_i0
End Function
Function w2b___rem_pio2(w2b_p0 As Double, w2b_p1 As Integer) As Integer
  mem = m.w2b_memory
  w2b_l2 = 0
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  
  w2b_l7 = 0
  
  w2b_l8 = 0
  w2b_l9 = 0
  w2b_l10 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 48%
  w2b_i0 -= w2b_i1
  w2b_l4 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l7 = w2b_j0
  w2b_j1 = 63&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l5 = w2b_i0
  w2b_j0 = w2b_l7
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l2 = w2b_i0
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l3 = w2b_i0
  w2b_i1 = 1074752122%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1048575%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_i1 = 598523%
    If w2b_i0 = w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b2_12058741
    End If
    w2b_i0 = w2b_l3
    w2b_i1 = 1073928572%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l5
      If w2b_i0 = 0% Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_p1
        w2b_d1 = w2b_p0
        w2b_d2 = -1.5707963267341256#
        w2b_d1 += w2b_d2
        w2b_p0 = w2b_d1
        w2b_d2 = -6.0771005065061922e-11#
        w2b_d1 += w2b_d2
        w2b_l8 = w2b_d1
        F64Store(mem, w2b_i0, w2b_d1)
        w2b_i0 = w2b_p1
        w2b_d1 = w2b_p0
        w2b_d2 = w2b_l8
        w2b_d1 -= w2b_d2
        w2b_d2 = -6.0771005065061922e-11#
        w2b_d1 += w2b_d2
        F64Store(mem, w2b_i0 + 8, w2b_d1)
        w2b_i0 = 1%
        w2b_l2 = w2b_i0
        Goto w2b_b0_11927667
      End If
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = 1.5707963267341256#
      w2b_d1 += w2b_d2
      w2b_p0 = w2b_d1
      w2b_d2 = 6.0771005065061922e-11#
      w2b_d1 += w2b_d2
      w2b_l8 = w2b_d1
      F64Store(mem, w2b_i0, w2b_d1)
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = w2b_l8
      w2b_d1 -= w2b_d2
      w2b_d2 = 6.0771005065061922e-11#
      w2b_d1 += w2b_d2
      F64Store(mem, w2b_i0 + 8, w2b_d1)
      w2b_i0 = 4294967295%
      w2b_l2 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_l5
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = -3.1415926534682512#
      w2b_d1 += w2b_d2
      w2b_p0 = w2b_d1
      w2b_d2 = -1.2154201013012384e-10#
      w2b_d1 += w2b_d2
      w2b_l8 = w2b_d1
      F64Store(mem, w2b_i0, w2b_d1)
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = w2b_l8
      w2b_d1 -= w2b_d2
      w2b_d2 = -1.2154201013012384e-10#
      w2b_d1 += w2b_d2
      F64Store(mem, w2b_i0 + 8, w2b_d1)
      w2b_i0 = 2%
      w2b_l2 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = 3.1415926534682512#
    w2b_d1 += w2b_d2
    w2b_p0 = w2b_d1
    w2b_d2 = 1.2154201013012384e-10#
    w2b_d1 += w2b_d2
    w2b_l8 = w2b_d1
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l8
    w2b_d1 -= w2b_d2
    w2b_d2 = 1.2154201013012384e-10#
    w2b_d1 += w2b_d2
    F64Store(mem, w2b_i0 + 8, w2b_d1)
    w2b_i0 = 4294967294%
    w2b_l2 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 1075594811%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = 1075183036%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l3
      w2b_i1 = 1074977148%
      If w2b_i0 = w2b_i1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b2_12058741
      End If
      w2b_i0 = w2b_l5
      If w2b_i0 = 0% Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_p1
        w2b_d1 = w2b_p0
        w2b_d2 = -4.7123889802023768#
        w2b_d1 += w2b_d2
        w2b_p0 = w2b_d1
        w2b_d2 = -1.8231301519518578e-10#
        w2b_d1 += w2b_d2
        w2b_l8 = w2b_d1
        F64Store(mem, w2b_i0, w2b_d1)
        w2b_i0 = w2b_p1
        w2b_d1 = w2b_p0
        w2b_d2 = w2b_l8
        w2b_d1 -= w2b_d2
        w2b_d2 = -1.8231301519518578e-10#
        w2b_d1 += w2b_d2
        F64Store(mem, w2b_i0 + 8, w2b_d1)
        w2b_i0 = 3%
        w2b_l2 = w2b_i0
        Goto w2b_b0_11927667
      End If
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = 4.7123889802023768#
      w2b_d1 += w2b_d2
      w2b_p0 = w2b_d1
      w2b_d2 = 1.8231301519518578e-10#
      w2b_d1 += w2b_d2
      w2b_l8 = w2b_d1
      F64Store(mem, w2b_i0, w2b_d1)
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = w2b_l8
      w2b_d1 -= w2b_d2
      w2b_d2 = 1.8231301519518578e-10#
      w2b_d1 += w2b_d2
      F64Store(mem, w2b_i0 + 8, w2b_d1)
      w2b_i0 = 4294967293%
      w2b_l2 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_l3
    w2b_i1 = 1075388923%
    If w2b_i0 = w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b2_12058741
    End If
    w2b_i0 = w2b_l5
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = -6.2831853069365025#
      w2b_d1 += w2b_d2
      w2b_p0 = w2b_d1
      w2b_d2 = -2.4308402026024769e-10#
      w2b_d1 += w2b_d2
      w2b_l8 = w2b_d1
      F64Store(mem, w2b_i0, w2b_d1)
      w2b_i0 = w2b_p1
      w2b_d1 = w2b_p0
      w2b_d2 = w2b_l8
      w2b_d1 -= w2b_d2
      w2b_d2 = -2.4308402026024769e-10#
      w2b_d1 += w2b_d2
      F64Store(mem, w2b_i0 + 8, w2b_d1)
      w2b_i0 = 4%
      w2b_l2 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = 6.2831853069365025#
    w2b_d1 += w2b_d2
    w2b_p0 = w2b_d1
    w2b_d2 = 2.4308402026024769e-10#
    w2b_d1 += w2b_d2
    w2b_l8 = w2b_d1
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l8
    w2b_d1 -= w2b_d2
    w2b_d2 = 2.4308402026024769e-10#
    w2b_d1 += w2b_d2
    F64Store(mem, w2b_i0 + 8, w2b_d1)
    w2b_i0 = 4294967292%
    w2b_l2 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 1094263290%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_b2_12058741:
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d3 = 0.63661977236758138#
  w2b_d2 *= w2b_d3
  w2b_d3 = 6755399441055744#
  w2b_d2 += w2b_d3
  w2b_d3 = -6755399441055744#
  w2b_d2 += w2b_d3
  w2b_l9 = w2b_d2
  w2b_d3 = -1.5707963267341256#
  w2b_d2 *= w2b_d3
  w2b_d1 += w2b_d2
  w2b_l8 = w2b_d1
  w2b_d2 = w2b_l9
  w2b_d3 = 6.0771005065061922e-11#
  w2b_d2 *= w2b_d3
  w2b_l10 = w2b_d2
  w2b_d1 -= w2b_d2
  w2b_p0 = w2b_d1
  F64Store(mem, w2b_i0, w2b_d1)
  w2b_i0 = w2b_l3
  w2b_i1 = 20%
  w2b_i0 >>= (w2b_i1 AND 31)
  w2b_l3 = w2b_i0
  w2b_d1 = w2b_p0
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 52&
  w2b_j1 >>= (w2b_j2 AND 63)
  w2b_i1 = I32WrapI64(w2b_j1)
  w2b_i2 = 2047%
  w2b_i1 = w2b_i1 AND w2b_i2
  w2b_i0 -= w2b_i1
  w2b_i1 = 17%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_l5 = w2b_i0
  w2b_d0 = w2b_l9
  w2b_d0 = F64Abs(w2b_d0)
  w2b_d1 = 2147483648#
  If w2b_d0 < w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_l9
    w2b_i0 = I32TruncF64S(w2b_d0)
    Goto w2b_b11_22806693
  End If
  w2b_i0 = 2147483648%
  w2b_b11_22806693:
  w2b_l2 = w2b_i0
  w2b_i0 = w2b_l5
  If w2b_i0 Then
    Goto w2b_b13_22937767
  End If
  w2b_d0 = w2b_l9
  w2b_d1 = 2.0222662487959506e-21#
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_l8
  w2b_d2 = w2b_l8
  w2b_d3 = w2b_l9
  w2b_d4 = 6.077100506303966e-11#
  w2b_d3 *= w2b_d4
  w2b_p0 = w2b_d3
  w2b_d2 -= w2b_d3
  w2b_l8 = w2b_d2
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d1 -= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_l10 = w2b_d0
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_l8
  w2b_d2 = w2b_l10
  w2b_d1 -= w2b_d2
  w2b_p0 = w2b_d1
  F64Store(mem, w2b_i0, w2b_d1)
  w2b_i0 = w2b_l3
  w2b_d1 = w2b_p0
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 52&
  w2b_j1 >>= (w2b_j2 AND 63)
  w2b_i1 = I32WrapI64(w2b_j1)
  w2b_i2 = 2047%
  w2b_i1 = w2b_i1 AND w2b_i2
  w2b_i0 -= w2b_i1
  w2b_i1 = 50%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b13_22937767
  End If
  w2b_d0 = w2b_l9
  w2b_d1 = 8.4784276603688996e-32#
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_l8
  w2b_d2 = w2b_l8
  w2b_d3 = w2b_l9
  w2b_d4 = 2.0222662487111665e-21#
  w2b_d3 *= w2b_d4
  w2b_p0 = w2b_d3
  w2b_d2 -= w2b_d3
  w2b_l8 = w2b_d2
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d1 -= w2b_d2
  w2b_d0 -= w2b_d1
  w2b_l10 = w2b_d0
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_l8
  w2b_d2 = w2b_l10
  w2b_d1 -= w2b_d2
  w2b_p0 = w2b_d1
  F64Store(mem, w2b_i0, w2b_d1)
  w2b_b13_22937767:
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_l8
  w2b_d2 = w2b_p0
  w2b_d1 -= w2b_d2
  w2b_d2 = w2b_l10
  w2b_d1 -= w2b_d2
  F64Store(mem, w2b_i0 + 8, w2b_d1)
  Goto w2b_b0_11927667
  w2b_b1_11993204:
  w2b_i0 = w2b_l3
  w2b_i1 = 2146435072%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 -= w2b_d2
    w2b_p0 = w2b_d1
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    F64Store(mem, w2b_i0 + 8, w2b_d1)
    w2b_i0 = 0%
    w2b_l2 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l4
  w2b_j1 = w2b_l7
  w2b_j2 = 4503599627370495&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_j2 = 4710765210229538816&
  w2b_j1 = w2b_j1 OR w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_p0 = w2b_d1
  w2b_d1 = F64Abs(w2b_d1)
  w2b_d2 = 2147483648#
  If w2b_d1 < w2b_d2 Then
    w2b_i1 = 1
  Else
    w2b_i1 = 0
  End If
  If w2b_i1 Then
    w2b_d1 = w2b_p0
    w2b_i1 = I32TruncF64S(w2b_d1)
    Goto w2b_b15_23068841
  End If
  w2b_i1 = 2147483648%
  w2b_b15_23068841:
  w2b_d1 = F64ConvertI32S(w2b_i1)
  w2b_l8 = w2b_d1
  F64Store(mem, w2b_i0 + 16, w2b_d1)
  w2b_i0 = w2b_l4
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_l8
  w2b_d1 -= w2b_d2
  w2b_d2 = 16777216#
  w2b_d1 *= w2b_d2
  w2b_p0 = w2b_d1
  w2b_d1 = F64Abs(w2b_d1)
  w2b_d2 = 2147483648#
  If w2b_d1 < w2b_d2 Then
    w2b_i1 = 1
  Else
    w2b_i1 = 0
  End If
  If w2b_i1 Then
    w2b_d1 = w2b_p0
    w2b_i1 = I32TruncF64S(w2b_d1)
    Goto w2b_b17_23199915
  End If
  w2b_i1 = 2147483648%
  w2b_b17_23199915:
  w2b_d1 = F64ConvertI32S(w2b_i1)
  w2b_l8 = w2b_d1
  F64Store(mem, w2b_i0 + 24, w2b_d1)
  w2b_i0 = w2b_l4
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_l8
  w2b_d1 -= w2b_d2
  w2b_d2 = 16777216#
  w2b_d1 *= w2b_d2
  w2b_p0 = w2b_d1
  F64Store(mem, w2b_i0 + 32, w2b_d1)
  w2b_d0 = w2b_p0
  w2b_d1 = 0#
  If w2b_d0 <> w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = 2%
    w2b_l6 = w2b_i0
    Goto w2b_b19_23330989
  End If
  w2b_i0 = w2b_l4
  w2b_i1 = 16%
  w2b_i0 += w2b_i1
  w2b_i1 = 8%
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_l2 = w2b_i0
  w2b_i0 = 2%
  w2b_l6 = w2b_i0
  w2b_l21_24903856:
    
    w2b_i0 = w2b_l6
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    w2b_l6 = w2b_i0
    w2b_i0 = w2b_l2
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l2
    w2b_i2 = 8%
    w2b_i1 -= w2b_i2
    w2b_l2 = w2b_i1
    w2b_d1 = 0#
    If w2b_d0 = w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_l21_24903856
    End If
  w2b_b19_23330989:
  w2b_i0 = w2b_l4
  w2b_i1 = 16%
  w2b_i0 += w2b_i1
  w2b_i1 = w2b_l4
  w2b_i2 = w2b_l3
  w2b_i3 = 20%
  w2b_i2 >>= (w2b_i3 AND 31)
  w2b_i3 = 1046%
  w2b_i2 -= w2b_i3
  w2b_i3 = w2b_l6
  w2b_i4 = 1%
  w2b_i3 += w2b_i4
  w2b_i0 = w2b___rem_pio2_large(w2b_i0, w2b_i1, w2b_i2, w2b_i3)
  w2b_l2 = w2b_i0
  w2b_i0 = w2b_l4
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l5
  If w2b_i0 Then
    w2b_i0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d1 = -(w2b_d1)
    F64Store(mem, w2b_i0, w2b_d1)
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_l4
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_d1 = -(w2b_d1)
    F64Store(mem, w2b_i0 + 8, w2b_d1)
    w2b_i0 = 0%
    w2b_i1 = w2b_l2
    w2b_i0 -= w2b_i1
    w2b_l2 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p1
  w2b_d1 = w2b_p0
  F64Store(mem, w2b_i0, w2b_d1)
  w2b_i0 = w2b_p1
  w2b_i1 = w2b_l4
  w2b_j1 = I64Load(mem, w2b_i1 + 8)
  mem[w2b_i0 + 8] = w2b_j1
  mem[w2b_i0 + 9] = (w2b_j1 >> 8)
  mem[w2b_i0 + 10] = (w2b_j1 >> 16)
  mem[w2b_i0 + 11] = (w2b_j1 >> 24)
  mem[w2b_i0 + 12] = (w2b_j1 >> 32&)
  mem[w2b_i0 + 13] = (w2b_j1 >> 40&)
  mem[w2b_i0 + 14] = (w2b_j1 >> 48&)
  mem[w2b_i0 + 15] = (w2b_j1 >> 56&)
  w2b_b0_11927667:
  w2b_i0 = w2b_l4
  w2b_i1 = 48%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_i0 = w2b_l2
  Return w2b_i0
End Function
Function w2b___sin(w2b_p0 As Double, w2b_p1 As Double, w2b_p2 As Integer) As Double
  mem = m.w2b_memory
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_l3 = w2b_d0
  w2b_d1 = w2b_l3
  w2b_d2 = w2b_l3
  w2b_d1 *= w2b_d2
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_l3
  w2b_d2 = 1.5896909952115501e-10#
  w2b_d1 *= w2b_d2
  w2b_d2 = -2.5050760253406863e-08#
  w2b_d1 += w2b_d2
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_l3
  w2b_d2 = w2b_l3
  w2b_d3 = 2.7557313707070068e-06#
  w2b_d2 *= w2b_d3
  w2b_d3 = -0.00019841269829857949#
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d2 = 0.0083333333333224895#
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_l5 = w2b_d0
  w2b_d0 = w2b_l3
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_l4 = w2b_d0
  w2b_i0 = w2b_p2
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_l4
    w2b_d1 = w2b_l3
    w2b_d2 = w2b_l5
    w2b_d1 *= w2b_d2
    w2b_d2 = -0.16666666666666632#
    w2b_d1 += w2b_d2
    w2b_d0 *= w2b_d1
    w2b_d1 = w2b_p0
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_l4
  w2b_d2 = 0.16666666666666632#
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_l3
  w2b_d3 = w2b_p1
  w2b_d4 = 0.5#
  w2b_d3 *= w2b_d4
  w2b_d4 = w2b_l4
  w2b_d5 = w2b_l5
  w2b_d4 *= w2b_d5
  w2b_d3 -= w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d3 = w2b_p1
  w2b_d2 -= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 -= w2b_d1
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_cos(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_l1 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 1072243195%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1#
    w2b_i1 = w2b_l2
    w2b_i2 = 1044816030%
    If (w2b_i1 And &HFFFFFFFF&) < (w2b_i2 And &HFFFFFFFF&) Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      Goto w2b_b0_11927667
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 0#
    w2b_d0 = w2b___cos(w2b_d0, w2b_d1)
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d0 -= w2b_d1
  w2b_i1 = w2b_l2
  w2b_i2 = 2146435072%
  If (w2b_i1 And &HFFFFFFFF&) >= (w2b_i2 And &HFFFFFFFF&) Then
    w2b_i1 = 1
  Else
    w2b_i1 = 0
  End If
  If w2b_i1 Then
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_i1 = w2b_l1
  w2b_i0 = w2b___rem_pio2(w2b_d0, w2b_i1)
  w2b_i1 = 3%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 2%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    switch = w2b_i0
    If switch = 1 Then
      Goto w2b_b3_12124278
    End If
    If switch = 0 Then
      Goto w2b_b4_12189815
    End If
    Goto w2b_b5_12255352
    w2b_b5_12255352:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_d0 = w2b___cos(w2b_d0, w2b_d1)
    Goto w2b_b0_11927667
    w2b_b4_12189815:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_i2 = 1%
    w2b_d0 = w2b___sin(w2b_d0, w2b_d1, w2b_i2)
    w2b_d0 = -(w2b_d0)
    Goto w2b_b0_11927667
    w2b_b3_12124278:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_d0 = w2b___cos(w2b_d0, w2b_d1)
    w2b_d0 = -(w2b_d0)
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_i1 = w2b_l1
  w2b_d1 = F64Load(mem, w2b_i1 + 8)
  w2b_i2 = 1%
  w2b_d0 = w2b___sin(w2b_d0, w2b_d1, w2b_i2)
  w2b_b0_11927667:
  w2b_i1 = w2b_l1
  w2b_i2 = 16%
  w2b_i1 += w2b_i2
  m.w2b_g0 = w2b_i1
  Return w2b_d0
End Function
Function w2b_exp(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  w2b_l3 = 0
  
  w2b_l4 = 0
  
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l4 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2047%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 969%
  w2b_i0 -= w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 63%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l1
    w2b_l3 = w2b_i0
    Goto w2b_b1_11993204
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 0%
  If w2b_i0 < w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1#
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 1033%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_d0 = 0#
  w2b_j1 = w2b_l4
  w2b_j2 = 18442240474082181120&
  If w2b_j1 = w2b_j2 Then
    w2b_i1 = 1
  Else
    w2b_i1 = 0
  End If
  If w2b_i1 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l1
  w2b_i1 = 2047%
  If w2b_i0 = w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = 1#
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l4
  w2b_j1 = 18446744073709551615&
  If w2b_j0 <= w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 0#
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = DoubleInf()
  Goto w2b_bfunc_92602863
  w2b_b1_11993204:
  w2b_i0 = 39776%
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_i1 = 39784%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_l5 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l6 = w2b_d0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l4 = w2b_j0
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l1 = w2b_i0
  w2b_d0 = w2b_l6
  w2b_d1 = w2b_l5
  w2b_d0 -= w2b_d1
  w2b_l5 = w2b_d0
  w2b_i1 = 39800%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_d0 *= w2b_d1
  w2b_i1 = 39792%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_d2 = w2b_l5
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_p0
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_l5 = w2b_d0
  w2b_i0 = w2b_l1
  w2b_i1 = 4%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = 2032%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 39888%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_l5
  w2b_i2 = 39808%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d3 = w2b_p0
  w2b_i4 = 39816%
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_l5
  w2b_d2 = w2b_l5
  w2b_d1 *= w2b_d2
  w2b_i2 = 39824%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d3 = w2b_p0
  w2b_i4 = 39832%
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l2
  w2b_i1 = 8%
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_i1 = 39888%
  w2b_i0 += w2b_i1
  w2b_j0 = I64Load(mem, w2b_i0)
  w2b_j1 = w2b_l4
  w2b_j2 = 45&
  w2b_j1 <<= (w2b_j2 AND 63)
  w2b_j0 += w2b_j1
  w2b_l4 = w2b_j0
  w2b_i0 = w2b_l3
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l1
    w2b_i1 = 0%
    If w2b_i0 >= w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_j1 = w2b_l4
      w2b_j2 = 4544132024016830464&
      w2b_j1 -= w2b_j2
      w2b_d1 = F64ReinterpretI64(w2b_j1)
      w2b_p0 = w2b_d1
      w2b_d0 *= w2b_d1
      w2b_d1 = w2b_p0
      w2b_d0 += w2b_d1
      w2b_d1 = 5.4861240687936887e+303#
      w2b_d0 *= w2b_d1
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = w2b_p0
    w2b_j1 = w2b_l4
    w2b_j2 = 4602678819172646912&
    w2b_j1 += w2b_j2
    w2b_d1 = F64ReinterpretI64(w2b_j1)
    w2b_l5 = w2b_d1
    w2b_d0 *= w2b_d1
    w2b_l6 = w2b_d0
    w2b_d1 = w2b_l5
    w2b_d0 += w2b_d1
    w2b_p0 = w2b_d0
    w2b_d1 = 1#
    If w2b_d0 < w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 1%
    w2b_i0 = (w2b_i0 Or w2b_i1) And Not (w2b_i0 And w2b_i1)
If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = 1#
      w2b_d0 += w2b_d1
      w2b_l7 = w2b_d0
      w2b_d1 = w2b_l6
      w2b_d2 = w2b_l5
      w2b_d3 = w2b_p0
      w2b_d2 -= w2b_d3
      w2b_d1 += w2b_d2
      w2b_d2 = w2b_p0
      w2b_d3 = 1#
      w2b_d4 = w2b_l7
      w2b_d3 -= w2b_d4
      w2b_d2 += w2b_d3
      w2b_d1 += w2b_d2
      w2b_d0 += w2b_d1
      w2b_d1 = -1#
      w2b_d0 += w2b_d1
      w2b_p0 = w2b_d0
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 2.2250738585072014e-308#
    w2b_d0 *= w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p0
  w2b_j1 = w2b_l4
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_p0 = w2b_d1
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_b0_11927667:
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_fmod(w2b_p0 As Double, w2b_p1 As Double) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  w2b_l3 = 0
  w2b_l4 = 0
  
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  
  w2b_d0 = w2b_p1
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l7 = w2b_j0
  w2b_j1 = 1&
  w2b_j0 <<= (w2b_j1 AND 63)
  w2b_l5 = w2b_j0
  If w2b_j0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_d0 = w2b_p1
  w2b_d1 = w2b_p1
  If w2b_d0 <> w2b_d1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l8 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2047%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 2047%
  If w2b_i0 <> w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_b1_11993204:
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p1
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  Goto w2b_bfunc_92602863
  w2b_b0_11927667:
  w2b_j0 = w2b_l5
  w2b_j1 = w2b_l8
  w2b_j2 = 1&
  w2b_j1 <<= (w2b_j2 AND 63)
  w2b_l6 = w2b_j1
  w2b_i0 = I64LtU(w2b_j0, w2b_j1)
  If w2b_i0 Then
    w2b_j0 = w2b_l7
    w2b_j1 = 52&
    w2b_j0 >>= (w2b_j1 AND 63)
    w2b_i0 = I32WrapI64(w2b_j0)
    w2b_i1 = 2047%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_l3 = w2b_i0
    w2b_i0 = w2b_l2
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = 0%
      w2b_l2 = w2b_i0
      w2b_j0 = w2b_l8
      w2b_j1 = 12&
      w2b_j0 <<= (w2b_j1 AND 63)
      w2b_l5 = w2b_j0
      w2b_j1 = 0&
      If w2b_j0 >= w2b_j1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_l6_13631619:
          
          w2b_i0 = w2b_l2
          w2b_i1 = 1%
          w2b_i0 -= w2b_i1
          w2b_l2 = w2b_i0
          w2b_j0 = w2b_l5
          w2b_j1 = 1&
          w2b_j0 <<= (w2b_j1 AND 63)
          w2b_l5 = w2b_j0
          w2b_j1 = 18446744073709551615&
          If w2b_j0 > w2b_j1 Then
            w2b_i0 = 1
          Else
            w2b_i0 = 0
          End If
          If w2b_i0 Then
            Goto w2b_l6_13631619
          End If
      End If
      w2b_j0 = w2b_l8
      w2b_i1 = 1%
      w2b_i2 = w2b_l2
      w2b_i1 -= w2b_i2
      w2b_j1 = I64ExtendI32U(w2b_i1)
      w2b_j0 <<= (w2b_j1 AND 63)
      Goto w2b_b3_12124278
    End If
    w2b_j0 = w2b_l8
    w2b_j1 = 4503599627370495&
    w2b_j0 = w2b_j0 AND w2b_j1
    w2b_j1 = 4503599627370496&
    w2b_j0 = w2b_j0 OR w2b_j1
    w2b_b3_12124278:
    w2b_l5 = w2b_j0
    w2b_i1 = w2b_l3
    If w2b_i1 = 0% Then
      w2b_i1 = 1
    Else
      w2b_i1 = 0
    End If
    If w2b_i1 Then
      w2b_i1 = 0%
      w2b_l3 = w2b_i1
      w2b_j1 = w2b_l7
      w2b_j2 = 12&
      w2b_j1 <<= (w2b_j2 AND 63)
      w2b_l6 = w2b_j1
      w2b_j2 = 0&
      If w2b_j1 >= w2b_j2 Then
        w2b_i1 = 1
      Else
        w2b_i1 = 0
      End If
      If w2b_i1 Then
        w2b_l10_24707246:
          
          w2b_i1 = w2b_l3
          w2b_i2 = 1%
          w2b_i1 -= w2b_i2
          w2b_l3 = w2b_i1
          w2b_j1 = w2b_l6
          w2b_j2 = 1&
          w2b_j1 <<= (w2b_j2 AND 63)
          w2b_l6 = w2b_j1
          w2b_j2 = 18446744073709551615&
          If w2b_j1 > w2b_j2 Then
            w2b_i1 = 1
          Else
            w2b_i1 = 0
          End If
          If w2b_i1 Then
            Goto w2b_l10_24707246
          End If
      End If
      w2b_j1 = w2b_l7
      w2b_i2 = 1%
      w2b_i3 = w2b_l3
      w2b_i2 -= w2b_i3
      w2b_j2 = I64ExtendI32U(w2b_i2)
      w2b_j1 <<= (w2b_j2 AND 63)
      Goto w2b_b7_12386426
    End If
    w2b_j1 = w2b_l7
    w2b_j2 = 4503599627370495&
    w2b_j1 = w2b_j1 AND w2b_j2
    w2b_j2 = 4503599627370496&
    w2b_j1 = w2b_j1 OR w2b_j2
    w2b_b7_12386426:
    w2b_l7 = w2b_j1
    w2b_j0 -= w2b_j1
    w2b_l6 = w2b_j0
    w2b_j1 = 18446744073709551615&
    If w2b_j0 > w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_l4 = w2b_i0
    w2b_i0 = w2b_l2
    w2b_i1 = w2b_l3
    If w2b_i0 > w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_l12_24838320:
        
        w2b_i0 = w2b_l4
        If w2b_i0 = 0% Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_b13_22937767
        End If
        w2b_j0 = w2b_l6
        w2b_l5 = w2b_j0
        w2b_j1 = 0&
        If w2b_j0 <> w2b_j1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_b13_22937767
        End If
        w2b_d0 = w2b_p0
        w2b_d1 = 0#
        w2b_d0 *= w2b_d1
        Goto w2b_bfunc_92602863
        w2b_b13_22937767:
        w2b_j0 = w2b_l5
        w2b_j1 = 1&
        w2b_j0 <<= (w2b_j1 AND 63)
        w2b_l5 = w2b_j0
        w2b_j1 = w2b_l7
        w2b_j0 -= w2b_j1
        w2b_l6 = w2b_j0
        w2b_j1 = 18446744073709551615&
        If w2b_j0 > w2b_j1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        w2b_l4 = w2b_i0
        w2b_i0 = w2b_l3
        w2b_i1 = w2b_l2
        w2b_i2 = 1%
        w2b_i1 -= w2b_i2
        w2b_l2 = w2b_i1
        If w2b_i0 < w2b_i1 Then
          w2b_i0 = 1
        Else
          w2b_i0 = 0
        End If
        If w2b_i0 Then
          Goto w2b_l12_24838320
        End If
    End If
    w2b_i0 = w2b_l4
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b14_23003304
    End If
    w2b_j0 = w2b_l6
    w2b_l5 = w2b_j0
    w2b_j1 = 0&
    If w2b_j0 <> w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b14_23003304
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 0#
    w2b_d0 *= w2b_d1
    Goto w2b_bfunc_92602863
    w2b_b14_23003304:
    w2b_j0 = w2b_l5
    w2b_j1 = 4503599627370495&
    w2b_i0 = I64LeU(w2b_j0, w2b_j1)
    If w2b_i0 Then
      w2b_l16_25100468:
        
        w2b_i0 = w2b_l2
        w2b_i1 = 1%
        w2b_i0 -= w2b_i1
        w2b_l2 = w2b_i0
        w2b_j0 = w2b_l5
        w2b_j1 = 1&
        w2b_j0 <<= (w2b_j1 AND 63)
        w2b_l5 = w2b_j0
        w2b_j1 = 4503599627370496&
        w2b_i0 = I64LtU(w2b_j0, w2b_j1)
        If w2b_i0 Then
          Goto w2b_l16_25100468
        End If
    End If
    w2b_j0 = w2b_l8
    w2b_j1 = 9223372036854775808&
    w2b_j0 = w2b_j0 AND w2b_j1
    w2b_l6 = w2b_j0
    w2b_i0 = w2b_l2
    w2b_i1 = 1%
    If w2b_i0 >= w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_j0 = w2b_l5
      w2b_j1 = 4503599627370496&
      w2b_j0 -= w2b_j1
      w2b_i1 = w2b_l2
      w2b_j1 = I64ExtendI32U(w2b_i1)
      w2b_j2 = 52&
      w2b_j1 <<= (w2b_j2 AND 63)
      w2b_j0 = w2b_j0 OR w2b_j1
    Else
      w2b_j0 = w2b_l5
      w2b_i1 = 1%
      w2b_i2 = w2b_l2
      w2b_i1 -= w2b_i2
      w2b_j1 = I64ExtendI32U(w2b_i1)
      w2b_j0 >>= (w2b_j1 AND 63)
    End If
    w2b_j1 = w2b_l6
    w2b_j0 = w2b_j0 OR w2b_j1
    w2b_d0 = F64ReinterpretI64(w2b_j0)
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = 0#
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_p0
  w2b_j2 = w2b_l5
  w2b_j3 = w2b_l6
  If w2b_j2 = w2b_j3 Then
    w2b_i2 = 1
  Else
    w2b_i2 = 0
  End If
  If w2b_i2 = 0 Then
    w2b_d0 = w2b_d1
  End If
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_frexp(w2b_p0 As Double, w2b_p1 As Integer) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  
  w2b_l3 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l3 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2047%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 2047%
  If w2b_i0 <> w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = 0#
      If w2b_d0 = w2b_d1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        w2b_i0 = w2b_p1
        w2b_i1 = 0%
        mem[w2b_i0] = w2b_i1
        mem[w2b_i0 + 1] = (w2b_i1 >> 8)
        mem[w2b_i0 + 2] = (w2b_i1 >> 16)
        mem[w2b_i0 + 3] = (w2b_i1 >> 24)
        w2b_d0 = w2b_p0
        Goto w2b_bfunc_92602863
      End If
      w2b_d0 = w2b_p0
      w2b_d1 = 1.8446744073709552e+19#
      w2b_d0 *= w2b_d1
      w2b_i1 = w2b_p1
      w2b_d0 = w2b_frexp(w2b_d0, w2b_i1)
      w2b_i1 = w2b_p1
      w2b_i2 = w2b_p1
      If w2b_i2 And &H3 Then
        w2b_i2 = (mem[w2b_i2]) + (mem[w2b_i2 + 1] << 8) + (mem[w2b_i2 + 2] << 16) + (mem[w2b_i2 + 3] << 24)
      Else
        w2b_i2 = mem.GetSignedLong(w2b_i2 >> 2)
      End If
      w2b_i3 = 4294967232%
      w2b_i2 += w2b_i3
      mem[w2b_i1] = w2b_i2
      mem[w2b_i1 + 1] = (w2b_i2 >> 8)
      mem[w2b_i1 + 2] = (w2b_i2 >> 16)
      mem[w2b_i1 + 3] = (w2b_i2 >> 24)
      Goto w2b_bfunc_92602863
    End If
    w2b_i0 = w2b_p1
    w2b_i1 = w2b_l2
    w2b_i2 = 1022%
    w2b_i1 -= w2b_i2
    mem[w2b_i0] = w2b_i1
    mem[w2b_i0 + 1] = (w2b_i1 >> 8)
    mem[w2b_i0 + 2] = (w2b_i1 >> 16)
    mem[w2b_i0 + 3] = (w2b_i1 >> 24)
    w2b_j0 = w2b_l3
    w2b_j1 = 9227875636482146303&
    w2b_j0 = w2b_j0 AND w2b_j1
    w2b_j1 = 4602678819172646912&
    w2b_j0 = w2b_j0 OR w2b_j1
    w2b_d0 = F64ReinterpretI64(w2b_j0)
  Else
    w2b_d0 = w2b_p0
  End If
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_log(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  
  w2b_l2 = 0
  w2b_l3 = 0
  
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l2 = w2b_j0
  w2b_j1 = 4606619468846596096&
  w2b_j0 -= w2b_j1
  w2b_j1 = 854320534781951&
  w2b_i0 = I64LeU(w2b_j0, w2b_j1)
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = -1#
    w2b_d0 += w2b_d1
    w2b_p0 = w2b_d0
    w2b_d1 = 134217728#
    w2b_d0 *= w2b_d1
    w2b_l4 = w2b_d0
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l4
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_l4
    w2b_d1 -= w2b_d2
    w2b_l4 = w2b_d1
    w2b_d2 = w2b_l4
    w2b_d1 *= w2b_d2
    w2b_i2 = 44184%
    w2b_d2 = F64Load(mem, w2b_i2)
    w2b_l5 = w2b_d2
    w2b_d1 *= w2b_d2
    w2b_l6 = w2b_d1
    w2b_d0 += w2b_d1
    w2b_l7 = w2b_d0
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l4
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_p0
    w2b_d3 = w2b_l4
    w2b_d2 -= w2b_d3
    w2b_d3 = w2b_l5
    w2b_d2 *= w2b_d3
    w2b_d1 *= w2b_d2
    w2b_d2 = w2b_l6
    w2b_d3 = w2b_p0
    w2b_d4 = w2b_l7
    w2b_d3 -= w2b_d4
    w2b_d2 += w2b_d3
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_p0
    w2b_d3 = w2b_p0
    w2b_d4 = w2b_p0
    w2b_d3 *= w2b_d4
    w2b_l4 = w2b_d3
    w2b_d2 *= w2b_d3
    w2b_l5 = w2b_d2
    w2b_i3 = 44192%
    w2b_d3 = F64Load(mem, w2b_i3)
    w2b_d4 = w2b_p0
    w2b_i5 = 44200%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d4 = w2b_l4
    w2b_i5 = 44208%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d4 = w2b_l5
    w2b_i5 = 44216%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d6 = w2b_p0
    w2b_i7 = 44224%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d6 = w2b_l4
    w2b_i7 = 44232%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d6 = w2b_l5
    w2b_i7 = 44240%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d8 = w2b_p0
    w2b_i9 = 44248%
    w2b_d9 = F64Load(mem, w2b_i9)
    w2b_d8 *= w2b_d9
    w2b_d7 += w2b_d8
    w2b_d8 = w2b_l4
    w2b_i9 = 44256%
    w2b_d9 = F64Load(mem, w2b_i9)
    w2b_d8 *= w2b_d9
    w2b_d7 += w2b_d8
    w2b_d8 = w2b_l5
    w2b_i9 = 44264%
    w2b_d9 = F64Load(mem, w2b_i9)
    w2b_d8 *= w2b_d9
    w2b_d7 += w2b_d8
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l2
  w2b_j1 = 48&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l1 = w2b_i0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_i1 = 32736%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_j0 = w2b_l2
    w2b_j1 = 9223372036854775807&
    w2b_j0 = w2b_j0 AND w2b_j1
    If w2b_j0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = -DoubleInf()
      Goto w2b_bfunc_92602863
    End If
    w2b_j0 = w2b_l2
    w2b_j1 = 9218868437227405312&
    If w2b_j0 = w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_i0 = w2b_l1
    w2b_i1 = 32768%
    w2b_i0 = w2b_i0 AND w2b_i1
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 0%
    w2b_i2 = w2b_l1
    w2b_i3 = 32752%
    w2b_i2 = w2b_i2 AND w2b_i3
    w2b_i3 = 32752%
    If w2b_i2 <> w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = w2b_p0
      w2b_d0 -= w2b_d1
      w2b_p0 = w2b_d0
      w2b_d1 = w2b_p0
      w2b_d0 = F64Div(w2b_d0, w2b_d1)
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 4503599627370496#
    w2b_d0 *= w2b_d1
    w2b_j0 = I64ReinterpretF64(w2b_d0)
    w2b_j1 = 234187180623265792&
    w2b_j0 -= w2b_j1
    w2b_l2 = w2b_j0
  End If
  w2b_j0 = w2b_l2
  w2b_j1 = 4604367669032910848&
  w2b_j0 -= w2b_j1
  w2b_l3 = w2b_j0
  w2b_j1 = 45&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 127%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_i1 = 4%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_l1 = w2b_i0
  w2b_i1 = 44280%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_i1 = 44128%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_j2 = w2b_l3
  w2b_j3 = 52&
  w2b_j3 = w2b_j3 And &H3F
If w2b_j2 < 0 And w2b_j3 <> 0 Then
    w2b_j2 = (w2b_j2 >> w2b_j3) Or (&HFFFFFFFFFFFFFFFF << (64& - w2b_j3))
Else
    w2b_j2 = w2b_j2 >> w2b_j3
End If
w2b_i2 = I32WrapI64(w2b_j2)
  w2b_d2 = F64ConvertI32S(w2b_i2)
  w2b_l5 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_l6 = w2b_d0
  w2b_i1 = w2b_l1
  w2b_i2 = 44272%
  w2b_i1 += w2b_i2
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_j2 = w2b_l2
  w2b_j3 = w2b_l3
  w2b_j4 = 18442240474082181120&
  w2b_j3 = w2b_j3 AND w2b_j4
  w2b_j2 -= w2b_j3
  w2b_d2 = F64ReinterpretI64(w2b_j2)
  w2b_i3 = w2b_l1
  w2b_i4 = 46320%
  w2b_i3 += w2b_i4
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_d2 -= w2b_d3
  w2b_i3 = w2b_l1
  w2b_i4 = 46328%
  w2b_i3 += w2b_i4
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_d2 -= w2b_d3
  w2b_d1 *= w2b_d2
  w2b_p0 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l7 = w2b_d0
  w2b_i1 = 44144%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d2 *= w2b_d3
  w2b_l4 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_i2 = 44136%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d3 = w2b_l5
  w2b_d2 *= w2b_d3
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_l6
  w2b_d5 = w2b_l7
  w2b_d4 -= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_l4
  w2b_d2 *= w2b_d3
  w2b_i3 = 44152%
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_d4 = w2b_p0
  w2b_i5 = 44160%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d4 = w2b_l4
  w2b_i5 = 44168%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d6 = w2b_p0
  w2b_i7 = 44176%
  w2b_d7 = F64Load(mem, w2b_i7)
  w2b_d6 *= w2b_d7
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_b1_11993204:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_log10(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  w2b_l3 = 0
  
  w2b_l4 = 0
  
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  w2b_l9 = 0
  w2b_l10 = 0
  w2b_l11 = 0
  w2b_l12 = 0
  w2b_l13 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l4 = w2b_j0
  w2b_j1 = 0&
  If w2b_j0 >= w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_j0 = w2b_l4
    w2b_j1 = 32&
    w2b_j0 >>= (w2b_j1 AND 63)
    w2b_i0 = I32WrapI64(w2b_j0)
    w2b_l1 = w2b_i0
    w2b_i1 = 1048575%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b3_12124278
    End If
  End If
  w2b_j0 = w2b_l4
  w2b_j1 = 9223372036854775807&
  w2b_j0 = w2b_j0 AND w2b_j1
  If w2b_j0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = -1#
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 *= w2b_d2
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l4
  w2b_j1 = 18446744073709551615&
  If w2b_j0 > w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b2_12058741
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d0 -= w2b_d1
  w2b_d1 = 0#
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  Goto w2b_bfunc_92602863
  w2b_b3_12124278:
  w2b_i0 = w2b_l1
  w2b_i1 = 2146435071%
  If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_i0 = 1072693248%
  w2b_l2 = w2b_i0
  w2b_i0 = 4294966273%
  w2b_l3 = w2b_i0
  w2b_i0 = w2b_l1
  w2b_i1 = 1072693248%
  If w2b_i0 <> w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l1
    w2b_l2 = w2b_i0
    Goto w2b_b1_11993204
  End If
  w2b_j0 = w2b_l4
  w2b_i0 = I32WrapI64(w2b_j0)
  If w2b_i0 Then
    Goto w2b_b1_11993204
  End If
  w2b_d0 = 0#
  Goto w2b_bfunc_92602863
  w2b_b2_12058741:
  w2b_d0 = w2b_p0
  w2b_d1 = 18014398509481984#
  w2b_d0 *= w2b_d1
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l4 = w2b_j0
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l2 = w2b_i0
  w2b_i0 = 4294966219%
  w2b_l3 = w2b_i0
  w2b_b1_11993204:
  w2b_i0 = w2b_l2
  w2b_i1 = 614242%
  w2b_i0 += w2b_i1
  w2b_l1 = w2b_i0
  w2b_i1 = 20%
  w2b_i0 >>= (w2b_i1 AND 31)
  w2b_i1 = w2b_l3
  w2b_i0 += w2b_i1
  w2b_d0 = F64ConvertI32S(w2b_i0)
  w2b_l11 = w2b_d0
  w2b_d1 = 0.30102999566361177#
  w2b_d0 *= w2b_d1
  w2b_l7 = w2b_d0
  w2b_j0 = w2b_l4
  w2b_j1 = 4294967295&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_i1 = w2b_l1
  w2b_i2 = 1048575%
  w2b_i1 = w2b_i1 AND w2b_i2
  w2b_i2 = 1072079006%
  w2b_i1 += w2b_i2
  w2b_j1 = I64ExtendI32U(w2b_i1)
  w2b_j2 = 32&
  w2b_j1 <<= (w2b_j2 AND 63)
  w2b_j0 = w2b_j0 OR w2b_j1
  w2b_d0 = F64ReinterpretI64(w2b_j0)
  w2b_d1 = -1#
  w2b_d0 += w2b_d1
  w2b_l5 = w2b_d0
  w2b_d1 = w2b_l5
  w2b_d2 = 0.5#
  w2b_d1 *= w2b_d2
  w2b_d0 *= w2b_d1
  w2b_l6 = w2b_d0
  w2b_d0 = w2b_l5
  w2b_d1 = w2b_l5
  w2b_d2 = 2#
  w2b_d1 += w2b_d2
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_l8 = w2b_d0
  w2b_d1 = w2b_l8
  w2b_d0 *= w2b_d1
  w2b_l9 = w2b_d0
  w2b_d1 = w2b_l9
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d0 = w2b_l7
  w2b_d1 = w2b_l5
  w2b_d2 = w2b_l6
  w2b_d1 -= w2b_d2
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 18446744069414584320&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_l10 = w2b_d1
  w2b_d2 = 0.43429448187816888#
  w2b_d1 *= w2b_d2
  w2b_l12 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l13 = w2b_d0
  w2b_d1 = w2b_l12
  w2b_d2 = w2b_l7
  w2b_d3 = w2b_l13
  w2b_d2 -= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_l5
  w2b_d3 = w2b_l10
  w2b_d2 -= w2b_d3
  w2b_d3 = w2b_l6
  w2b_d2 -= w2b_d3
  w2b_d3 = w2b_l8
  w2b_d4 = w2b_l6
  w2b_d5 = w2b_p0
  w2b_d6 = w2b_p0
  w2b_d7 = w2b_p0
  w2b_d8 = 0.15313837699209373#
  w2b_d7 *= w2b_d8
  w2b_d8 = 0.22222198432149784#
  w2b_d7 += w2b_d8
  w2b_d6 *= w2b_d7
  w2b_d7 = 0.39999999999409419#
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d6 = w2b_l9
  w2b_d7 = w2b_p0
  w2b_d8 = w2b_p0
  w2b_d9 = w2b_p0
  w2b_d10 = 0.14798198605116586#
  w2b_d9 *= w2b_d10
  w2b_d10 = 0.1818357216161805#
  w2b_d9 += w2b_d10
  w2b_d8 *= w2b_d9
  w2b_d9 = 0.28571428743662391#
  w2b_d8 += w2b_d9
  w2b_d7 *= w2b_d8
  w2b_d8 = 0.66666666666667351#
  w2b_d7 += w2b_d8
  w2b_d6 *= w2b_d7
  w2b_d5 += w2b_d6
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_p0 = w2b_d2
  w2b_d3 = 0.43429448187816888#
  w2b_d2 *= w2b_d3
  w2b_d3 = w2b_l11
  w2b_d4 = 3.6942390771589308e-13#
  w2b_d3 *= w2b_d4
  w2b_d4 = w2b_p0
  w2b_d5 = w2b_l10
  w2b_d4 += w2b_d5
  w2b_d5 = 2.5082946711645275e-11#
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_b0_11927667:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_log2(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  
  w2b_l2 = 0
  w2b_l3 = 0
  
  w2b_l4 = 0
  w2b_l5 = 0
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  w2b_l9 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l2 = w2b_j0
  w2b_j1 = 4606800540372828160&
  w2b_j0 -= w2b_j1
  w2b_j1 = 581272283906047&
  w2b_i0 = I64LeU(w2b_j0, w2b_j1)
  If w2b_i0 Then
    w2b_i0 = 41936%
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_l5 = w2b_d0
    w2b_d1 = w2b_p0
    w2b_d2 = -1#
    w2b_d1 += w2b_d2
    w2b_p0 = w2b_d1
    w2b_j1 = I64ReinterpretF64(w2b_d1)
    w2b_j2 = 18446744069414584320&
    w2b_j1 = w2b_j1 AND w2b_j2
    w2b_d1 = F64ReinterpretI64(w2b_j1)
    w2b_l6 = w2b_d1
    w2b_d0 *= w2b_d1
    w2b_l7 = w2b_d0
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 *= w2b_d2
    w2b_l4 = w2b_d1
    w2b_i2 = 42000%
    w2b_d2 = F64Load(mem, w2b_i2)
    w2b_d3 = w2b_p0
    w2b_i4 = 42008%
    w2b_d4 = F64Load(mem, w2b_i4)
    w2b_d3 *= w2b_d4
    w2b_d2 += w2b_d3
    w2b_d1 *= w2b_d2
    w2b_l8 = w2b_d1
    w2b_d0 += w2b_d1
    w2b_l9 = w2b_d0
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_l6
    w2b_d1 -= w2b_d2
    w2b_d2 = w2b_l5
    w2b_d1 *= w2b_d2
    w2b_d2 = w2b_p0
    w2b_i3 = 41944%
    w2b_d3 = F64Load(mem, w2b_i3)
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_l8
    w2b_d3 = w2b_l7
    w2b_d4 = w2b_l9
    w2b_d3 -= w2b_d4
    w2b_d2 += w2b_d3
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_l4
    w2b_d3 = w2b_l4
    w2b_d2 *= w2b_d3
    w2b_l5 = w2b_d2
    w2b_i3 = 42016%
    w2b_d3 = F64Load(mem, w2b_i3)
    w2b_d4 = w2b_p0
    w2b_i5 = 42024%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d4 = w2b_l4
    w2b_i5 = 42032%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d6 = w2b_p0
    w2b_i7 = 42040%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d4 = w2b_l5
    w2b_i5 = 42048%
    w2b_d5 = F64Load(mem, w2b_i5)
    w2b_d6 = w2b_p0
    w2b_i7 = 42056%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d6 = w2b_l4
    w2b_i7 = 42064%
    w2b_d7 = F64Load(mem, w2b_i7)
    w2b_d8 = w2b_p0
    w2b_i9 = 42072%
    w2b_d9 = F64Load(mem, w2b_i9)
    w2b_d8 *= w2b_d9
    w2b_d7 += w2b_d8
    w2b_d6 *= w2b_d7
    w2b_d5 += w2b_d6
    w2b_d4 *= w2b_d5
    w2b_d3 += w2b_d4
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_d0 += w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l2
  w2b_j1 = 48&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l1 = w2b_i0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_i1 = 32736%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_j0 = w2b_l2
    w2b_j1 = 9223372036854775807&
    w2b_j0 = w2b_j0 AND w2b_j1
    If w2b_j0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = -DoubleInf()
      Goto w2b_bfunc_92602863
    End If
    w2b_j0 = w2b_l2
    w2b_j1 = 9218868437227405312&
    If w2b_j0 = w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_i0 = w2b_l1
    w2b_i1 = 32768%
    w2b_i0 = w2b_i0 AND w2b_i1
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 0%
    w2b_i2 = w2b_l1
    w2b_i3 = 32752%
    w2b_i2 = w2b_i2 AND w2b_i3
    w2b_i3 = 32752%
    If w2b_i2 <> w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = w2b_p0
      w2b_d0 -= w2b_d1
      w2b_p0 = w2b_d0
      w2b_d1 = w2b_p0
      w2b_d0 = F64Div(w2b_d0, w2b_d1)
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 4503599627370496#
    w2b_d0 *= w2b_d1
    w2b_j0 = I64ReinterpretF64(w2b_d0)
    w2b_j1 = 234187180623265792&
    w2b_j0 -= w2b_j1
    w2b_l2 = w2b_j0
  End If
  w2b_j0 = w2b_l2
  w2b_j1 = 4604367669032910848&
  w2b_j0 -= w2b_j1
  w2b_l3 = w2b_j0
  w2b_j1 = 46&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 63%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_i1 = 4%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_l1 = w2b_i0
  w2b_i1 = 42088%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_j1 = w2b_l3
  w2b_j2 = 52&
  w2b_j2 = w2b_j2 And &H3F
If w2b_j1 < 0 And w2b_j2 <> 0 Then
    w2b_j1 = (w2b_j1 >> w2b_j2) Or (&HFFFFFFFFFFFFFFFF << (64& - w2b_j2))
Else
    w2b_j1 = w2b_j1 >> w2b_j2
End If
w2b_i1 = I32WrapI64(w2b_j1)
  w2b_d1 = F64ConvertI32S(w2b_i1)
  w2b_d0 += w2b_d1
  w2b_l4 = w2b_d0
  w2b_i1 = 41936%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_l5 = w2b_d1
  w2b_i2 = w2b_l1
  w2b_i3 = 42080%
  w2b_i2 += w2b_i3
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_j3 = w2b_l2
  w2b_j4 = w2b_l3
  w2b_j5 = 18442240474082181120&
  w2b_j4 = w2b_j4 AND w2b_j5
  w2b_j3 -= w2b_j4
  w2b_d3 = F64ReinterpretI64(w2b_j3)
  w2b_i4 = w2b_l1
  w2b_i5 = 43104%
  w2b_i4 += w2b_i5
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 -= w2b_d4
  w2b_i4 = w2b_l1
  w2b_i5 = 43112%
  w2b_i4 += w2b_i5
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 -= w2b_d4
  w2b_d2 *= w2b_d3
  w2b_p0 = w2b_d2
  w2b_j2 = I64ReinterpretF64(w2b_d2)
  w2b_j3 = 18446744069414584320&
  w2b_j2 = w2b_j2 AND w2b_j3
  w2b_d2 = F64ReinterpretI64(w2b_j2)
  w2b_l6 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_l7 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l8 = w2b_d0
  w2b_i1 = 41944%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_d2 = w2b_p0
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_l5
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_l6
  w2b_d3 -= w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_l7
  w2b_d3 = w2b_l4
  w2b_d4 = w2b_l8
  w2b_d3 -= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d2 *= w2b_d3
  w2b_l4 = w2b_d2
  w2b_i3 = 41952%
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_d4 = w2b_p0
  w2b_i5 = 41960%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d4 = w2b_l4
  w2b_i5 = 41968%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d6 = w2b_p0
  w2b_i7 = 41976%
  w2b_d7 = F64Load(mem, w2b_i7)
  w2b_d6 *= w2b_d7
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d4 = w2b_l4
  w2b_d5 = w2b_l4
  w2b_d4 *= w2b_d5
  w2b_i5 = 41984%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d6 = w2b_p0
  w2b_i7 = 41992%
  w2b_d7 = F64Load(mem, w2b_i7)
  w2b_d6 *= w2b_d7
  w2b_d5 += w2b_d6
  w2b_d4 *= w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 *= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_b1_11993204:
  w2b_d0 = w2b_p0
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_pow(w2b_p0 As Double, w2b_p1 As Double) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  w2b_l3 = 0
  w2b_l4 = 0
  w2b_l5 = 0
  
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  
  w2b_l9 = 0
  w2b_l10 = 0
  w2b_l11 = 0
  w2b_l12 = 0
  w2b_l13 = 0
  w2b_l14 = 0
  w2b_l15 = 0
  w2b_l16 = 0
  w2b_l17 = 0
  w2b_l18 = 0
  
  w2b_d0 = w2b_p1
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l7 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l3 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l6 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l5 = w2b_i0
  w2b_i1 = 1%
  w2b_i0 -= w2b_i1
  w2b_i1 = 2045%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = 2047%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_i1 = 958%
    w2b_i0 -= w2b_i1
    w2b_i1 = 128%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b2_12058741
    End If
  End If
  w2b_j0 = w2b_l7
  w2b_j1 = 1&
  w2b_j0 <<= (w2b_j1 AND 63)
  w2b_l8 = w2b_j0
  w2b_j1 = 1&
  w2b_j0 -= w2b_j1
  w2b_j1 = 18437736874454810623&
  w2b_i0 = I64GeU(w2b_j0, w2b_j1)
  If w2b_i0 Then
    w2b_d0 = 1#
    w2b_l9 = w2b_d0
    w2b_j0 = w2b_l6
    w2b_j1 = 4607182418800017408&
    If w2b_j0 = w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_j0 = w2b_l8
    If w2b_j0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_j0 = w2b_l6
    w2b_j1 = 1&
    w2b_j0 <<= (w2b_j1 AND 63)
    w2b_l6 = w2b_j0
    w2b_j1 = 18437736874454810624&
    w2b_i0 = I64LeU(w2b_j0, w2b_j1)
    w2b_i1 = 0%
    w2b_j2 = w2b_l8
    w2b_j3 = 18437736874454810625&
    w2b_i2 = I64LtU(w2b_j2, w2b_j3)
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    If w2b_i0 = 0% Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_d1 = w2b_p1
      w2b_d0 += w2b_d1
      Goto w2b_bfunc_92602863
    End If
    w2b_j0 = w2b_l6
    w2b_j1 = 9214364837600034816&
    If w2b_j0 = w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_d0 = 0#
    w2b_d1 = w2b_p1
    w2b_d2 = w2b_p1
    w2b_d1 *= w2b_d2
    w2b_j2 = w2b_l7
    w2b_j3 = 63&
    w2b_j2 >>= (w2b_j3 AND 63)
    w2b_i2 = I32WrapI64(w2b_j2)
    w2b_i3 = 1%
    w2b_i2 = (w2b_i2 Or w2b_i3) And Not (w2b_i2 And w2b_i3)
w2b_j3 = w2b_l6
    w2b_j4 = 9214364837600034816&
    w2b_i3 = I64LtU(w2b_j3, w2b_j4)
    If w2b_i2 = w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_j0 = w2b_l6
  w2b_j1 = 1&
  w2b_j0 <<= (w2b_j1 AND 63)
  w2b_j1 = 1&
  w2b_j0 -= w2b_j1
  w2b_j1 = 18437736874454810623&
  w2b_i0 = I64GeU(w2b_j0, w2b_j1)
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d0 *= w2b_d1
    w2b_l9 = w2b_d0
    w2b_j0 = w2b_l6
    w2b_j1 = 18446744073709551615&
    If w2b_j0 > w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b7_12386426
    End If
    w2b_i0 = w2b_l3
    w2b_i1 = 2047%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_l4 = w2b_i0
    w2b_i1 = 1023%
    w2b_i0 -= w2b_i1
    w2b_i1 = 52%
    If (w2b_i0 And &HFFFFFFFF&) > (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b7_12386426
    End If
    w2b_d0 = w2b_l9
    w2b_d1 = w2b_l9
    w2b_d2 = w2b_l9
    w2b_d2 = -(w2b_d2)
    w2b_j3 = 1&
    w2b_i4 = 1075%
    w2b_i5 = w2b_l4
    w2b_i4 -= w2b_i5
    w2b_j4 = I64ExtendI32U(w2b_i4)
    w2b_j3 <<= (w2b_j4 AND 63)
    w2b_l6 = w2b_j3
    w2b_j4 = 1&
    w2b_j3 -= w2b_j4
    w2b_j4 = w2b_l7
    w2b_j3 = w2b_j3 AND w2b_j4
    w2b_j4 = 0&
    If w2b_j3 <> w2b_j4 Then
      w2b_i3 = 1
    Else
      w2b_i3 = 0
    End If
    If w2b_i3 = 0 Then
      w2b_d1 = w2b_d2
    End If
    w2b_j2 = w2b_l6
    w2b_j3 = w2b_l7
    w2b_j2 = w2b_j2 AND w2b_j3
    If w2b_j2 = 0% Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    w2b_l9 = w2b_d0
    w2b_b7_12386426:
    w2b_j0 = w2b_l7
    w2b_j1 = 18446744073709551615&
    If w2b_j0 > w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_d0 = 1#
    w2b_d1 = w2b_l9
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 2047%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_j0 = w2b_l6
  w2b_j1 = 18446744073709551615&
  If w2b_j0 <= w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1023%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b0_11927667
    End If
    w2b_i0 = w2b_l2
    w2b_i1 = 1075%
    If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_j0 = 1&
      w2b_i1 = 1075%
      w2b_i2 = w2b_l2
      w2b_i1 -= w2b_i2
      w2b_j1 = I64ExtendI32U(w2b_i1)
      w2b_j0 <<= (w2b_j1 AND 63)
      w2b_l8 = w2b_j0
      w2b_j1 = 1&
      w2b_j0 -= w2b_j1
      w2b_j1 = w2b_l7
      w2b_j0 = w2b_j0 AND w2b_j1
      w2b_j1 = 0&
      If w2b_j0 <> w2b_j1 Then
        w2b_i0 = 1
      Else
        w2b_i0 = 0
      End If
      If w2b_i0 Then
        Goto w2b_b0_11927667
      End If
      w2b_i0 = 262144%
      w2b_j1 = w2b_l7
      w2b_j2 = w2b_l8
      w2b_j1 = w2b_j1 AND w2b_j2
      w2b_j2 = 0&
      If w2b_j1 <> w2b_j2 Then
        w2b_i1 = 1
      Else
        w2b_i1 = 0
      End If
      If w2b_i1 Then
        Goto w2b_b9_12517500
      End If
    End If
    w2b_i0 = 0%
    w2b_b9_12517500:
    w2b_l4 = w2b_i0
    w2b_i0 = w2b_l5
    w2b_i1 = 2047%
    w2b_i0 = w2b_i0 AND w2b_i1
    w2b_l5 = w2b_i0
    w2b_j0 = w2b_l6
    w2b_j1 = 9223372036854775807&
    w2b_j0 = w2b_j0 AND w2b_j1
    w2b_l6 = w2b_j0
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 958%
  w2b_i0 -= w2b_i1
  w2b_i1 = 128%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 1#
    w2b_l9 = w2b_d0
    w2b_i0 = w2b_l2
    w2b_i1 = 958%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_j0 = w2b_l6
    w2b_j1 = 4607182418800017408&
    If w2b_j0 = w2b_j1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b1_11993204
    End If
    w2b_i0 = w2b_l3
    w2b_i1 = 2048%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_j1 = w2b_l6
    w2b_j2 = 4607182418800017409&
    w2b_i1 = I64LtU(w2b_j1, w2b_j2)
    If w2b_i0 <> w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = DoubleInf()
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = 0#
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l5
  If w2b_i0 Then
    Goto w2b_b2_12058741
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = 4503599627370496#
  w2b_d0 *= w2b_d1
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_j1 = 9223372036854775807&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_j1 = 234187180623265792&
  w2b_j0 -= w2b_j1
  w2b_l6 = w2b_j0
  w2b_b2_12058741:
  w2b_j0 = w2b_l6
  w2b_j1 = 4604531861337669632&
  w2b_j0 -= w2b_j1
  w2b_l8 = w2b_j0
  w2b_j1 = 45&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 127%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_i1 = 5%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_l2 = w2b_i0
  w2b_j0 = w2b_l6
  w2b_j1 = w2b_l8
  w2b_j2 = 18442240474082181120&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_j0 -= w2b_j1
  w2b_l6 = w2b_j0
  w2b_j1 = 2147483648&
  w2b_j0 += w2b_j1
  w2b_j1 = 18446744069414584320&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_d0 = F64ReinterpretI64(w2b_j0)
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l2
  w2b_i1 = 48456%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_i1 = 48368%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_j2 = w2b_l8
  w2b_j3 = 52&
  w2b_j3 = w2b_j3 And &H3F
If w2b_j2 < 0 And w2b_j3 <> 0 Then
    w2b_j2 = (w2b_j2 >> w2b_j3) Or (&HFFFFFFFFFFFFFFFF << (64& - w2b_j3))
Else
    w2b_j2 = w2b_j2 >> w2b_j3
End If
w2b_i2 = I32WrapI64(w2b_j2)
  w2b_d2 = F64ConvertI32S(w2b_i2)
  w2b_l12 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_l13 = w2b_d0
  w2b_i1 = w2b_l2
  w2b_i2 = 48440%
  w2b_i1 += w2b_i2
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_l9 = w2b_d1
  w2b_j2 = w2b_l6
  w2b_d2 = F64ReinterpretI64(w2b_j2)
  w2b_d3 = w2b_p0
  w2b_d2 -= w2b_d3
  w2b_d1 *= w2b_d2
  w2b_l14 = w2b_d1
  w2b_d2 = w2b_l9
  w2b_d3 = w2b_p0
  w2b_d2 *= w2b_d3
  w2b_d3 = -1#
  w2b_d2 += w2b_d3
  w2b_l9 = w2b_d2
  w2b_d1 += w2b_d2
  w2b_p0 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l11 = w2b_d0
  w2b_d1 = w2b_l9
  w2b_d2 = w2b_l9
  w2b_i3 = 48384%
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_l10 = w2b_d3
  w2b_d2 *= w2b_d3
  w2b_l15 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_l16 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l9 = w2b_d0
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_l10
  w2b_d2 = w2b_p0
  w2b_d1 *= w2b_d2
  w2b_l17 = w2b_d1
  w2b_d0 *= w2b_d1
  w2b_l10 = w2b_d0
  w2b_j0 = w2b_l7
  w2b_j1 = 18446744073575333888&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_d0 = F64ReinterpretI64(w2b_j0)
  w2b_l18 = w2b_d0
  w2b_d1 = w2b_l9
  w2b_d2 = w2b_l16
  w2b_d3 = w2b_l11
  w2b_d4 = w2b_l9
  w2b_d3 -= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d3 = w2b_l14
  w2b_d4 = w2b_l15
  w2b_d5 = w2b_l17
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_i4 = w2b_l2
  w2b_i5 = 48464%
  w2b_i4 += w2b_i5
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_i5 = 48376%
  w2b_d5 = F64Load(mem, w2b_i5)
  w2b_d6 = w2b_l12
  w2b_d5 *= w2b_d6
  w2b_d4 += w2b_d5
  w2b_d5 = w2b_p0
  w2b_d6 = w2b_l13
  w2b_d7 = w2b_l11
  w2b_d6 -= w2b_d7
  w2b_d5 += w2b_d6
  w2b_d4 += w2b_d5
  w2b_d3 += w2b_d4
  w2b_d2 += w2b_d3
  w2b_d3 = w2b_p0
  w2b_d4 = w2b_l10
  w2b_d3 *= w2b_d4
  w2b_i4 = 48392%
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d5 = w2b_p0
  w2b_i6 = 48400%
  w2b_d6 = F64Load(mem, w2b_i6)
  w2b_d5 *= w2b_d6
  w2b_d4 += w2b_d5
  w2b_d5 = w2b_l10
  w2b_i6 = 48408%
  w2b_d6 = F64Load(mem, w2b_i6)
  w2b_d7 = w2b_p0
  w2b_i8 = 48416%
  w2b_d8 = F64Load(mem, w2b_i8)
  w2b_d7 *= w2b_d8
  w2b_d6 += w2b_d7
  w2b_d7 = w2b_l10
  w2b_i8 = 48424%
  w2b_d8 = F64Load(mem, w2b_i8)
  w2b_d9 = w2b_p0
  w2b_i10 = 48432%
  w2b_d10 = F64Load(mem, w2b_i10)
  w2b_d9 *= w2b_d10
  w2b_d8 += w2b_d9
  w2b_d7 *= w2b_d8
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_l12 = w2b_d2
  w2b_d1 += w2b_d2
  w2b_p0 = w2b_d1
  w2b_j1 = I64ReinterpretF64(w2b_d1)
  w2b_j2 = 18446744073575333888&
  w2b_j1 = w2b_j1 AND w2b_j2
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_l10 = w2b_d1
  w2b_d0 *= w2b_d1
  w2b_l11 = w2b_d0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l6 = w2b_j0
  w2b_j1 = 52&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2047%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 969%
  w2b_i0 -= w2b_i1
  w2b_l3 = w2b_i0
  w2b_i1 = 63%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b13_22937767
  End If
  w2b_i0 = w2b_l3
  w2b_i1 = 4294967295%
  If w2b_i0 <= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = -1#
    w2b_d1 = 1#
    w2b_i2 = w2b_l4
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 1033%
  If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  w2b_i1 = 0%
  w2b_l2 = w2b_i1
  If w2b_i0 Then
    Goto w2b_b13_22937767
  End If
  w2b_j0 = w2b_l6
  w2b_j1 = 18446744073709551615&
  If w2b_j0 <= w2b_j1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = -1.2882297539194267e-231#
    w2b_d1 = 1.2882297539194267e-231#
    w2b_i2 = w2b_l4
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    w2b_d1 = 1.2882297539194267e-231#
    w2b_d0 *= w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = -3.1050361846014179e+231#
  w2b_d1 = 3.1050361846014179e+231#
  w2b_i2 = w2b_l4
  If w2b_i2 = 0 Then
    w2b_d0 = w2b_d1
  End If
  w2b_d1 = 3.1050361846014179e+231#
  w2b_d0 *= w2b_d1
  Goto w2b_bfunc_92602863
  w2b_b13_22937767:
  w2b_d0 = w2b_l11
  w2b_i1 = 39776%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_d0 *= w2b_d1
  w2b_i1 = 39784%
  w2b_d1 = F64Load(mem, w2b_i1)
  w2b_l13 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_l14 = w2b_d0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l6 = w2b_j0
  w2b_d0 = w2b_p1
  w2b_d1 = w2b_l18
  w2b_d0 -= w2b_d1
  w2b_d1 = w2b_l10
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_l12
  w2b_d2 = w2b_l9
  w2b_d3 = w2b_p0
  w2b_d2 -= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_l10
  w2b_d2 -= w2b_d3
  w2b_d1 += w2b_d2
  w2b_d2 = w2b_p1
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_l14
  w2b_d2 = w2b_l13
  w2b_d1 -= w2b_d2
  w2b_p0 = w2b_d1
  w2b_i2 = 39800%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_l11
  w2b_i3 = 39792%
  w2b_d3 = F64Load(mem, w2b_i3)
  w2b_d4 = w2b_p0
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 *= w2b_d1
  w2b_p1 = w2b_d0
  w2b_j0 = w2b_l6
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_l3 = w2b_i0
  w2b_i1 = 4%
  w2b_i0 <<= (w2b_i1 AND 31)
  w2b_i1 = 2032%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l5 = w2b_i0
  w2b_i1 = 39888%
  w2b_i0 += w2b_i1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_p1
  w2b_i2 = 39808%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d3 = w2b_p0
  w2b_i4 = 39816%
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_d1 = w2b_p1
  w2b_d2 = w2b_p1
  w2b_d1 *= w2b_d2
  w2b_i2 = 39824%
  w2b_d2 = F64Load(mem, w2b_i2)
  w2b_d3 = w2b_p0
  w2b_i4 = 39832%
  w2b_d4 = F64Load(mem, w2b_i4)
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 *= w2b_d2
  w2b_d0 += w2b_d1
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_l5
  w2b_i1 = 8%
  w2b_i0 = w2b_i0 OR w2b_i1
  w2b_i1 = 39888%
  w2b_i0 += w2b_i1
  w2b_j0 = I64Load(mem, w2b_i0)
  w2b_i1 = w2b_l4
  w2b_j1 = I64ExtendI32U(w2b_i1)
  w2b_j2 = w2b_l6
  w2b_j1 += w2b_j2
  w2b_j2 = 45&
  w2b_j1 <<= (w2b_j2 AND 63)
  w2b_j0 += w2b_j1
  w2b_l6 = w2b_j0
  w2b_i0 = w2b_l2
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l3
    w2b_i1 = 0%
    If w2b_i0 >= w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_d0 = w2b_p0
      w2b_j1 = w2b_l6
      w2b_j2 = 4544132024016830464&
      w2b_j1 -= w2b_j2
      w2b_d1 = F64ReinterpretI64(w2b_j1)
      w2b_p0 = w2b_d1
      w2b_d0 *= w2b_d1
      w2b_d1 = w2b_p0
      w2b_d0 += w2b_d1
      w2b_d1 = 5.4861240687936887e+303#
      w2b_d0 *= w2b_d1
      Goto w2b_bfunc_92602863
    End If
    w2b_d0 = w2b_p0
    w2b_j1 = w2b_l6
    w2b_j2 = 4602678819172646912&
    w2b_j1 += w2b_j2
    w2b_l6 = w2b_j1
    w2b_d1 = F64ReinterpretI64(w2b_j1)
    w2b_p1 = w2b_d1
    w2b_d0 *= w2b_d1
    w2b_l10 = w2b_d0
    w2b_d1 = w2b_p1
    w2b_d0 += w2b_d1
    w2b_p0 = w2b_d0
    w2b_d0 = F64Abs(w2b_d0)
    w2b_d1 = 1#
    If w2b_d0 < w2b_d1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    w2b_i1 = 1%
    w2b_i0 = (w2b_i0 Or w2b_i1) And Not (w2b_i0 And w2b_i1)
If w2b_i0 Then
      w2b_d0 = w2b_p0
    Else
      w2b_j0 = w2b_l6
      w2b_j1 = 9223372036854775808&
      w2b_j0 = w2b_j0 AND w2b_j1
      w2b_d0 = F64ReinterpretI64(w2b_j0)
      w2b_d1 = w2b_p0
      w2b_d2 = -1#
      w2b_d3 = 1#
      w2b_d4 = w2b_p0
      w2b_d5 = 0#
      If w2b_d4 < w2b_d5 Then
        w2b_i4 = 1
      Else
        w2b_i4 = 0
      End If
      If w2b_i4 = 0 Then
        w2b_d2 = w2b_d3
      End If
      w2b_l9 = w2b_d2
      w2b_d1 += w2b_d2
      w2b_l11 = w2b_d1
      w2b_d2 = w2b_l10
      w2b_d3 = w2b_p1
      w2b_d4 = w2b_p0
      w2b_d3 -= w2b_d4
      w2b_d2 += w2b_d3
      w2b_d3 = w2b_p0
      w2b_d4 = w2b_l9
      w2b_d5 = w2b_l11
      w2b_d4 -= w2b_d5
      w2b_d3 += w2b_d4
      w2b_d2 += w2b_d3
      w2b_d1 += w2b_d2
      w2b_d2 = w2b_l9
      w2b_d1 -= w2b_d2
      w2b_p0 = w2b_d1
      w2b_d2 = w2b_p0
      w2b_d3 = 0#
      If w2b_d2 = w2b_d3 Then
        w2b_i2 = 1
      Else
        w2b_i2 = 0
      End If
      If w2b_i2 = 0 Then
        w2b_d0 = w2b_d1
      End If
    End If
    w2b_d1 = 2.2250738585072014e-308#
    w2b_d0 *= w2b_d1
    Goto w2b_bfunc_92602863
  End If
  w2b_d0 = w2b_p0
  w2b_j1 = w2b_l6
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_p0 = w2b_d1
  w2b_d0 *= w2b_d1
  w2b_d1 = w2b_p0
  w2b_d0 += w2b_d1
  w2b_l9 = w2b_d0
  w2b_b1_11993204:
  w2b_d0 = w2b_l9
  Goto w2b_bfunc_92602863
  w2b_b0_11927667:
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d0 -= w2b_d1
  w2b_p0 = w2b_d0
  w2b_d1 = w2b_p0
  w2b_d0 = F64Div(w2b_d0, w2b_d1)
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_scalbn(w2b_p0 As Double, w2b_p1 As Integer) As Double
  mem = m.w2b_memory
  w2b_l2 = 0
  
  w2b_i0 = w2b_p1
  w2b_i1 = 1024%
  If w2b_i0 >= w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = 8.9884656743115795e+307#
    w2b_d0 *= w2b_d1
    w2b_p0 = w2b_d0
    w2b_i0 = w2b_p1
    w2b_i1 = 1023%
    w2b_i0 -= w2b_i1
    w2b_l2 = w2b_i0
    w2b_i1 = 1024%
    If w2b_i0 < w2b_i1 Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      w2b_i0 = w2b_l2
      w2b_p1 = w2b_i0
      Goto w2b_b0_11927667
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 8.9884656743115795e+307#
    w2b_d0 *= w2b_d1
    w2b_p0 = w2b_d0
    w2b_i0 = w2b_p1
    w2b_i1 = 3069%
    w2b_i2 = w2b_p1
    w2b_i3 = 3069%
    If w2b_i2 < w2b_i3 Then
      w2b_i2 = 1
    Else
      w2b_i2 = 0
    End If
    If w2b_i2 = 0 Then
      w2b_i0 = w2b_i1
    End If
    w2b_i1 = 2046%
    w2b_i0 -= w2b_i1
    w2b_p1 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_p1
  w2b_i1 = 4294966273%
  If w2b_i0 > w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = 2.0041683600089728e-292#
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_p1
  w2b_i1 = 969%
  w2b_i0 += w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 4294966273%
  If w2b_i0 > w2b_i1 Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_p1 = w2b_i0
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = 2.0041683600089728e-292#
  w2b_d0 *= w2b_d1
  w2b_p0 = w2b_d0
  w2b_i0 = w2b_p1
  w2b_i1 = 4294964336%
  w2b_i2 = w2b_p1
  w2b_i3 = 4294964336%
  If w2b_i2 > w2b_i3 Then
    w2b_i2 = 1
  Else
    w2b_i2 = 0
  End If
  If w2b_i2 = 0 Then
    w2b_i0 = w2b_i1
  End If
  w2b_i1 = 1938%
  w2b_i0 += w2b_i1
  w2b_p1 = w2b_i0
  w2b_b0_11927667:
  w2b_d0 = w2b_p0
  w2b_i1 = w2b_p1
  w2b_i2 = 1023%
  w2b_i1 += w2b_i2
  w2b_j1 = I64ExtendI32U(w2b_i1)
  w2b_j2 = 52&
  w2b_j1 <<= (w2b_j2 AND 63)
  w2b_d1 = F64ReinterpretI64(w2b_j1)
  w2b_d0 *= w2b_d1
  Return w2b_d0
End Function
Function w2b_sin(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_l1 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 1072243195%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1045430272%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b0_11927667
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 0#
    w2b_i2 = 0%
    w2b_d0 = w2b___sin(w2b_d0, w2b_d1, w2b_i2)
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 2146435072%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d0 -= w2b_d1
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_i1 = w2b_l1
  w2b_i0 = w2b___rem_pio2(w2b_d0, w2b_i1)
  w2b_i1 = 3%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 2%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1%
    w2b_i0 -= w2b_i1
    switch = w2b_i0
    If switch = 1 Then
      Goto w2b_b4_12189815
    End If
    If switch = 0 Then
      Goto w2b_b5_12255352
    End If
    Goto w2b_b6_12320889
    w2b_b6_12320889:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_i2 = 1%
    w2b_d0 = w2b___sin(w2b_d0, w2b_d1, w2b_i2)
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
    w2b_b5_12255352:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_d0 = w2b___cos(w2b_d0, w2b_d1)
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
    w2b_b4_12189815:
    w2b_i0 = w2b_l1
    w2b_d0 = F64Load(mem, w2b_i0)
    w2b_i1 = w2b_l1
    w2b_d1 = F64Load(mem, w2b_i1 + 8)
    w2b_i2 = 1%
    w2b_d0 = w2b___sin(w2b_d0, w2b_d1, w2b_i2)
    w2b_d0 = -(w2b_d0)
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_i1 = w2b_l1
  w2b_d1 = F64Load(mem, w2b_i1 + 8)
  w2b_d0 = w2b___cos(w2b_d0, w2b_d1)
  w2b_d0 = -(w2b_d0)
  w2b_p0 = w2b_d0
  w2b_b0_11927667:
  w2b_i0 = w2b_l1
  w2b_i1 = 16%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  Return w2b_d0
End Function
Function w2b___tan(w2b_p0 As Double, w2b_p1 As Double, w2b_p2 As Integer) As Double
  mem = m.w2b_memory
  w2b_l3 = 0
  w2b_l4 = 0
  
  w2b_l5 = 0
  
  w2b_l6 = 0
  w2b_l7 = 0
  w2b_l8 = 0
  
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_l5 = w2b_j0
  w2b_j1 = 9223372002495037440&
  w2b_j0 = w2b_j0 AND w2b_j1
  w2b_j1 = 4604249089280835585&
  w2b_i0 = I64LtU(w2b_j0, w2b_j1)
  w2b_l4 = w2b_i0
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = 0.78539816339744828#
    w2b_d1 = w2b_p0
    w2b_d1 = -(w2b_d1)
    w2b_d2 = w2b_p0
    w2b_j3 = w2b_l5
    w2b_j4 = 63&
    w2b_j3 >>= (w2b_j4 AND 63)
    w2b_i3 = I32WrapI64(w2b_j3)
    w2b_l3 = w2b_i3
    If w2b_i3 = 0 Then
      w2b_d1 = w2b_d2
    End If
    w2b_d0 -= w2b_d1
    w2b_d1 = 3.061616997868383e-17#
    w2b_d2 = w2b_p1
    w2b_d2 = -(w2b_d2)
    w2b_d3 = w2b_p1
    w2b_i4 = w2b_l3
    If w2b_i4 = 0 Then
      w2b_d2 = w2b_d3
    End If
    w2b_d1 -= w2b_d2
    w2b_d0 += w2b_d1
    w2b_p0 = w2b_d0
    w2b_d0 = 0#
    w2b_p1 = w2b_d0
  End If
  w2b_d0 = w2b_p0
  w2b_d1 = w2b_p0
  w2b_d2 = w2b_p0
  w2b_d3 = w2b_p0
  w2b_d2 *= w2b_d3
  w2b_l6 = w2b_d2
  w2b_d1 *= w2b_d2
  w2b_l7 = w2b_d1
  w2b_d2 = 0.33333333333333409#
  w2b_d1 *= w2b_d2
  w2b_d2 = w2b_p1
  w2b_d3 = w2b_l6
  w2b_d4 = w2b_p1
  w2b_d5 = w2b_l7
  w2b_d6 = w2b_l6
  w2b_d7 = w2b_l6
  w2b_d6 *= w2b_d7
  w2b_p1 = w2b_d6
  w2b_d7 = w2b_p1
  w2b_d8 = w2b_p1
  w2b_d9 = w2b_p1
  w2b_d10 = w2b_p1
  w2b_d11 = -1.8558637485527546e-05#
  w2b_d10 *= w2b_d11
  w2b_d11 = 7.8179444293955709e-05#
  w2b_d10 += w2b_d11
  w2b_d9 *= w2b_d10
  w2b_d10 = 0.0005880412408202641#
  w2b_d9 += w2b_d10
  w2b_d8 *= w2b_d9
  w2b_d9 = 0.0035920791075913124#
  w2b_d8 += w2b_d9
  w2b_d7 *= w2b_d8
  w2b_d8 = 0.021869488294859542#
  w2b_d7 += w2b_d8
  w2b_d6 *= w2b_d7
  w2b_d7 = 0.13333333333320124#
  w2b_d6 += w2b_d7
  w2b_d7 = w2b_l6
  w2b_d8 = w2b_p1
  w2b_d9 = w2b_p1
  w2b_d10 = w2b_p1
  w2b_d11 = w2b_p1
  w2b_d12 = w2b_p1
  w2b_d13 = 2.5907305186363371e-05#
  w2b_d12 *= w2b_d13
  w2b_d13 = 7.1407249138260819e-05#
  w2b_d12 += w2b_d13
  w2b_d11 *= w2b_d12
  w2b_d12 = 0.00024646313481846991#
  w2b_d11 += w2b_d12
  w2b_d10 *= w2b_d11
  w2b_d11 = 0.0014562094543252903#
  w2b_d10 += w2b_d11
  w2b_d9 *= w2b_d10
  w2b_d10 = 0.0088632398235993001#
  w2b_d9 += w2b_d10
  w2b_d8 *= w2b_d9
  w2b_d9 = 0.053968253976226052#
  w2b_d8 += w2b_d9
  w2b_d7 *= w2b_d8
  w2b_d6 += w2b_d7
  w2b_d5 *= w2b_d6
  w2b_d4 += w2b_d5
  w2b_d3 *= w2b_d4
  w2b_d2 += w2b_d3
  w2b_d1 += w2b_d2
  w2b_l7 = w2b_d1
  w2b_d0 += w2b_d1
  w2b_p1 = w2b_d0
  w2b_i0 = w2b_l4
  If w2b_i0 = 0% Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_l7
    w2b_d2 = w2b_p1
    w2b_d3 = w2b_p1
    w2b_d2 *= w2b_d3
    w2b_d3 = w2b_p1
    w2b_i4 = 1%
    w2b_i5 = w2b_p2
    w2b_i6 = 1%
    w2b_i5 <<= (w2b_i6 AND 31)
    w2b_i4 -= w2b_i5
    w2b_d4 = F64ConvertI32S(w2b_i4)
    w2b_p1 = w2b_d4
    w2b_d3 += w2b_d4
    w2b_d2 = F64Div(w2b_d2, w2b_d3)
    w2b_d1 -= w2b_d2
    w2b_d0 += w2b_d1
    w2b_p0 = w2b_d0
    w2b_d0 = w2b_p1
    w2b_d1 = w2b_p0
    w2b_d2 = w2b_p0
    w2b_d1 += w2b_d2
    w2b_d0 -= w2b_d1
    w2b_p0 = w2b_d0
    w2b_d0 = -(w2b_d0)
    w2b_d1 = w2b_p0
    w2b_i2 = w2b_l3
    If w2b_i2 = 0 Then
      w2b_d0 = w2b_d1
    End If
    Goto w2b_bfunc_92602863
  End If
  w2b_i0 = w2b_p2
  If w2b_i0 Then
    w2b_d0 = -1#
    w2b_d1 = w2b_p1
    w2b_d0 = F64Div(w2b_d0, w2b_d1)
    w2b_l8 = w2b_d0
    w2b_j0 = I64ReinterpretF64(w2b_d0)
    w2b_j1 = 18446744069414584320&
    w2b_j0 = w2b_j0 AND w2b_j1
    w2b_d0 = F64ReinterpretI64(w2b_j0)
    w2b_l6 = w2b_d0
    w2b_d0 = w2b_l8
    w2b_d1 = w2b_p1
    w2b_j1 = I64ReinterpretF64(w2b_d1)
    w2b_j2 = 18446744069414584320&
    w2b_j1 = w2b_j1 AND w2b_j2
    w2b_d1 = F64ReinterpretI64(w2b_j1)
    w2b_p1 = w2b_d1
    w2b_d2 = w2b_l6
    w2b_d1 *= w2b_d2
    w2b_d2 = 1#
    w2b_d1 += w2b_d2
    w2b_d2 = w2b_l7
    w2b_d3 = w2b_p1
    w2b_d4 = w2b_p0
    w2b_d3 -= w2b_d4
    w2b_d2 -= w2b_d3
    w2b_d3 = w2b_l6
    w2b_d2 *= w2b_d3
    w2b_d1 += w2b_d2
    w2b_d0 *= w2b_d1
    w2b_d1 = w2b_l6
    w2b_d0 += w2b_d1
  Else
    w2b_d0 = w2b_p1
  End If
  w2b_bfunc_92602863:
  Return w2b_d0
End Function
Function w2b_tan(w2b_p0 As Double) As Double
  mem = m.w2b_memory
  w2b_l1 = 0
  w2b_l2 = 0
  
  w2b_i0 = m.w2b_g0
  w2b_i1 = 16%
  w2b_i0 -= w2b_i1
  w2b_l1 = w2b_i0
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  w2b_j0 = I64ReinterpretF64(w2b_d0)
  w2b_j1 = 32&
  w2b_j0 >>= (w2b_j1 AND 63)
  w2b_i0 = I32WrapI64(w2b_j0)
  w2b_i1 = 2147483647%
  w2b_i0 = w2b_i0 AND w2b_i1
  w2b_l2 = w2b_i0
  w2b_i1 = 1072243195%
  If (w2b_i0 And &HFFFFFFFF&) <= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_i0 = w2b_l2
    w2b_i1 = 1044381696%
    If (w2b_i0 And &HFFFFFFFF&) < (w2b_i1 And &HFFFFFFFF&) Then
      w2b_i0 = 1
    Else
      w2b_i0 = 0
    End If
    If w2b_i0 Then
      Goto w2b_b0_11927667
    End If
    w2b_d0 = w2b_p0
    w2b_d1 = 0#
    w2b_i2 = 0%
    w2b_d0 = w2b___tan(w2b_d0, w2b_d1, w2b_i2)
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
  End If
  w2b_i0 = w2b_l2
  w2b_i1 = 2146435072%
  If (w2b_i0 And &HFFFFFFFF&) >= (w2b_i1 And &HFFFFFFFF&) Then
    w2b_i0 = 1
  Else
    w2b_i0 = 0
  End If
  If w2b_i0 Then
    w2b_d0 = w2b_p0
    w2b_d1 = w2b_p0
    w2b_d0 -= w2b_d1
    w2b_p0 = w2b_d0
    Goto w2b_b0_11927667
  End If
  w2b_d0 = w2b_p0
  w2b_i1 = w2b_l1
  w2b_i0 = w2b___rem_pio2(w2b_d0, w2b_i1)
  w2b_l2 = w2b_i0
  w2b_i0 = w2b_l1
  w2b_d0 = F64Load(mem, w2b_i0)
  w2b_i1 = w2b_l1
  w2b_d1 = F64Load(mem, w2b_i1 + 8)
  w2b_i2 = w2b_l2
  w2b_i3 = 1%
  w2b_i2 = w2b_i2 AND w2b_i3
  w2b_d0 = w2b___tan(w2b_d0, w2b_d1, w2b_i2)
  w2b_p0 = w2b_d0
  w2b_b0_11927667:
  w2b_i0 = w2b_l1
  w2b_i1 = 16%
  w2b_i0 += w2b_i1
  m.w2b_g0 = w2b_i0
  w2b_d0 = w2b_p0
  Return w2b_d0
End Function
Function w2bInit__()
  w2b_InitGlobals__()
  w2b_InitMemory__()
  w2b_InitTable__()
  w2b_InitExports__()
End Function
