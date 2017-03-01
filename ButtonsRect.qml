import QtQuick 2.0

Rectangle {
    id: rootArea
    property string  colorString: "#343434"
    property alias imageString: image1.source
    property alias strinText: text1.text
    property string stringStatus: "Default"

    property Item rootRect

    color: colorString
    radius: 20

    border.color: "#FFFFFF"
    border.width: 2

    width : parent.width
    height: parent.height

    MouseArea{
        hoverEnabled: true
        id: mouseArea
        anchors.fill: parent

        BorderImage {
            id: buttonImage

            width: parent.width
            height: parent.height
            border.left: 5; border.top: 5
            border.right: 5; border.bottom: 5
            Image {
                id: image1
                smooth: true
                width: parent.width
                height: parent.height
                source: imageString
                scale: 0.5
                Behavior on scale {
                    NumberAnimation { duration: 100 }
                }
            }
            Text {
                id: text1
                anchors.fill: parent
                color: "#ffffff"
                text: qsTr(stringText)
                font.family: "Monospace"
                font.bold: true
                font.pointSize: 10
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
            }
        }
        onEntered:  image1.scale = 0.8
        onExited:  image1.scale = 0.5
        onClicked: {
            image1.scale = 0.2
            rootRect.state = stringStatus
        }
    }

}
