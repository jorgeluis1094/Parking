import QtQuick 2.0

Rectangle{

    id:idIngreso
    anchors.fill: parent
    width: 100
    height: 100

    Background{
        id: background2
    }

    TextInput{
        id:inputIngreso
        color: "#ffffff"
        anchors.fill: parent
        anchors.centerIn: TextInput.Center
        text:"Digite Placa..."
        font.bold: true
        horizontalAlignment: Text.AlignHCenter
        font.pointSize: 15
        cursorVisible: true

    }
}
