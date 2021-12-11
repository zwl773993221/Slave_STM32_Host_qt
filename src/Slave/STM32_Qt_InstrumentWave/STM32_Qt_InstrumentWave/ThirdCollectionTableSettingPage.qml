/****************************************************************************
**
** Copyright (C) 2018 The Qt Company Ltd.
** Contact: https://www.qt.io/licensing/
**
** This file is part of the Qt Virtual Keyboard module of the Qt Toolkit.
**
** $QT_BEGIN_LICENSE:GPL$
** Commercial License Usage
** Licensees holding valid commercial Qt licenses may use this file in
** accordance with the commercial license agreement provided with the
** Software or, alternatively, in accordance with the terms contained in
** a written agreement between you and The Qt Company. For licensing terms
** and conditions see https://www.qt.io/terms-conditions. For further
** information use the contact form at https://www.qt.io/contact-us.
**
** GNU General Public License Usage
** Alternatively, this file may be used under the terms of the GNU
** General Public License version 3 or (at your option) any later version
** approved by the KDE Free Qt Foundation. The licenses are as published by
** the Free Software Foundation and appearing in the file LICENSE.GPL3
** included in the packaging of this file. Please review the following
** information to ensure the GNU General Public License requirements will
** be met: https://www.gnu.org/licenses/gpl-3.0.html.
**
** $QT_END_LICENSE$
**
****************************************************************************/
import QtQuick 2.10
import QtQuick.Controls 2.3
import QtQuick.Window 2.3
import QtQuick.VirtualKeyboard 2.1
import QtQuick.VirtualKeyboard.Settings 2.1

import "content"

