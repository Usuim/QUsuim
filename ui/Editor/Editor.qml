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
}
