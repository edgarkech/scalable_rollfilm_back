/*
This is the base configuration file for the scalable rollfilm back
# we are not using the exact ANSI measures, but slightly rounded measures


*/

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// include for a modified cube primitive (with rounded edges)
include <rounded_cube.scad>;

include <config.scad>;


// base plate bottom
difference(){
    // base plate outer contour
    translate([vBaseplate_offsetX, vBaseplate_offsetY, vBaseplate_offsetZ])
    roundedcube([vBaseplate_l, vBaseplate_w, vBaseplate_h], false, 1, "z");
    
    // film frame
    translate([vFilmframe_offsetX, vFilmframe_offsetY, vFilmframe_offsetZ])
    roundedcube([vFilmframe_l, vFilmframe_w, vFilmframe_h], false, 1, "z");
    
    // bottom light trap slot
    translate([vBottomLightTrapSlot_offsetX, vBottomLightTrapSlot_offsetY, vBottomLightTrapSlot_offsetZ])
    cube([vBottomLightTrapSlot_l, vBottomLightTrapSlot_w, vBottomLightTrapSlot_h]);
    
    // top plate cutout
    translate([vTopplateCutout_offsetX, vTopplateCutout_offsetY, vTopplateCutout_offsetZ])
    rotate([0,0,90])
//    cube([vTopplateCutout_l, vTopplateCutout_w, vTopplateCutout_h]);
    dovetail("female", slide=vTopplateCutout_l, width=vTopplateCutout_w, height=vTopplateCutout_h, angle=30);
    
    // dark slide cutout
    translate([vDarkslideCutout_offsetX, vDarkslideCutout_offsetY, vDarkslideCutout_offsetZ])
    cube([vDarkslideCutout_l, vDarkslideCutout_w, vDarkslideCutout_h]);
    
    // dark slide grip cutout
    translate([vDarkslideGripCutout_offsetX, vDarkslideGripCutout_offsetY, vDarkslideGripCutout_offsetZ])
    cube([vDarkslideGripCutout_l, vDarkslideGripCutout_w, vDarkslideGripCutout_h]);
    
    // dark slide seal cutout
    translate([vDarkslideSealCutout_offsetX, vDarkslideSealCutout_offsetY, vDarkslideSealCutout_offsetZ])
    cube([vDarkslideSealCutout_l, vDarkslideSealCutout_w, vDarkslideSealCutout_h]);
    
    // Graflok cutouts
    translate([vGraflokCutout_offsetX, vGraflokCutout_offsetY1, vGraflokCutout_offsetZ])
    cube([vGraflokCutout_l, vGraflokCutout_w, vGraflokCutout_h]);
    translate([vGraflokCutout_offsetX, vGraflokCutout_offsetY2, vGraflokCutout_offsetZ])
    cube([vGraflokCutout_l, vGraflokCutout_w, vGraflokCutout_h]);
    
    // screw holes
    
}
