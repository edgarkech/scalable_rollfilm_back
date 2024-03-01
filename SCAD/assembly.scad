// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;

// include all single parts from the other SCAD files

// baseplate bottom
// color([20,0,170, 0.75]){
include <baseplate_bottom.scad>;
//}

// baseplate top
//color([0,20,230, 0.75]){
include <baseplate_top.scad>;
//}

// film insert
//color([0,230,0, 0.85]){
include <film_insert.scad>;
//}



