pragma Singleton
import QtQuick 2.15

QtObject {
    readonly property string name: "RetroCow"
    readonly property string version: "0.1.0"
    readonly property string homepage: "https://github.com/Varghh/RetroCow-Amberline-"
    readonly property string releasesApi: "https://api.github.com/repos/Varghh/RetroCow-Amberline-/releases/latest"
    readonly property url mascotSource: Qt.resolvedUrl("assets/branding/retrocow-mascot.png")
    readonly property string paletteMemoryKey: "retrocow.selectedTheme"
    readonly property string updateMemoryKey: "retrocow.lastUpdateNotified"
}
