pragma Singleton

import Quickshell
import QtQuick

Singleton {
  id: root
  readonly property string time: {
    // TODO expand to MM-dd-yyyy HH:mm on click
    Qt.formatDateTime(clock.date, "HH:mm")
  }

  SystemClock {
    id: clock
    precision: SystemClock.Minutes
  }
}