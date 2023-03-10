import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14
import "Keywords.js" as KeyData

ListView {
  implicitWidth: 200 // <==
  implicitHeight: contentHeight

  width: contentWidth
  height: contentHeight

  currentIndex: 0
  anchors.fill: parent
  model: KeyData.filterKW(xTextEdit.currentWord)

  ScrollBar.vertical: ScrollBar {
    active: true
  }

  delegate: ItemDelegate {
    text: modelData
    width: 500
    height: 24
    highlighted: index === listView.currentIndex

    Keys.onSpacePressed:{
      console.log("popup skip space action")
      xTextEdit.insert(xTextEdit.cursorPosition, " ")
      autoComplete.close()
    }

    Keys.onEscapePressed: {
      console.log("close popup with ESC")
      autoComplete.close()
    }

    Keys.onReturnPressed: {
      xTextEdit.appendData(text)
    }
  }
}
