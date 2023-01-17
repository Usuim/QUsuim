import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

MouseArea {
  anchors.fill: parent
  cursorShape: Qt.IBeamCursor
  acceptedButtons: Qt.RightButton
  onClicked: (mouse) => contextMenu.openAt(mouse.x, mouse.y)


  Menu {
    id: contextMenu

    function openAt(x, y) {
        contextMenu.x = x
        contextMenu.y = y
        contextMenu.open()
    }

    Action {
      text: "Copy"
      onTriggered: {
        console.log("Copy!");
        xTextEdit.copy()
      }
    }

    Action {
      text: "Cut"
      onTriggered: {
        console.log("Cut!");
        xTextEdit.cut()
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
