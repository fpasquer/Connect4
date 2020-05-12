import QtQuick 2.0

Item {
    id: cellManager
    property alias indexText: index.text
    readonly property int sizeSquare: 46

    width: sizeSquare
    height: sizeSquare

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
            text: "?"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: 12
        }

        MouseArea {
            id: mouseArea
            anchors.fill: parent
            onClicked: {
                var x = parseInt(parseInt(index.text) / gridManager.rowNumber)
                var y = parseInt(parseInt(index.text) % gridManager.colNumber)
                console.log("x => " + x + " y => " + y + " index : " + indexText)
            }
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:18;anchors_y:20}
}
##^##*/
