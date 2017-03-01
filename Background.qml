import QtQuick 2.0

Rectangle{
    id: background
    anchors.fill: parent
    color: "#343434"
    Image {
        source: "Imagen/strips.png"
        fillMode: Image.Tile
        anchors.fill: parent
        opacity: 0.3
    }
}
