// main.qml
import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

Item {
    function countdown(){
        var dd = new Date().getDate();
        var mm = (new Date().getMonth())+1;
        var yyyy = new Date().getFullYear();
        var tod =(mm+'/'+dd+'/'+yyyy);
        var nowdate = new Date(tod);
        var igdate = new Date("01/20/2021");
        var diff = (igdate.getTime() - nowdate.getTime()) / (1000 * 3600 * 24);
        var tdiff = Math.trunc(diff);
        return tdiff;
    }

    // Always display the compact view.
    // Never show the full popup view even if there is space for it.
    Plasmoid.preferredRepresentation: Plasmoid.compactRepresentation

    Plasmoid.compactRepresentation: Item {
	
	PlasmaComponents.Label {
            id: label
	    text: countdown()
	}
    }

    Plasmoid.fullRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.minimumHeight: label.implicitHeight
        Layout.preferredWidth: 320 * units.devicePixelRatio
        Layout.preferredHeight: 240 * units.devicePixelRatio
        
        PlasmaComponents.Label {
            id: label
            anchors.fill: parent
            text: countdown()
            horizontalAlignment: Text.AlignHCenter
        }
    }       
}
