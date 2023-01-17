import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Dialog {

  title: "About"
  modal: true
  width: 500
  height: 350
  x: (parent.width - width) / 2
  y: (parent.height - height) / 2
  standardButtons: Dialog.Ok

  Overlay.modal: Rectangle {
    color: "#44000000"
  }

  Page {
    anchors.fill: parent

    Label {
      anchors.fill: parent
      anchors.margins: 32
      wrapMode: Text.WordWrap
      text: qsTr("QUsuim")
    }
  }
}
