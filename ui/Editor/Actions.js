function checkKey(event) {

  if(event.key === Qt.Key_Space) {
     console.log("don't open popup with space")
     // autoComplete.close()
  }

  else if(event.key === Qt.Key_Delete || event.key === Qt.Key_Backspace) {
     console.log("don't open popup with backspace")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_Meta) {
     console.log("don't open popup with super")
     // autoComplete.close()
  }

  else if(event.key === Qt.Key_Semicolon || event.key === Qt.Key_Colon) {
     console.log("don't open popup with colon or semicolon")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_Comma) {
     console.log("don't open popup with comma")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_BraceLeft || event.key === Qt.Key_BraceRight) {
     console.log("close open popup with {}")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_BracketLeft || event.key === Qt.Key_BracketRight) {
     console.log("close open popup with []")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_ParenLeft || event.key === Qt.Key_ParenRight) {
     console.log("close open popup with ()")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_Less || event.key === Qt.Key_Greater) {
     console.log("close open popup with <>")
     autoComplete.close()
  }

  else if(event.key === Qt.Key_Control) {
    console.log("don't open popup with control")
    // autoComplete.close()
  } else {
    console.log("Open popup with any key")
    autoComplete.open()
  }
  console.log(event.key)
}
