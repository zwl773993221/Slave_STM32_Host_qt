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
    color: "steelblue"

    Column {
        id: systemInformation
        spacing: 50
        y: 50
        width: parent.width

        Button {
            text: qsTr("系统版本")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true         //jiacu
            font.pointSize: 25
            width: 400
            onPressed: {
                text: qsTr("系统版本:HH-BK--V0.0.1")
            }
            onDoubleClicked: {
                text: qsTr("系统版本")
            }
        }

        Button {
            text: qsTr("使用说明")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true         //jiacu
            font.pointSize: 25
            width: 400
            onPressed: {
                text: qsTr("none")
            }
            onDoubleClicked: {
                text: qsTr("使用说明")
            }
        }

        Button {
            text: qsTr("帮助")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true         //jiacu
            font.pointSize: 25
            width: 400
            onPressed: {
                text: qsTr("none")
            }
            onDoubleClicked: {
                text: qsTr("帮助")
            }
        }

        Button {
            text: qsTr("上一步")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true         //jiacu
            font.pointSize: 25
            width: 400
            onClicked: {
                seventhAboutSystemPage.visible = false
            }
        }

        Button {
            text: qsTr("退出系统")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true         //jiacu
            font.pointSize: 25
            width: 400

            onClicked: {
                Qt.quit()
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
