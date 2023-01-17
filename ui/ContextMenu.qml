import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

MouseArea {

  anchors.fill: parent
  acceptedButtons: Qt.LeftButton | Qt.RightButton
  onClicked: (mouse) => {
    if (mouse.button === Qt.RightButton)
        contextMenu.popup()
  }
  onPressAndHold: (mouse) => {
    if (mouse.source === Qt.MouseEventNotSynthesized)
        contextMenu.popup()
  }

  Menu {
    id: contextMenu

    Action {
      text: "Cut"
      onTriggered: {
        console.log("Cut!");
        xTextEdit.cut()
      }
    }

    Action {
      text: "Copy"
      onTriggered: {
        console.log("Copy!");
        xTextEdit.copy()
      }
    }

    Action {
      text: "Paste"
      onTriggered: {
        console.log("Paste");
        xTextEdit.paste()
      }
    }

    MenuSeparator { }

    Menu {
      title: "Find/Replace"
      Action { text: "Find Next" }
      Action { text: "Find Previous" }
      Action { text: "Replace" }
    }
  }
}
