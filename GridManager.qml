import QtQuick 2.0

Item {
    id: gridManager
    readonly property int sizeSquare: 50
    readonly property int rowNumber: 6
    readonly property int colNumber: 7
    width: sizeSquare * colNumber
    height: sizeSquare * rowNumber

    Grid {
        id: grid
        anchors.fill: parent
        rows: parent.rowNumber
        columns: parent.colNumber
        Repeater{ model: gridManager.rowNumber * gridManager.colNumber
            Cell {
                indexText: index
                width: gridManager.width / gridManager.colNumber
                height: gridManager.height / gridManager.rowNumber
            }
        }
    }
}






