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
import QtCharts 2.3

import "content"

Rectangle {
    width: 1280
    height: 720
    color: "#F6F6F6"
    id: fourthShearWave

    // Only set with CONFIG+=disable-desktop.
    property bool handwritingInputPanelActive: false

    property int timer1: 0
    property int timer2: 0
    property bool startTimer: false

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
            height: flickable.height

            onClicked: forceActiveFocus()
        }

        Column {
            id: shareWaveArea
            spacing: 5
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
                        }
                    }
                    Button {
                        id: buttonShear
                        text: qsTr("剪切波")
                        background: Rectangle{
                            color: "peru"
                        }

                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("压缩波")
                        onClicked: {
                            fifthCompressWavePage.visible = true
                            fourthShearWavePage.visible = false
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

                     Timer{// @disable-check M300
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
                height: 60

                Row {
                    spacing: 15
                    x: 60
                    y: 10

                    Button {
                        text: qsTr("仪器设置")
                        width: 100
                        onClicked: {
                            subInstrumentSettingPage.visible = true
                        }
                    }
                    Button {
                        text: qsTr("显示设置")
                        width: 100

                        onClicked: {
                            subDisplaySettingPage.visible = true
                        }
                    }
                    Button {
                        text: qsTr("波列浏览")
                        width: 100

                        onClicked: {
                            subWaveBrowsePage.visible = true
                        }
                    }
                    Label {
                        y: 12
                        color: "#565758"
                        text: qsTr("当前深度：")
                        font.bold: true         //jiacu
                    }
                    TextField {
                        id: currentDepthField
                        width: 150
                        placeholderText: "depth "
                        enterKeyAction: EnterKeyAction.Next
                        onAccepted: textArea.focus = true

                        onPressed: {
                            inputX = 1
                            inputY = y + height
                            inputPanel.visible = true
                        }
                    }

                    Label {
                        y: 12
                        color: "#565758"
                        text: qsTr("上一测点：")
                        font.bold: true         //jiacu
                    }
                    TextField {
                        id: beforTestPointField
                        width: 150
                        placeholderText: "befor p"
                        enterKeyAction: EnterKeyAction.Next
                        onAccepted: textArea.focus = true

                        onPressed: {
                            inputX = 1
                            inputY = y + height
                            inputPanel.visible = true
                        }
                    }
                    Label {
                        y: 12
                        color: "#565758"
                        text: qsTr("下一测点：")
                        font.bold: true         //jiacu
                    }
                    TextField {
                        id: nextTestPointField
                        width: 150
                        placeholderText: "next p"
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

            Rectangle {
                color: "steelblue"
                width: content.width
                height: 60

                Row {
                    spacing: 15
                    x: 60
                    y: 10

                    Button {
                        text: qsTr("横向缩小")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("横向放大")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("纵向缩小")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("纵向放大")
                        width: 100
                        onClicked: {
                        }
                    }

                    Button {
                        text: qsTr("保存当前")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("恢复设置")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("上一点")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("下一点")
                        width: 100
                        onClicked: {
                        }
                    }
                    Button {
                        text: qsTr("开始测量")
                        width: 100
                        font.pixelSize: 15
                        font.bold: true         //jiacu
                        onClicked: {
                            startTimer = true
                        }
                    }
                }
            }

            Row {
                spacing: 10

                Column {
                    spacing: 10

                    ChartView {
                        id: chartViewOk1
                        x: 0
                        y: 200
                        width: 1090
                        height: 250
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
                             id: myAxisX1
                             min: 0
                             max: 10>timer1? 10:timer1+1
                             tickCount: 11
                             labelsColor: "#ffffff"
                             labelsFont.pointSize: 13
                             labelsFont.bold: true
                             labelFormat: '%d'
                        }
                        ValueAxis{
                            id:myAxisY1
                            min:-30
                            max:30
                            tickCount: 8
                            labelsColor: "#ffffff"
                            labelsFont.pointSize: 10
                            labelsFont.bold: true
                            labelFormat: '%d'
                        }

                        LineSeries {
                            id:lineSeries1
                            name: "LineSeries1"
                            axisX: myAxisX1
                            axisY: myAxisY1
                            color: "#00ffff"
                            width: 3
                        }

                        Timer{//@disable-check M300
                            interval: 1000
                            running: true
                            repeat: true
                            onTriggered: {
                                if (startTimer)
                                    lineSeries1.append(timer1,(Math.random()>0.5?Math.random():-(Math.random()))*30)
                                    timer1 = timer1+1
                            }
                        }

                    }

                    ChartView {
                        id: chartViewOk2
                        x: 0
                        y: 440
                        width: 1090
                        height: 250
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
                             id: myAxisX2
                             min: 0
                             max: 10>timer2? 10:timer2+1
                             tickCount: 11
                             labelsColor: "#ffffff"
                             labelsFont.pointSize: 13
                             labelsFont.bold: true
                             labelFormat: '%d'
                        }
                        ValueAxis{
                            id:myAxisY2
                            min:-30
                            max:30
                            tickCount: 8
                            labelsColor: "#ffffff"
                            labelsFont.pointSize: 10
                            labelsFont.bold: true
                            labelFormat: '%d'
                        }

                        LineSeries {
                            id:lineSeries2
                            name: "LineSeries2"
                            axisX: myAxisX2
                            axisY: myAxisY2
                            color: "#00ffff"
                            width: 3
                        }

                        Timer{//@disable-check M31
                            interval: 1000
                            running: true
                            repeat: true
                            onTriggered: {
                                if (startTimer)
                                    lineSeries2.append(timer2,(Math.random()>0.5?Math.random():-(Math.random()))*30)
                                    timer2 = timer2+1
                            }
                        }

                    }
                }

                Rectangle {
                    color: "steelblue"
                    width: 180
                    height: 490
                    x: 1100
                    y: 15

                    Column {
                        spacing: 40
                        x: 60
                        y: 20

                        Button {
                            text: qsTr("正剪")
                            width: 60
                            onClicked: {
                            }
                        }
                        Button {
                            text: qsTr("反剪")
                            width: 60
                            onClicked: {
                            }
                        }
                        Button {
                            text: qsTr("叠加")
                            width: 60
                            onClicked: {
                            }
                        }
                        Button {
                            text: qsTr("撤叠")
                            width: 60
                            onClicked: {
                            }
                        }
                        Button {
                            text: qsTr("保存")
                            width: 60
                            onClicked: {
                            }
                        }
                        Button {
                            text: qsTr("退出")
                            width: 60

                            onClicked: {
                                fourthShearWavePage.visible = false
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
/*
    property int inputX: 0
    property int inputY: thirdCollectionTableSettingPage.height

    InputPanel {
        id: inputPanel
        z: 99

        x: fourthShearWave.x
        y: fourthShearWave.height

        width:fourthShearWave.width - 100
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
