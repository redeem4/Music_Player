import QtQuick 2.7
import QtQuick.Controls 1.5
import QtQuick.Dialogs 1.2

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("YAMA Music Player")

    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: console.log("Open action triggered");
            }
            MenuItem {
                text: qsTr("Exit")
                onTriggered: Qt.quit();
            }
        }

        Menu {
            title: qsTr("Playback")
        }

        Menu {
            title: qsTr("Audio")
        }

        Menu {
            title: qsTr("View")
        }

        Menu {
            title: qsTr("Help")
            MenuItem {
                text: qsTr("About")
                onTriggered: console.log("Help Triggered");
            }
        }
    }

    MessageDialog {
        id: messageDialog
        title: qsTr("May I have your attention, please?")

        function show(caption) {
            messageDialog.text = caption;
            messageDialog.open();
        }
    }

    GroupBox {
        id: groupBox
        x: 159
        y: 352
        width: 481
        height: 128
        title: qsTr("")

        Button {
            id: button
            x: 0
            y: 21
            width: 55
            height: 47
            text: qsTr("Play")
        }

        Button {
            id: button1
            x: 61
            y: 33
            width: 30
            height: 26
            text: qsTr("Previous")
        }

        Button {
            id: button2
            x: 97
            y: 33
            width: 30
            height: 26
            text: qsTr("Stop")
        }

        Button {
            id: button3
            x: 133
            y: 33
            width: 30
            height: 26
            text: qsTr("Next")
        }

        Button {
            id: button4
            x: 178
            y: 33
            width: 30
            height: 26
            text: qsTr("Loop")
        }

        Button {
            id: button5
            x: 214
            y: 33
            width: 30
            height: 26
            text: qsTr("Random")
        }

        Slider {
            id: sliderHorizontal
            x: 265
            y: 37
        }
    }

    Image {
        id: image
        x: 0
        y: 352
        width: 158
        height: 128
        source: "qrc:/qtquickplugin/images/template_image.png"
    }

    GroupBox {
        id: groupBox2
        x: 0
        y: 0
        width: 158
        height: 351
        title: qsTr("File System Viewer")
    }

    GroupBox {
        id: groupBox1
        x: 159
        y: 0
        width: 481
        height: 72
        title: qsTr("Tab Bar")
    }

    MainForm {
        id: mainForm
        x: 159
        y: 72
        width: 481
        height: 279
    }
}
