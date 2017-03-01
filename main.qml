import QtQuick 2.5
import QtQuick.Window 2.2
//import QtQuick.Controls 2.0
//import QtQuick.Dialogs 1.2

Window {
    id: window
    visible: true
    width: 600
    height: 1024

    Background{
        id: background1
    }

    Loader{
        id:viewLoader
        anchors.fill: parent
    }

    Rectangle{
        id: rectInicio
        width: parent.width
        height: 50
        y:parent.height - height
        color: "#343434"

        Text {
            id: inicio
            color: "#fbf2f2"
            text: qsTr("Inicio")
            font.bold: true
            font.pointSize: 21
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    //Qt.quit();
                    rootRect.visible=true
                    rootRect.state="Default"
                }
            }
        }
    }



    Rectangle{
        id: rootRect
        property string selectColor: "#343434"
        width: parent.width
        height: parent.height

        color: selectColor
        radius: 4
        anchors.margins: 5

        Row{
            y: parent.height*10/100
            spacing: 5
            width: parent.width/5.2
            height: parent.height/5
            //anchors.centerIn: yes
            ButtonsRect{imageString: "Imagen/INGRESO.png"; rootRect: rootRect; strinText: "INGRESO"; stringStatus: "Ingreso"  }
            ButtonsRect{imageString: "Imagen/MENSUALIDAD.png"; rootRect: rootRect; strinText: "MENSUALIDAD";stringStatus: "Mensualidad" }
            ButtonsRect{imageString: "Imagen/RECIBO.png"; rootRect: rootRect; strinText: "COPIAS"; stringStatus: "Copias" }
            ButtonsRect{imageString: "Imagen/TIEMPO.png"; rootRect: rootRect; strinText: "TIEMPO"; stringStatus: "Tiempo" }
            ButtonsRect{imageString: "Imagen/AYUDA.png"; rootRect: rootRect; strinText: "AYUDA"; stringStatus: "Ayuda" }
        }

        states: [
            State {
                name: "Ingreso"
                PropertyChanges { target: rootRect; visible: false }
                PropertyChanges { target: viewLoader; source: "Ingreso.qml";  }
            },
            State {
                name: "Mensualidad"
                PropertyChanges { target: rootRect; visible: false}
                PropertyChanges { target: viewLoader; source: "Mensualidad.qml" }
            },
            State {
                name: "Copias"
                PropertyChanges { target: rootRect; visible: false}
                PropertyChanges { target: viewLoader; source: "Copias.qml" }
            },
            State {
                name: "Tiempo"
                PropertyChanges { target: rootRect; visible: false}
                PropertyChanges { target: viewLoader; source: "Tiempo.qml" }
            },
            State {
                name: "Ayuda"
                PropertyChanges { target: rootRect; visible: false}
                PropertyChanges { target: viewLoader; source: "Ayuda.qml" }
            },
            State{
                name: "Default"
                PropertyChanges { target: rootRect; visible: true }
            }

        ]

    }




}

