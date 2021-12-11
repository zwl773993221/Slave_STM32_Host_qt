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
    id: createProjectPage

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
                        id: createProjectPageButon
                        background: Rectangle {
                            //radius: createProjectPageButon.radius
                            color: "peru"
                        }

                        onClicked: {
                            thirdCollectionTableSettingPage.visible = true
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
/*
            Label {
                color: "#565758"
                text: qsTr("工程信息")
                font.bold: true         //jiacu
                font.pixelSize: 16
            }
*/
            Row {
                id: baseInfoField
                spacing: 15
                x: 0
                y: 12
                width: parent.width-20

                Rectangle {
                    color: "steelblue"
                    width: (content.width-10)/2
                    height: 450

                    Row {
                        id: baseInfoArea
                        spacing: 20
                        x: 0
                        y: 30
                        width: (parent.width-10)/2

                        Column {
                            spacing: 30

                            Row {
                                id: projeInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("工程名称：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    x: 100
                                    id: projNameField
                                    width: 500
                                    placeholderText: "Project name"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                            Row {
                                id: testUnitInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("检测单位：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    x: 100
                                    id: testUnitField
                                    width: 500
                                    placeholderText: "Check company"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                            Row {
                                id: inspectorInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("检测人员：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    id: inspectorField
                                    width: 500
                                    placeholderText: "Who ?"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                            Row {
                                id: testDateInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("检测日期：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    id: testDateField
                                    width: 500
                                    placeholderText: "Check date"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
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
                                TextField {
                                    id: vanueCategoryField
                                    width: 500
                                    placeholderText: "Location type ?"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                        }
                    }
                }

                Rectangle {
                    color: "steelblue"
                    width: (content.width-20)/2
                    height: 450
                    x: 660

                    Row {
                        id: holeInfoArea
                        spacing: 20
                        x: 0
                        y: 30
                        width: (parent.width-10)/2
/*
                        Label {
                            color: "#565758"
                            text: qsTr("钻孔信息")
                            anchors.left: parent.left
                            font.bold: true         //jiacu
                        }*/
                        Column {
                            spacing: 30

                            Row {
                                id: holeBaseInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("钻孔名称：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    id: holeNameField
                                    width: 500
                                    placeholderText: "Hole name ?"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
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
                                TextField {
                                    id: orificeElevationField
                                    width: 500
                                    placeholderText: "Height ?"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
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
                                TextField {
                                    id: drillDepthField
                                    width: 500
                                    placeholderText: "Depth ?"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                            Row {
                                id: sourHoleHorizonDistanInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("源孔水平距：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    id: sourHoleHorizonDistanField
                                    width: 485
                                    placeholderText: "Horizontal distance"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                            Row {
                                id: sourHoleVerticalDistanInfoArea
                                spacing: 20

                                Label {
                                    color: "#565758"
                                    text: qsTr("源孔竖直距：")
                                    font.bold: true         //jiacu
                                }
                                TextField {
                                    id: sourHoleVerticalDistanField
                                    width: 485
                                    placeholderText: "Vertical distance"
                                    enterKeyAction: EnterKeyAction.Next
                                    onAccepted: textArea.focus = true

                                    onPressed: {
                                        inputX = 1
                                        inputY = y + height
                                        inputPanel.visible = true
                                    }
                                }
                            }
                        }
                    }
                }
            }

            Rectangle {
                color: "steelblue"
                width: content.width
                height: 100
                y: 500

                Label {
                    color: "#565758"
                    text: qsTr("操作区域：")
                    anchors.left: parent.left
                    font.bold: true         //jiacu
                }
                Row {
                    id: operatorArea
                    spacing: 40
                    x: 250
                    y: 30
                    width: parent.width

                    Button {
                        text: qsTr("获取默认值")
                        width: 200

                        onClicked: {
                            projNameField.text = "岩土工程检测仪"
                            testUnitField.text = "四川华晖盛世探测技术有限公司"
                            inspectorField.text = "张三"
                            testDateField.text = "2021-12-10"
                            vanueCategoryField.text = "普通"

                            holeNameField.text = "四川岩土"
                            orificeElevationField.text = "20m"
                            drillDepthField.text = "20m"
                            sourHoleHorizonDistanField.text = "100cm"
                            sourHoleVerticalDistanField.text = "100cm"
                        }

                    }
                    Button {
                        text: qsTr("应用")
                        width: 200


                    }
                    Button {
                        text: qsTr("上一步")
                        width: 200

                        onClicked: {
                            secondCreateProjPage.visible = false
                        }
                    }
                    Button {
                        text: qsTr("下一步")
                        width: 200

                        onClicked: {
                            thirdCollectionTableSettingPage.visible = true
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
/*
    property int inputX: 0
    property int inputY: createProjectPage.height

    InputPanel {
        id: inputPanel
        z: 99

        x: vanueCategoryField.x
        y: createProjectPage.height

        width:createProjectPage.width - 100
        visible: false

        externalLanguageSwitchEnabled: false

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                // 将键盘顶部放在屏幕底部会使其隐藏起来
                x: inputX
                y: inputY
            }
        }

        Component.onCompleted: {// @disable-check M31
            VirtualKeyboardSettings.locale = "eesti" // 复古键盘样式
            VirtualKeyboardSettings.wordCandidateList.alwaysVisible = true
            VirtualKeyboardSettings.activeLocales = "lang-en_GB lang-zh_CN"
            //VirtualKeyboardSettings.styleName = "retro"
        }

        // 这种集成方式下点击隐藏键盘的按钮是没有效果的，只会改变active，因此我们自己处理一下
        onActiveChanged: {
            if(!active) { visible = false }
        }


    }
*/
}
