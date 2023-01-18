import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Item {
  function open() {
    sugBox.x = xTextEdit.cursorRectangle.x
    console.log("x: ", xTextEdit.cursorRectangle.x)
    sugBox.y = xTextEdit.cursorRectangle.y + 20
    console.log("y: ", xTextEdit.cursorRectangle.y)
    sugBox.open()
  }

  function close() {
    sugBox.close()
  }
}
