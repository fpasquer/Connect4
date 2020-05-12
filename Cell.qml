import QtQuick 2.0

Item {
    id: cellManager

    readonly property int sizeSquare: 46
    property bool empty: true
    property alias indexText: index.text
    property alias cellButton: cellButton
    property alias cellColor: cell.color

    width: sizeSquare
    height: sizeSquare

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
            font.pixelSize: 15
        }

        MouseArea {
            id: cellButton
            anchors.fill: parent
//            onClicked: {
//                var x = Math.trunc(index.text % gridManager.colNumber)
//                var y = Math.trunc(index.text / gridManager.colNumber)
//                console.log("x => " + x + " y => " + y + " index : " + indexText)
//            }
        }
    }
}

/*##^##
Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:18;anchors_y:20}
}
##^##*/
