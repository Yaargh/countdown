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

    PlasmaComponents.Label {
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        text: countdown()
    }
}
