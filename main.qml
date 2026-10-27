import QtQuick
import QtQuick.Controls

Window {
    width: 400
    height: 300
    visible: true
    title: "Counter App"

    Column {
        anchors.centerIn: parent
        spacing: 20

        Text {
            text: "Count: " + counterController.count
            font.pixelSize: 28
        }

        Button {
            text: "Increment"
            onClicked: counterController.increment()
        }
    }
}
