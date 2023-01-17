import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14
import "Appbar"

ApplicationWindow {

  Material.theme: Material.Dark
  Material.accent: Material.DeepPurple

  width: WINDOW_WIDTH
  height: WINDOW_HEIGHT
  visible: true
  title: qsTr("QUsuim")

  // Appbar
  menuBar: AppBar{}
  About{
    id: about_dialog
  }
  // End AppBar

  // Contextual Menu
  ContextMenu{}
  // End Contextual Menu

  // Editor
  TextEdit {
    id: xTextEdit
    height: parent.height
    width: parent.width
    selectByMouse: true
    color: "#ffffff"
    font.family: "DroidSansMono"
    font.pointSize: 12
  }
  // End Editor
}
