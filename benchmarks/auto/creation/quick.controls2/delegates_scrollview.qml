import QtQuick 2.0
import QmlBench 1.0
import QtQuick.Controls 2.2

// Tests the creation of QQC2's ScrollView type.
CreationBenchmark {
    id: root
    count: 20
    staticCount: 250
    delegate: ScrollView {
        x: Math.random() * root.width - width
        y: Math.random() * root.height - height
        width: 100
        height: 100
        Item {
            implicitWidth: 200
            implicitHeight: 200
        }
        ScrollBar.vertical.active: true
        ScrollBar.vertical.pressed: index % 3 === 1
        ScrollBar.horizontal.active: true
        ScrollBar.horizontal.pressed: index % 3 === 2
    }
}
