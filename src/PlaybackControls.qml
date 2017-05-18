import QtQuick 2.5
import QtQuick.Controls 1.4

Item {
    
    Row {
        id: row
        anchors.right: parent.right
        anchors.rightMargin: 248
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        
        Button {
            id: prev
            width: 32
            height: 32
            text: qsTr("Prev")
        }
        
        
        Button {
            id: playPause
            width: 32
            height: 32
            text: qsTr("Play")
        }
        
        Button {
            id: next
            width: 32
            height: 32
            text: qsTr("Next")
        }
        
        Button {
            id: stop
            width: 32
            height: 32
            text: qsTr("Stop")
        }
        
        Button {
            id: shuffle
            width: 32
            height: 32
            text: qsTr("Shuffle")
        }
        
        Button {
            id: loop
            width: 32
            height: 32
            text: qsTr("Loop")
        }
        
        Slider {
            id: seekBar
            anchors.verticalCenter: parent.verticalCenter
        }
    }
}
