import QtQuick 2.2
import QtQuick.Controls 2.3

Rectangle {
    width: 640;
    height: 720;
    color: "steelblue";

    Grid {
        anchors.fill: parent;
        rows: 7;
        columns: 3;
        rowSpacing: 50;
        columnSpacing: 60;
        x: 300

        Label {
            x: 10
            y: 10
            text: qsTr("显示设置")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        Label {
            text: qsTr("通道1")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        Label {
            text: qsTr("通道2")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        Label {
            text: qsTr("波形颜色")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("channel 1 color");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("channel 2 color");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        Label {
            text: qsTr("波形线宽")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("line size 1");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("line size 2");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        Label {
            text: qsTr("填充颜色")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("area color 1");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("area color 2");
            ComboBox {
                width: parent.width;
                model: ["red",
                        "orange",
                        "yellow",
                        "green",
                        "blue",
                        "black",
                        "white",
                        "salmon"];
                currentIndex: 5;
            }
        }
        Label {
            text: qsTr("波形设置")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("line size 1");
            ComboBox {
                width: parent.width;
                model: [
                    qsTr("波形图"),
                    qsTr("变面积（波峰）"),
                    qsTr("变面积（波谷）")
                        ];
                currentIndex: 0;
            }
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("line size 2");
            ComboBox {
                width: parent.width;
                model: [qsTr("波形图"),
                        qsTr("变面积（波峰）"),
                        qsTr("变面积（波谷）")];
                currentIndex: 0;
            }
        }
        Label {
            text: qsTr("横坐标设置(ms/cm)")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("采样点数(个):");
            ComboBox {
                width: parent.width;
                model: ["10", "20",
                        "30", "50",
                        "100", "150",
                        "200", "250",
                        "300", "400",
                        "500", "600",
                        "800", "1000"];
                currentIndex: 0;
            }
        }
        Button {
            text: qsTr("获取默认值")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu

            onClicked: {
            }
        }

        Label {
            text: qsTr("纵坐标设置(mV)")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu
        }
        GroupBox {
            width: 180;
            height: 50;
            //title: qsTr("采样点数(个):");
            ComboBox {
                width: parent.width;
                model: ["100", "200",
                        "300", "500",
                        "1000", "1500",
                        "2000", "2500",
                        "3000", "4000",
                        "5000", "6000",
                        "8000", "10000"];
                currentIndex: 10;
            }
        }
        Button {
            text: qsTr("应用")
            width: 130
            font.pixelSize: 20
            font.bold: true         //jiacu

            onClicked: {
            }
        }
    }

    Button {
        x:parent.width/2-100
        y:650
        text: qsTr("确定")
        width: 130
        font.pixelSize: 20
        font.bold: true         //jiacu

        onClicked: {
            subDisplaySettingPage.visible = false
        }
    }
}