Rectangle {
    width: 1280
    height: 720
    color: "#F6F6F6"
    id: thirdCollectionTableSetting

    // Only set with CONFIG+=disable-desktop.
    property bool handwritingInputPanelActive: false

    Flickable {
        id: flickable
        anchors.fill: parent
        contentWidth: content.width
        contentHeight: content.height
        interactive: contentHeight > height
        flickableDirection: Flickable.VerticalFlick

        property real scrollMarginVertical: 20

        ScrollBar.vertical: ScrollBar {}

        MouseArea  {
            id: content
            width: flickable.width
            height: textEditors.height + 24

            onClicked: forceActiveFocus()
        }

        Column {
            id: textEditors
            spacing: 15
            width: parent.width

            Rectangle {
                color: "steelblue"
                width: content.width
                height: 60

                Row {
                    id: buttonArea
                    spacing: 15
                    x: 100
                    y: 10
                    width: parent.width

                    Button {
                        text: qsTr("新建工程")

                        onClicked: {
                            secondCreateProjPage.visible = true
                        }
                    }
                    Button {
                        text: qsTr("剪切波")
                        onClicked: {
                            fourthShearWavePage.visible = true
                        }
                    }
                    Button {
                        text: qsTr("压缩波")
                        onClicked: {
                            fifthCompressWavePage.visible = true
                        }
                    }
                    Button {
                        text: qsTr("数据管理")
                        onClicked: {
                            sixthDataManagePage.visible = true
                        }
                    }

                    Button {
                        text: qsTr("关于系统")

                        onClicked: {
                            seventhAboutSystemPage.visible = true
                        }
                    }

                    Text {
                        text: qsTr("系统电量：80%")
                        y: 5
                        font.pixelSize: 20
                        font.bold: true         //jiacu
                    }

                    Timer {// @disable-check M300
                        interval:500; running:true;repeat: true
                        onTriggered: time.text = Qt.formatDateTime(new Date(), "yyyy-MM-dd-MMM- hh-mm-ss dddd")
                    }
                    Text {
                        id: time
                        y: 10

                        font.pixelSize: 20
                        font.bold: true         //jiacu
                    }

                }
            }

            Rectangle {
                color: "steelblue"
                width: content.width
                height: 40

                Label {
                    color: "#565758"
                    text: qsTr("采集序列表")
                    font.bold: true         //jiacu
                    font.pointSize: 20
                    anchors.horizontalCenter: parent.horizontalCenter
                }

            }

            Row {
                spacing: 15

                Rectangle {
                    color: "steelblue"
                    width: 420
                    height: 500

                    Column {
                        spacing: 15

                        Row {
                            spacing: 20

                            Label {
                                id: blackLabel1
                                text: qsTr("    ")
                            }
                        }

                        Row {
                            spacing: 20
                            id: projeInfoArea

                            Label {
                                color: "#565758"
                                text: qsTr("工程名称：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: projNameLabel
                                text: "projNameLabel"
                                width: 100
                            }
                        }
                        Row {
                            spacing: 20
                            id: testUnitInfoArea

                            Label {
                                color: "#565758"
                                text: qsTr("检测单位：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: testUnitLabel
                                text: "testUnitLabel"
                                width: 100
                            }
                        }
                        Row {
                            spacing: 20
                            id: inspectorInfoArea

                            Label {
                                color: "#565758"
                                text: qsTr("检测人员：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: inspectorLabel
                                text: "inspectorLabel"
                                width: 100
                            }
                        }
                        Row {
                            spacing: 20
                            id: testDateInfoArea

                            Label {
                                color: "#565758"
                                text: qsTr("检测日期：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: testDateLabel
                                text: "testDateLabel"
                                width: 100
                            }
                        }
                        Row {
                            id: vanueCategoryInfoArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("场地类别：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: vanueCategoryLabel
                                text: "vanueCategoryLabel"
                                width: 100
                            }
                        }

                        Row {
                            spacing: 20

                            Label {
                                id: blackLabel2
                                text: qsTr("    ")
                            }
                        }
                        Row {
                            spacing: 20

                            Label {
                                id: blackLabel3
                                text: qsTr("    ")
                            }
                        }

                        Row {
                            id: holeBaseInfoArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("钻孔名称：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: holeNameLabel
                                text: "holeNameLabel"
                                width: 100
                            }
                        }
                        Row {
                            id: orificeElevationInfoArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("孔口高程：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: orificeElevationLabel
                                text: "orificeElevationLabel"
                                width: 100
                            }
                        }
                        Row {
                            id: drillDepthInfoArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("钻孔深度：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 80
                                id: drillDepthLabel
                                text: "drillDepthLabel"
                                width: 100
                            }
                        }
                        Row {
                            id: sourHoleHorizonDistanInfoArea
                            spacing: 7

                            Label {
                                color: "#565758"
                                text: qsTr("源孔水平距：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 100
                                id: sourHoleHorizonDistanLbael
                                text: "sourHoleHorizonDistanLbael"
                                width: 100
                            }
                        }
                        Row {
                            id: sourHoleVerticalDistanInfoArea
                            spacing: 7

                            Label {
                                color: "#565758"
                                text: qsTr("源孔竖直距：")
                                font.bold: true         //jiacu
                            }
                            Label {
                                x: 100
                                id: sourHoleVerticalDistanLabel
                                text: "sourHoleVerticalDistanLabel"
                                width: 100
                            }
                        }
                    }
                }

                Rectangle {
                    color: "steelblue"
                    width: 420
                    height: 500
                    //x: 360

                    EasyTableWidget {
                        anchors.fill: parent
                    }
                }

                Rectangle {
                    color: "steelblue"
                    width: 400
                    height: 500


                    Column {
                        spacing: 15

                        Row {
                            id: startDepthArea
                            spacing: 20

                            Label {
                                y: 10
                                color: "#565758"
                                text: qsTr("始测深度(m)：")
                                font.bold: true         //jiacu
                            }
                            TextField {
                                id: startDepthField
                                width: 270
                                placeholderText: "start depth ?"
                                enterKeyAction: EnterKeyAction.Next
                                onAccepted: startDepthField.focus = true

                                onPressed: {
                                    inputX = 1
                                    inputY = y + height
                                    inputPanel.visible = true
                                }
                            }
                        }
                        Row {
                            id: endDepthArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("结束深度(m)：")
                                font.bold: true         //jiacu
                            }
                            TextField {
                                id: endDepthField
                                width: 270
                                placeholderText: "end depth ?"
                                enterKeyAction: EnterKeyAction.Next
                                onAccepted: endDepthArea.focus = true

                                onPressed: {
                                    inputX = 1
                                    inputY = y + height
                                    inputPanel.visible = true
                                }
                            }
                        }
                        Row {
                            id: testPointSpacingArea
                            spacing: 20

                            Label {
                                color: "#565758"
                                text: qsTr("测试点距(m)：")
                                font.bold: true         //jiacu
                            }
                            TextField {
                                id: testPointSpacingField
                                width: 270
                                placeholderText: "test point spacing ?"
                                enterKeyAction: EnterKeyAction.Next
                                onAccepted: testPointSpacingField.focus = true

                                onPressed: {
                                    inputX = 1
                                    inputY = y + height
                                    inputPanel.visible = true
                                }
                            }
                        }

                        Grid {
                            rows: 4;
                            columns: 2;
                            rowSpacing: 20;
                            columnSpacing: 20;
                            x: 30

                            Button {
                                text: qsTr("获取默认值")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150

                                onClicked: {
                                    projNameLabel.text = "岩土工程检测仪"
                                    testUnitLabel.text = "四川华晖盛世探测技术有限公司"
                                    inspectorLabel.text = "张三"
                                    testDateLabel.text = "2021-12-10"
                                    vanueCategoryLabel.text = "普通"

                                    holeNameLabel.text = "四川岩土"
                                    orificeElevationLabel.text = "20m"
                                    drillDepthLabel.text = "20m"
                                    sourHoleHorizonDistanLbael.text = "100cm"
                                    sourHoleVerticalDistanLabel.text = "100cm"
                                }
                            }
                            Button {
                                x: 100
                                text: qsTr("应用")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                            }
                            Button {
                                text: qsTr("新建")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                            }
                            Button {
                                x: 100
                                text: qsTr("保存")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                            }Button {
                                text: qsTr("增加")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                            }
                            Button {
                                x: 100
                                text: qsTr("删除")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                            }Button {
                                text: qsTr("上一步")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150

                                onClicked: {
                                    thirdCollectionTableSettingPage.visible = false
                                }
                            }
                            Button {
                                x: 100
                                text: qsTr("下一步")
                                font.bold: true         //jiacu
                                font.pointSize: 18
                                width: 150
                                onClicked: {
                                    fourthShearWavePage.visible = true
                                }

                            }
                        }
                    }
                }
            }

            Rectangle {
                color: "burlywood"
                width: content.width
                height: 75
                y: 620

                Label {
                    color: "#565758"
                    text: qsTr("版本和公司信息：")
                    anchors.left: parent.left
                    font.bold: true         //jiacu
                }
                Row {
                    id: versionAndLOGOArea
                    spacing: 15
                    x: 0
                    y: 45
                    width: parent.width

                    Label {
                        text: qsTr("版本号：")
                        width: 200
                        font.bold: true         //jiacu
                    }
                    Label {
                        text: qsTr("HH-BK--")
                        width: 200
                        font.bold: true         //jiacu
                    }
                    Label {
                        text: qsTr("华晖LOGO")
                        width: 200
                        font.bold: true         //jiacu
                    }
                    Label {
                        text: qsTr("北勘LOGO")
                        width: 200
                        font.bold: true         //jiacu
                    }
                }
            }
        }

    }

}
