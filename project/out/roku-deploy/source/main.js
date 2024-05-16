function onEvent(brsEvent) { try { return JSON.stringify(brsEvent); } catch (e) { return "[]"; } return ""; }
