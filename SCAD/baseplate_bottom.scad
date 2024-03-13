
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


// base plate bottom
difference(){
    // base plate outer contour
    translate([vBaseplate_offsetX, vBaseplate_offsetY, vBaseplate_offsetZ])
    cuboid([vBaseplate_l, vBaseplate_w, vBaseplate_h], rounding=1, edges=[FRONT,LEFT,BACK,RIGHT], except=[TOP,BOT], p1=[0,0,0]);
    
    // film frame
    translate([vFilmframe_offsetX, vFilmframe_offsetY, vFilmframe_offsetZ])
    cuboid([vFilmframe_l, vFilmframe_w, vFilmframe_h], rounding=1, edges=[FRONT,LEFT,BACK,RIGHT], except=[TOP,BOT], p1=[0,0,0]);
    
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
