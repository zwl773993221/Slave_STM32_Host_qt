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

            onClicked: focus = true

            Column {
                id: textEditors
                spacing: 15
                width: parent.width

                Rectangle {
                    color: "burlywood"
                    width: content.width
                    height: 150

                    Label {
                        y: 10
                        color: "#565758"
                        text: qsTr("HH-BK高精度综合波速仪")
                        anchors.left: parent.left
                        font.bold: true         //jiacu
                    }
                    Row {
                        id: defaultPageBaseInfoArea
                        spacing: 15
                        x: 700
                        y: 10
                        width: parent.width

                        Text {
                            text: qsTr("系统电量：80%")
                            font.pixelSize: 20
                            font.bold: true         //jiacu
                        }

                        Timer {// @disable-check M300
                            interval:500; running:true;repeat: true
                            onTriggered: time.text = Qt.formatDateTime(new Date(), "yyyy-MM-dd MMM hh:mm:ss dddd")
                        }
                        Text {
                            id: time
                            y: 4
                            font.pixelSize: 20
                            font.bold: true         //jiacu
                        }
                    }

                    Label {
                        y: 60
                        color: "#565758"
                        text: qsTr("HH-综合波速采集系统")
                        anchors.horizontalCenter: parent.horizontalCenter
                        font.bold: true         //jiacu
                        font.pointSize: 30
                    }
                }
                Rectangle {
                    color: "deepskyblue"
                    width: content.width
                    height: 450

                    Column {
                        id: defaultPageButtonInfoArea
                        spacing: 25
                        y: 25
                        width: parent.width

                        Button {
                            id: buttonCreate
                            text: qsTr("新建工程")
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.bold: true         //jiacu
                            font.pointSize: 25
                            width: 400

                            onClicked: {
                                secondCreateProjPage.visible = true
                            }
                            onHoveredChanged: {//in Button area set MouseArea enabled property
                                if (btn.hovered)
                                    content.enabled = false
                                else
                                    content.enabled = true
                            }
                        }
                        Button {
                            text: qsTr("剪切波采集")
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.bold: true         //jiacu
                            font.pointSize: 25
                            width: 400

                            onClicked: {
                                fourthShearWavePage.visible = true
                            }
                        }
                        Button {
                            text: qsTr("压缩波采集")
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.bold: true         //jiacu
                            font.pointSize: 25
                            width: 400

                            onClicked: {
                                fifthCompressWavePage.visible = true
                            }
                        }
                        Button {
                            text: qsTr("数据管理")
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.bold: true         //jiacu
                            font.pointSize: 25
                            width: 400

                            onClicked: {
                                sixthDataManagePage.visible = true
                            }
                        }
                        Button {
                            text: qsTr("关于系统")
                            anchors.horizontalCenter: parent.horizontalCenter
                            font.bold: true         //jiacu
                            font.pointSize: 25
                            width: 400

                            onClicked: {
                                seventhAboutSystemPage.visible = true
                            }
                        }
                    }

                }
                Rectangle {
                    color: "steelblue"
                    width: content.width
                    height: 75

                    Row {
                        id: defaultPageDeviceCheckInfoArea
                        spacing: 25
                        width: parent.width

                        Label {
                            y: 10
                            color: "#565758"
                            text: qsTr("设备自检进度条：")
                            font.bold: true         //jiacu
                            font.pointSize: 25
                        }

                        Slider {
                            y: 20
                            x: 300
                            from: 0
                            to: 100
                            value: 25
                            width: 800
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
                        id: defaultPageVersionAndLOGOArea
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
/*
    // Hide the text fields' cursors when fullscreen handwriting is active.
    MouseArea {
        anchors.fill: parent
        visible: handwritingInputPanelActive
    }
*/

}
