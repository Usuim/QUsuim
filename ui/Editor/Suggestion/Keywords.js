const KW = ["define", "endif", "ifdef", "ifndef", "include", "asm", "double", "new", "switch", "auto", "else", "operator", "template", "break", "enum", "private", "this", "case", "extern", "protected", "throw", "float", "public", "try", "char", "for", "register", "typedef", "class", "friend", "return", "union", "const", "goto", "short", "unsigned", "continue", "if", "signed", "virtual", "default", "inline", "sizeof", "void", "delete", "int", "static", "volatile", "do", "long", "struct", "while"]


function filterKW(text) {
  if(text === "") {
    return KW;
  }
  else {
    let filteredKw = KW.filter(word => word.startsWith(text))
    return filteredKw
  }
}
