import QtQuick 2.1
import QtQuick.Controls 1.0
import Qt.labs.folderlistmodel 2.1

Item {
    //Outside Container holding together.
    Rectangle {
        id: listArea
        anchors.fill: parent
        color: "#fffcca"

        //The Listview displays the songs at the designated location.
        ListView {
            id: tableView
            anchors.fill: parent
            focus: true
            highlight: Rectangle { color: "lightsteelblue"; radius: 6 }
            model: folderModel //The type of model the ListView selects.
            delegate: fileDelegate //This affects the information being displayed by the model.

            //This will select the current folder and display the songs located inside of it.
            FolderListModel {
                id: folderModel
                folder: "file:/C:/Users/Dale/Desktop/YAMA_Music_Player-master/test_audio"
                nameFilters: [ "*" ] //NOTE: Need to apply filters for every known music file.
                showDirs: true
                showDotAndDotDot: false
                sortField: "Name"
            }

            //This component is the Deletgate which dictates what you can do to the information gathered in the model.
            Component {
                id: fileDelegate
                Text {
                    id: filesName
                    font.family: "calibri"
                    font.pixelSize: 20
                    text: fileName

                    MouseArea {
                        id: mouse_area1
                        anchors.fill: parent
                        onClicked: tableView.currentIndex = index

                        onDoubleClicked: {
                            audio.play_on_click(folderModel.get(index, "filePath"));
                        }
                    }
                }
            }

            //This displays the currently selected file and displays the index in the console. Useful for testing purposes.
            onCurrentIndexChanged: {
                console.debug("listView currentIndex:", currentIndex)
            }
        }
    }
}
