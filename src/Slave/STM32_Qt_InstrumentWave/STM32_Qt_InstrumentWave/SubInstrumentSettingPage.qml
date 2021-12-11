import QtQuick 2.2
import QtQuick.Controls 2.3
//import QtQuick.Controls.Styles

Rectangle {
    width: 480;
    height: 720;
    color: "steelblue";

    Column {
        spacing: 50
        x: 300

        Row {
            Column {
                Text {
                    id: acquisitionParameters
                    text: qsTr("采集参数")
                }
                spacing: 40

                GroupBox {
                    width: 200;
                    height: 50;
                    title: qsTr("采样间隔(ms):");
                    ComboBox {
                        width: parent.width;
                        model: ["0.005", "0.01",
                                "0.02", "0.04",
                                "0.05", "0.08",
                                "0.1", "0.2",
                                "0.4", "0.5",
                                "0.8", "1",
                                "2", "4",
                                "5", "8",
                                "10", "20",
                                "50", "100",
                                "200", "500",
                                "1000"];
                        currentIndex: 6;
                    }
                }

                GroupBox {
                    width: 200;
                    height: 50;
                    title: qsTr("采样点数(个):");
                    ComboBox {
                        width: parent.width;
                        model: ["100", "200",
                                "300", "500",
                                "1000", "1500",
                                "2000", "2500",
                                "3000", "4000",
                                "5000", "6000",
                                "8000", "10000"];
                        currentIndex: 5;
                    }
                }

                GroupBox {
                    width: 200;
                    height: 50;
                    title: "采样延时(ms):";
                    ComboBox {
                        width: parent.width;
                        editable: true;
                        model: ListModel {
                            ListElement{text: "0"}
                            ListElement{text: "5"}
                            ListElement{text: "10"}
                            ListElement{text: "20"}
                            ListElement{text: "30"}
                            ListElement{text: "50"}
                            ListElement{text: "80"}
                            ListElement{text: "100"}
                            ListElement{text: "150"}
                            ListElement{text: "200"}
                            ListElement{text: "300"}
                            ListElement{text: "500"}
                            ListElement{text: "800"}
                            ListElement{text: "1000"}
                        }
                        currentIndex: 0;
                     }
                }

                GroupBox {
                    width: 200;
                    height: 50;
                    title: qsTr("触发类型:");
                    ComboBox {
                        width: parent.width;
                        model: [qsTr("外触发")];
                    }
                }

                GroupBox {
                    width: 200;
                    height: 50;
                    title: qsTr("触发占空比(%):");
                    ComboBox {
                        width: parent.width;
                        model: ["5",
                                "10", "20",
                                "30", "40",
                                "50", "60",
                                "70", "80",
                                "90", "100",
                                "150", "200",
                                "500"];
                        currentIndex: 10;
                    }
                }

                GroupBox {
                    width: 200;
                    height: 50;
                    title: qsTr("测量方式:");
                    ComboBox {
                        width: parent.width;
                        model: [qsTr("由下向上测量"),
                                qsTr("由上向下测量")];
                        currentIndex: 0;
                    }
                }

            }

            Column {
                Text {
                    id: filterGain
                    text: qsTr("滤波增益")
                }
                spacing: 40

                GroupBox {
                    x: 30
                    width: 200;
                    height: 50;
                    title: qsTr("增益设置:");
                    ComboBox {
                        width: parent.width;
                        model: ["1", "2",
                                "4", "8",
                                "16", "32",
                                "64", "128",
                                "256", "512",
                                "1024", "2048",
                                "4096", "8192",
                                "16384", "32768",
                                "65536"];
                        currentIndex: 1;
                    }
                }


            }

        }
        Row {
            spacing: 20
            x: 20

            Button {
                text: qsTr("获取默认值")
                width: 130
                font.pixelSize: 20
                font.bold: true         //jiacu

                onClicked: {

                }
            }
            Button {
                text: qsTr("应用")
                width: 130
                font.pixelSize: 20
                font.bold: true         //jiacu
            }
            Button {
                text: qsTr("确定")
                width: 130
                font.pixelSize: 20
                font.bold: true         //jiacu

                onClicked: {
                    subInstrumentSettingPage.visible = false
                }
            }
        }

    }
}
