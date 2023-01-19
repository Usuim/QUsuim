import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

import "Actions.js" as Act

TextArea {
  property var selS: 0
  property var selE: 0
  property var currentWord: ""

  height: flick.height
  width: flick.width

  focus: true
  persistentSelection: true
  selectByMouse: true

  color: "#ffffff"
  background: null
  font.family: "DroidSansMono"
  font.pointSize: 12

  onTextChanged: {
    this.selectWord()
    selS = this.selectionStart
    selE = this.selectionEnd
    this.currentWord = this.selectedText
    this.deselect()
  }
  Keys.forwardTo: [listView.currentItem, listView]

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
    Act.checkKey(event)
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

  Keys.onReturnPressed: {
    xTextEdit.insert(xTextEdit.cursorPosition, "\n")
    autoComplete.close()
  }

  function appendData(text) {
    this.remove(this.selS, this.selE)
    this.insert(this.cursorPosition, text)
    autoComplete.close()
  }
}
