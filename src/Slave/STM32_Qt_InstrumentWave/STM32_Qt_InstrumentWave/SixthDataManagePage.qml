import QtQuick 2.0
import QtQuick.Controls 2.0

Rectangle {
    id: waveBrowse
    width: 1280
    height: 720


    Column {
        spacing: 10

        Rectangle {
            color: "steelblue"
            width: 1280
            height: 150

            Label {
                text: qsTr("数据回放")
                font.pixelSize: 25
                font.bold: true         //jiacu
                x: 500
                y: 50

                anchors.centerIn: parent
            }

        }

        Rectangle {
            color: "burlywood"
            width: 1280
            height: 150
            Row {

                TextEdit {
                    id: dataSelect
                    text: qsTr("数据选择")
                    font.pixelSize: 25
                    font.bold: true         //jiacu
                    x: 100
                    y: 50
                }

            }
        }

        Button {
            text: qsTr("导入")
            width: 100
            height: 50

            x: waveBrowse.width/2-100
            y: waveBrowse.height/2+100
            onClicked: {

            }
        }
        Button {
            text: qsTr("返回")
            width: 100
            height: 50

            x: waveBrowse.width/2-100
            y: waveBrowse.height/2+100
            onClicked: {
                sixthDataManagePage.visible = false
            }
        }
    }
}
