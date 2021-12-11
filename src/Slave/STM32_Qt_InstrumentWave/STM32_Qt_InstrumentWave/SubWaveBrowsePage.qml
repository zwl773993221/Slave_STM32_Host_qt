import QtQuick 2.0
import QtCharts 2.2
import QtQuick.Controls 2.0

Rectangle {
    id: subwave
    width: 1280
    height: 800

    property int timer: 0

    Row {
        spacing: 10


        Column {
            spacing: 10

            ButtonGroup {
                id: radioGroup
            }

            Rectangle {
                color: "steelblue"
                width: 220
                height: 80

                Column {
                    Label {
                        text: qsTr("方向:")
                        anchors.left: parent.left
                    }
                    Row {
                        spacing: 20

                        RadioButton {
                            checked: true
                            text: qsTr("X")
                            ButtonGroup.group: radioGroup
                        }

                        RadioButton {
                            text: qsTr("Y")
                            ButtonGroup.group: radioGroup
                        }

                        RadioButton {
                            text: qsTr("Z")
                            ButtonGroup.group: radioGroup
                        }
                    }
                }
            }


            Rectangle {
                color: "steelblue"
                width: 220
                height: 140

                Column {
                    spacing: 10

                    Label {
                        text: qsTr("测点信息:")
                        anchors.left: parent.left
                    }
                    Row {
                        spacing: 20

                        Label {
                            text: qsTr("测点深度(m):")
                        }
                        Label {
                            text: qsTr("1.00")
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: qsTr("波到达时间(ms):")
                        }
                        Label {
                            text: qsTr("0.00")
                        }
                    }

                    Row {
                        spacing: 20
                        Label {
                            text: qsTr("波到达波速(m/s):")
                        }
                        Label {
                            text: qsTr("0.00")
                        }
                    }
                }

            }
        }

        ChartView {
            id: chartViewOk
            x:230
            y: 0
            width: 1060
            height: 240
            title: "XXX数据读取"
            antialiasing: true
            backgroundColor: "#9917719b"
            animationOptions: ChartView.SeriesAnimations
            titleColor: "#ccffffff"
            titleFont.bold: true
            titleFont.family: "方正粗倩_GBK"
            titleFont.pointSize: 15
            legend.visible:false
            margins.left: 10
            margins.right: 10
            margins.top: 10
            margins.bottom: 10

            ValueAxis {
                 id: myAxisX
                 min: 0
                 max: 10>timer? 10:timer+1
                 tickCount: 11
                 labelsColor: "#ffffff"
                 labelsFont.pointSize: 13
                 labelsFont.bold: true
                 labelFormat: '%d'
            }
            ValueAxis{
                id:myAxisY
                min:-30
                max:30
                tickCount: 6
                labelsColor: "#ffffff"
                labelsFont.pointSize: 10
                labelsFont.bold: true
                labelFormat: '%d'
            }

            LineSeries {
                id:lineSeries
                name: "LineSeries"
                axisX: myAxisX
                axisY: myAxisY
                color: "#00ffff"
                width: 3
            }

            Timer{//@disable-check M300
                interval: 1000
                running: true
                repeat: true
                onTriggered: {
                    lineSeries.append(timer,(Math.random()>0.5?Math.random():-(Math.random()))*30)
                    timer = timer+1
                }
            }

        }
    }


    Rectangle {
        color: "steelblue"
        width: 220
        height: 600
        y:240

        Column {
            spacing: 10
            /*
            Label {
                text: qsTr("基本信息:")
                anchors.left: parent.left
            }*/
            Row {
                spacing: 20

                Label {
                    text: qsTr("工程名称:")
                }
                Label {
                    text: qsTr("name")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("检测单位:")
                }
                Label {
                    text: qsTr("test unit")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("检测人员:")
                }
                Label {
                    text: qsTr("tester")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("检测时间:")
                }
                Label {
                    text: qsTr("test time")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("测孔编号:")
                }
                Label {
                    text: qsTr("hole number")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("场地类别:")
                }
                Label {
                    text: qsTr("Ⅲ类")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("测孔深度(m):")
                }
                Label {
                    text: qsTr("20")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("检测深度(m):")
                }
                Label {
                    text: qsTr("20")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("测点间隔(m):")
                }
                Label {
                    text: qsTr("1.00")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("采样点数:")
                }
                Label {
                    text: qsTr("1024")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("测试类型:")
                }
                Label {
                    text: qsTr("剪切波")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("场地土类型:")
                }
                Label {
                    text: qsTr("中软土")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("孔口震源距(m):")
                }
                Label {
                    text: qsTr("1.5")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("剪切波采样间隔(us):")
                }
                Label {
                    text: qsTr("180")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("剪切波延迟时间(ms):")
                }
                Label {
                    text: qsTr("-20")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("压缩波采样间隔(us):")
                }
                Label {
                    text: qsTr("90")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("压缩波延迟时间(ms):")
                }
                Label {
                    text: qsTr("-10")
                }
            }
            Row {
                spacing: 20

                Label {
                    text: qsTr("等效剪切波速度(m/s):")
                }
                Label {
                    text: qsTr("10")
                }
            }

        }
        //add show file path

        Button {
            text: qsTr("返回")
            width: 60
            x: 50
            y: 500
            onClicked: {
                subWaveBrowsePage.visible = false
            }
        }

    }

}
