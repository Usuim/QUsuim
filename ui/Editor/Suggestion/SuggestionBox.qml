import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Material 2.14

Item {
  function open() {
    sugBox.x = xTextEdit.cursorRectangle.x
    sugBox.y = xTextEdit.cursorRectangle.y
    sugBox.open()
  }
  Menu {
    id: sugBox

    Action {
      text: "#define"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "#define")
      }
    }

    Action {
      text: "#endif"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "#endif")
      }
    }

    Action {
      text: "#ifndef"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "#ifndef")
      }
    }

    Action {
      text: "#include"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "#include")
      }
    }


    Action {
      text: "auto"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "auto")
      }
    }

    Action {
      text: "bool"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "bool")
      }
    }

    Action {
      text: "char"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "char")
      }
    }

    Action {
      text: "const"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "const")
      }
    }

    Action {
      text: "int"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "int")
      }
    }

    Action {
      text: "long"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "long")
      }
    }

    Action {
      text: "float"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "float")
      }
    }

    Action {
      text: "void"
      onTriggered: {
        console.log("inserting");
        xTextEdit.insert(xTextEdit.cursorPosition, "void")
      }
    }

  }
}
