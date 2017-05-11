import QtQuick 2.0
import QmlBench 1.0
import QtQuick.Controls 2.0

// Tests the creation of QQC2's Switch type.
CreationBenchmark {
    id: root
    count: 20
    staticCount: 1000
    delegate: Switch {
        x: Math.random() * root.width - width
        y: Math.random() * root.height - height
        text: "Switch"
        checked: index % 2
    }
}
