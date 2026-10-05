import QtQuick 6.0
import org.kde.kirigami 2.20 as Kirigami
import org.kde.plasma.plasmoid 2.0
import org.kde.plasma.core 2.0 as PlasmaCore

PlasmoidItem {
    id: root

    Plasmoid.backgroundHints: PlasmaCore.Types.NoBackground

    Rectangle {
        anchors.fill: parent
        color: Kirigami.Theme.backgroundColor
        opacity: 0.8
        z: -1
    }

    compactRepresentation: CompactRepresentation {}
    fullRepresentation: FullRepresentation {}

    readonly property bool isConstrained: (plasmoid.formFactor == PlasmaCore.Types.Vertical || plasmoid.formFactor == PlasmaCore.Types.Horizontal)

    preferredRepresentation: isConstrained ? compactRepresentation : fullRepresentation
}
