import QtQuick 2.0

Item {
    id: gridManager
    readonly property int sizeSquare: 50
    readonly property int rowNumber: 6
    readonly property int colNumber: 7
    property int clickCounter : 0
    width: sizeSquare * colNumber
    height: sizeSquare * rowNumber

    function cellClicked(x) {
        var cell = provideCell(x)
        var color = provideColor()

        if (cell !== null) {
            cell.cellColor = color
            cell.empty = false
            clickCounter++
        }
    }

    function provideColor()
    {
        if ((clickCounter % 2) === 0) {
            return "#ff0000"
        }
        return "#ffff00"
    }

    function provideCell(x) {
        var cells = grid.data
        var index = 0
        var ret = null;
        var maxIndex = rowNumber * colNumber
        var cell = null

        for (var y = 0; y < rowNumber; y++) {
            index = y * colNumber + x
            if (index < maxIndex) {
                cell = cells[index]
                if (cell.empty === true) {
                    ret = cell
                }
            }
        }
        return ret
    }

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
                cellButton.onClicked: {
                    var x = Math.trunc(index % gridManager.colNumber)
                    gridManager.cellClicked(x)
                }
            }
        }
    }
}


