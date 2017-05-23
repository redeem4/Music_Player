import QtQuick 2.0
import QtQuick.Controls 1.4

Item {
    id: item1
    width: 40
    height: 40
    
    
    Button {
        id: volumeButton
        x: 0
        y: 160
        width: 40
        height: 40
        text: qsTr("Vol")
        enabled: true
        anchors.left: parent.left
        anchors.leftMargin: 0
        anchors.bottom: parent.bottom
        checkable: true
    }
    
    Slider {
        id: volumeBar
        width: 40
        height: 160
        anchors.horizontalCenter: volumeButton.horizontalCenter
        enabled: volumeButton.checked
        visible: volumeButton.checked
        anchors.bottom: volumeButton.top
        orientation: Qt.Vertical
        maximumValue: 100.0
        stepSize: 5.0
        value: 80.0
        tickmarksEnabled: true
        onValueChanged: audio.on_sliderVolume_sliderMoved(volumeBar.value)
    }
}
