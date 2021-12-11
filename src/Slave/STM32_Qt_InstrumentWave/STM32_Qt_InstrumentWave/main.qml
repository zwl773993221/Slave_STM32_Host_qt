import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.VirtualKeyboard 2.4

Window {
    id: mainWindow
    visible: true
    width: 1280
    height: 720
    title: qsTr("岩土工程检测仪")

    FirstDefaultPage {// @disable-check M31
        id: firstDefaultPage
        width: 1280
        height: 720
        visible: true // 设置"隐藏"
        anchors.centerIn: parent
    }
    //
    SecondCreateProjPage {// @disable-check M31
        id: secondCreateProjPage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }

    ThirdCollectionTableSettingPage {// @disable-check M31
        id: thirdCollectionTableSettingPage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }

    FourthShearWavePage {// @disable-check M31
        id: fourthShearWavePage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }
    FifthCompressWavePage {// @disable-check M31
        id: fifthCompressWavePage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }
    SixthDataManagePage {// @disable-check M31
        id: sixthDataManagePage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }
    SeventhAboutSystemPage {// @disable-check M31
        id: seventhAboutSystemPage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }
    SubDisplaySettingPage {// @disable-check M31
        id: subDisplaySettingPage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }
    SubInstrumentSettingPage {// @disable-check M31
        id: subInstrumentSettingPage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }

    SubWaveBrowsePage {
        id: subWaveBrowsePage
        width: 1280
        height: 720
        visible: false // 设置"隐藏"
        anchors.centerIn: parent
    }


    InputPanel {
        id: inputPanel
        z: 99
        x: 0
        y: mainWindow.height
        width: mainWindow.width

        states: State {
            name: "visible"
            when: inputPanel.active
            PropertyChanges {
                target: inputPanel
                y: mainWindow.height - inputPanel.height
            }
        }
        transitions: Transition {
            from: ""
            to: "visible"
            reversible: true
            ParallelAnimation {
                NumberAnimation {
                    properties: "y"
                    duration: 250
                    easing.type: Easing.InOutQuad
                }
            }
        }
    }

}
