import QtQuick 2.0
import QmlBench 1.0

// Test the creation of an Image with fairly stock settings (synchronous, no AA)
CreationBenchmark {
    id: root;
    count: 50;
    staticCount: 250;

    property var names: [
        "butterfly-wide.png",
        "butterfly-half.png",
        "butterfly-collapsed.png"
    ];

    delegate: Image {
        x: QmlBench.getRandom() * (root.width - width)
        y: QmlBench.getRandom() * (root.height - height)
        source: "qrc:///shared/" + root.names[index % 3];
        width: 20
        height: 20
    }
}
