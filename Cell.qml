import QtQuick 2.0

Item {
    id: cellManager
    property alias indexText: index.text

    function setColor(color) {
        cell.color = color
    }

    Rectangle {
        id: background
        color: "#0000ff"
        anchors.fill: parent
    }

    Rectangle {
        id: cell
        color: "#ffffff"
        radius: width / 2
        anchors.rightMargin: 3
        anchors.leftMargin: 3
        anchors.bottomMargin: 3
        anchors.topMargin: 3
        anchors.fill: parent

        Text {
            id: index
            x: 16
            y: 13
            text: "?"
            font.pointSize: 15
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }
    }


}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:18;anchors_y:20}
}
##^##*/
