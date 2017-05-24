import QtQuick 2.5
import QtQuick.Controls 1.4

Item {
    TabView {
        id: tabView
        anchors.fill: parent
        
        Tab {
            id: playlist
            source: "Playlist.qml"
            title: "Playlist"
        }
        
        Tab {
            id: albumGrid
            source: "AlbumGrid.qml"
            title: "AlbumGrid"
        }
    }
}
