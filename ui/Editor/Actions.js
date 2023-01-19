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
  else if(event.key === Qt.Key_Control) {
    console.log("don't open popup with control")
    // autoComplete.close()
  } else {
    console.log("Open popup with any key")
    autoComplete.open()
  }
  console.log(event.key, Qt.Key_Super_L)
}
