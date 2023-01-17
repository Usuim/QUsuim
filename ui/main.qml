import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14
import "Appbar"
import "Editor"

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

  // Editor
  Flick{
    id: flick
    TextArea.flickable: Editor{
      id: xTextEdit
    }
  }
  // End Editor

  // Contextual Menu
  ContextMenu{}
  // End Contextual Menu

}
