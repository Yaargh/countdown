//    Countdown: A KDE plasmoid that counts down the days.
//    Copyright 2020 Corry Clinton <corry.clinton@protonmail.com>
//
//    This program is free software: you can redistribute it and/or modify
//    it under the terms of the GNU General Public License as published by
//    the Free Software Foundation, either version 3 of the License, or
//    (at your option) any later version.
//
//    This program is distributed in the hope that it will be useful,
//    but WITHOUT ANY WARRANTY; without even the implied warranty of
//    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//    GNU General Public License for more details.
//
//    You should have received a copy of the GNU General Public License
//    along with this program.  If not, see <https://www.gnu.org/licenses/>.

import QtQuick 2.0
import QtQuick.Layouts 1.0
import org.kde.plasma.components 2.0 as PlasmaComponents
import org.kde.plasma.plasmoid 2.0

Item {
    // Calculate number of days remaining	
    function countdown(){
        var dd = new Date().getDate();
        var mm = (new Date().getMonth())+1;
        var yyyy = new Date().getFullYear();
        var tod =(mm+'/'+dd+'/'+yyyy);
        var nowdate = new Date(tod);
        var igdate = new Date("01/20/2021");
        var diff = (igdate.getTime() - nowdate.getTime()) / (1000 * 3600 * 24);
        var tdiff = Math.trunc(diff);
        if (tdiff < 1) {
	    tdiff = "No more";
	}
	return tdiff;
    }

    Plasmoid.compactRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.minimumHeight: label.implicitHeight
	    
	PlasmaComponents.Label {
            id: label
	    text: countdown() + ' days.'
	    horizontalAlignment: Text.AlignHCenter
	    verticalAlignment: Text.AlignVCenter
	    font.bold: true
        }

	// Refresh the calculation
	Timer {
	    id: timer; interval: 5000; repeat: true; running: true
	    onTriggered:
	        {
		    label.text = countdown() + ' days.'
                } 
         }
    }

    Plasmoid.fullRepresentation: Item {
        Layout.minimumWidth: label.implicitWidth
        Layout.minimumHeight: label.implicitHeight
        Layout.preferredWidth: 320 * units.devicePixelRatio
        Layout.preferredHeight: 120 * units.devicePixelRatio
      
        PlasmaComponents.Label {
            id: label
            anchors.fill: parent
	    
	    text: countdown() + " days."
            horizontalAlignment: Text.AlignHCenter
	    verticalAlignment: Text.AlignVCenter
        }

	// Refresh the calculation
	Timer {
	    id: timer; interval: 5000; repeat: true; running: true
	    onTriggered:
	        {
		    label.text = countdown() + " days."
                } 
        }
    }
}
