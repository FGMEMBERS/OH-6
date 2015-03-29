###############################################################################
## 
##  Nasal for dual control of the OH-6 over the multiplayer network.
##
##  Copyright (C) 2009  Anders Gidenstam  (anders(at)gidenstam.org)
##  Edited for OH-6 by icecode
##  This file is licensed under the GPL license version 2 or later.
##
###############################################################################


var DCT = dual_control_tools;


# Pilot/copilot aircraft identifiers. Used by dual_control.
var pilot_type   = "Aircraft/OH-6/Models/OH-6.xml";
var copilot_type = "Aircraft/OH-6/Models/OH-6-cp.xml";

props.globals.initNode("/sim/remote/pilot-callsign", "", "STRING");

######################################################################

var copilot_view = "Co-pilot View";

props.globals.initNode("/sim/remote/pilot-callsign", "", "STRING");

var pilot_connect_copilot = func (copilot) {
}


var pilot_disconnect_copilot = func {
}


var copilot_connect_pilot = func (pilot) {

	var p = "sim/current-view/name";
	pilot.getNode(p, 1).alias(props.globals.getNode(p));
	p = "instrumentation/altimeter/indicated-altitude-ft";
	pilot.getNode(p, 1).alias(props.globals.getNode(p));
	p = "instrumentation/altimeter/setting-inhg";
	pilot.getNode(p, 1).alias(props.globals.getNode(p));
	p = "orientation/heading-deg";
	pilot.getNode(p, 1).alias(props.globals.getNode(p));
	p = "orientation/heading-magnetic-deg";
	pilot.getNode(p, 1).alias(props.globals.getNode(p));
	return[];

}

var copilot_disconnect_pilot = func {
}


var set_copilot_wrappers = func (pilot) {
}

