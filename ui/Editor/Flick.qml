import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Flickable {
  anchors.fill:parent

  contentWidth: xTextEdit.contentWidth
  contentHeight: xTextEdit.contentHeight

  flickDeceleration: 10000
  clip: true

  ScrollBar.vertical: ScrollBar { }
}
