import QtQuick 2.0
import QtQuick.Controls 2.3

Item {
    width: 200
    Rectangle {
        id: rectangle
        width: 403
        color: "#81ec68"
        anchors.fill: parent

        Text {
            id: element
            x: 50
            y: 25
            text: qsTr("CONNECT 4")
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: 20
        }

        Slider {
            id: slider
            x: 8
            y: 74
            width: 150
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            value: 0.5
        }
    }

}
