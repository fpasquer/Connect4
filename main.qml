import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    id: window
    visible: true
    width: 640
    height: 480
    title: qsTr("Connect 4")

    GridManager {
        id: gridManager
        x: 30
        y: 112
    }

    DashBoard {
        id: dashBoard
        x: 440
        width: 200
        height: 480
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
    }
}

/*##^##
Designer {
    D{i:1;anchors_x:53;anchors_y:36}D{i:2;anchors_y:59}
}
##^##*/
