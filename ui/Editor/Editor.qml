import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

TextArea {
  height: flick.height
  width: flick.width

  focus: true
  persistentSelection: true
  selectByMouse: true

  color: "#ffffff"
  background: null
  font.family: "DroidSansMono"
  font.pointSize: 12

  property bool ctrlPressed: false

  Keys.onPressed: (event) => {
      if (event.key === Qt.Key_Control) {
        ctrlPressed = true
      }
      if(ctrlPressed) {
        if(event.key === Qt.Key_Space) {
          console.log("Ctrl + Space")
          autoComplete.open()
          ctrlPressed = false
        }
      }
    }
  Keys.onReleased: (event) => {
    if (event.key === Qt.Key_Control) {
      ctrlPressed = false
    }
  }
  Keys.onTabPressed: {
    console.log("tab")
    xTextEdit.insert(xTextEdit.cursorPosition, "    ")
  }
}
