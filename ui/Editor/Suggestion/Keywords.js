const KW = ["define", "endif", "ifdef", "ifndef", "include", "asm", "double", "new", "switch", "auto", "else", "operator", "template", "break", "enum", "private", "this", "case", "extern", "protected", "throw", "float", "public", "try", "char", "for", "register", "typedef", "class", "friend", "return", "union", "const", "goto", "short", "unsigned", "continue", "if", "signed", "virtual", "default", "inline", "sizeof", "void", "delete", "int", "static", "volatile", "do", "long", "struct", "while"]


function filterKW(text) {
  if(text === "") {
    return KW;
  }
  else {
    let bufferText = xTextEdit.text
    let bufferArray = bufferText.split(/\s+/)
    bufferArray.pop()
    bufferArray.filter(el => el !== "\n")
    bufferArray.filter(el => el !== "(")
    bufferArray.filter(el => el !== ")")
    bufferArray.filter(el => el !== "{")
    bufferArray.filter(el => el !== "}")
    bufferArray.filter(el => el !== "@")
    bufferArray.filter(el => el !== "#")
    bufferArray.filter(el => el !== "<")
    bufferArray.filter(el => el !== ">")
    bufferArray.filter(el => el !== ":")
    bufferArray.filter(el => el !== ";")
    bufferArray.filter(el => el !== "-")
    bufferArray.filter(el => el !== "_")
    bufferArray.filter(el => el !== "*")
    bufferArray.filter(el => el !== "+")
    bufferArray.filter(el => el !== ".")
    bufferArray.filter(el => el !== ",")

    console.log(bufferArray)

    let allKW = KW.concat(bufferArray)
    let filteredKw = allKW.filter(word => word.startsWith(text))
    var uniqueArray = filteredKw.filter(function(item, pos) {
      return filteredKw.indexOf(item) == pos;
    })
    console.log(uniqueArray)
    return uniqueArray
  }
}
