import QtQuick
import Quickshell.Hyprland
import Qt5Compat.GraphicalEffects // for dropshadow

Row {
  // spacing: 20;
  Repeater {
    // shift index forward by one to hide special workspace
    model: Hyprland.workspaces.values.length - 1;
    delegate: Item {
      required property int index;
      property var workspace: Hyprland.workspaces.values[index + 1];
      // id: "workspace";

      width: 26;
      height: 30; // need to make it inherit from bar height
      Text {
        color: "white";
        text: workspace.name;
        anchors {
          horizontalCenter: parent.horizontalCenter;
          verticalCenter: parent.verticalCenter;
        }
        font.underline: Hyprland.focusedWorkspace.name == workspace.name; // eventually add glowing bottom like waybar
        // DropShadow {
        //   // anchors.fill: butterfly
        //   horizontalOffset: 3
        //   verticalOffset: 3
        //   radius: 8.0
        //   color: "#80000000"
        //   source: "workspace"
        // }
      }
      TapHandler {
        // suppress warning for when current workspace is activated again
        onTapped: workspace.activate();
      }
    }
  }
}