cmake_minimum_required(VERSION 3.16)

project(QUsuim VERSION 1.0 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick Gui REQUIRED)
include_directories(${CMAKE_SOURCE_DIR}/include)

file(GLOB SRC
       src/*.cpp
         include/*.hpp
         include/*.h
)

qt6_add_resources(UI_RESOURCES ui/qml.qrc)

qt_add_executable(usuim
    ${SRC}
    ${UI_RESOURCES}
)

qt_add_qml_module(usuim
    URI qusuim
    VERSION 1.0
    QML_FILES
    ui/main.qml
    ui/ContextMenu.qml
    ui/Appbar/AppBar.qml
    ui/Appbar/About.qml
    ui/Editor/Flick.qml
    ui/Editor/Editor.qml
    ui/Editor/Suggestion/SuggestionBox.qml
    ui/Editor/Suggestion/Keywords.qml
    ui/Editor/Suggestion/PopupItems.qml
)

target_link_libraries(usuim PRIVATE Qt6::Gui Qt6::Quick)
