
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;



vWinderBladeOutside_l = 6;
vWinderBladeOutside_w = 10-vTolerance;
vWinderBladeOutside_h = 2;

vWinderBladeInside_l = 8;
vWinderBladeInside_w = 6;
vWinderBladeInside_h = 2;




hull(){
cuboid([vWinderBladeOutside_l, vWinderBladeOutside_w, vWinderBladeOutside_h], anchor=LEFT, chamfer=vWinderBladeEdgeCutOff, edges=[FRONT+RIGHT, BACK+RIGHT]);
cuboid([vWinderBladeInside_l, vWinderBladeInside_w, vWinderBladeInside_h], anchor=RIGHT);
}