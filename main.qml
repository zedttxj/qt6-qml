import QtQuick
import QtQuick.Controls
import QtQuick.Layouts

Window {
    width: 400
    height: 300
    visible: true
    title: "Counter App"

    ListModel {
        id: testArray
        ListElement {
            name: "test1"
            count: 0
        }
        ListElement {
            name: "test2"
            count: 0
        }
    }

    Rectangle {
        width: 300
        height: parent.height
        anchors.centerIn: parent
        color: "lightgray"
        ColumnLayout {
            anchors.fill: parent
            spacing: 10
            Item {
                Layout.fillHeight: true
            }
            Repeater {
                model: testArray
                delegate: Rectangle {
                    width: parent.width
                    height: 40
                    color: hoverHandler.hovered ? "#878787" : "lightblue"

                    HoverHandler {
                        id: hoverHandler
                    }

                    TapHandler {
                        onTapped: {
                            testArray.setProperty(index, "count", count + 1);
                        }
                    }

                    Text {
                        anchors.centerIn: parent
                        text: name + " _ Clicked:" + count + " times"
                    }
                }
            }
            Item {
                Layout.fillHeight: true
            }
        }
    }
}
