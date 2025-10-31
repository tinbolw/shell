import Quickshell

import "modules"

Scope {
  Variants {
    model: Quickshell.screens

    PanelWindow {
      required property var modelData
      screen: modelData
      color: "transparent";

      anchors {
        top: true
        left: true
        right: true
      }

      implicitHeight: 30

      // positioning system:
      // align left, new modules go right
      // center, new modules go right
      // align right, new modules go left

      // Row {}

      Workspaces {
        anchors.left: parent.left;
        anchors.verticalCenter: parent.verticalCenter;
      }

      WindowTitle {
        anchors.centerIn: parent
      }

      ClockWidget {
        anchors.verticalCenter: parent.verticalCenter;
        anchors.right: parent.right;
      }
    }
  }
}