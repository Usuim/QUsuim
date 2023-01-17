import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

MenuBar {

  Menu {
    title: qsTr("&File")
    Action {
      text: qsTr("&New...")
      onTriggered: {
        console.log("New File!");
      }
    }
    Action { text: qsTr("&Open...") }
    Action { text: qsTr("&Save") }
    Action { text: qsTr("Save &As...") }
    MenuSeparator { }
    Action { text: qsTr("&Quit") }
  }

  Menu {
    title: qsTr("&Help")
    Action {
      text: qsTr("&About")
      onTriggered: about_dialog.open()
    }
  }
}
