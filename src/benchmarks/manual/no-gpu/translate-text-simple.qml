import QtQuick 2.2
import QmlBench 1.0

// Move images around using a global property binding, to be compared with a
// number of other similar ways to move them around.
Benchmark {
    id: root;

    count: 10
    staticCount: 200

    property int frameCount
    onTChanged: {
        frameCount++
    }

    Repeater {
        model: root.count
        Text {
            property real diffx: (QmlBench.getRandom() - 0.5 ) * index
            property real diffy: (QmlBench.getRandom() - 0.5 ) * index
            x: ( QmlBench.getRandom() * (root.width - width) + diffx * frameCount) % root.width
            y: ( QmlBench.getRandom() * (root.height - height) + diffy * frameCount) % root.height
            text: "Qt Quick!"
            font.pixelSize: 10
        }
    }
}

