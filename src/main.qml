import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Dialogs 1.0

ApplicationWindow {
    id: applicationWindow
    visible: true
    width: 1024
    height: 800
    minimumHeight: 500
    minimumWidth: 800
    title: qsTr("YAMA Music Player")
    
    // This cannot be moved to another file since
    // it is a property of ApplicationWindow
    menuBar: MenuBar {
        Menu {
            title: qsTr("File")
            MenuItem {
                text: qsTr("&Open")
                onTriggered: fileOpenDialog.visible = true
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
    
    //Dialog Box that opens when you select "Open" from the File Menu
    FileDialog {
        id: fileOpenDialog
        title: "Please choose a file"
        folder: shortcuts.home
        onAccepted: {
            console.log("You chose: " + fileDialog.fileUrls)
        }
        onRejected: {
            console.log("Canceled")
        }
    }

    ArtView {
        id: artView
        y: 373
        width: 192
        height: 192
        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }
    
    
    
    QuickNavigationList {
        id: quickNavigationList
        anchors.right: artView.right
        anchors.bottom: artView.top
        anchors.left: parent.left
        anchors.top: parent.top
    }
    
    
    
    PlaybackControls {
        id: playbackControls
        height: 40
        anchors.bottom: parent.bottom
        anchors.left: artView.right
    }
    
    
    Tabs {
        id: tabs
        anchors.bottom: playbackControls.top
        anchors.right: parent.right
        anchors.left: artView.right
        anchors.top: parent.top
    }
    
    VolumeControl {
        anchors.bottom: parent.bottom
        anchors.left: playbackControls.right
    }
}
