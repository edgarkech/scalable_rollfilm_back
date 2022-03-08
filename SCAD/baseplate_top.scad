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

// top plate 
union(){
    difference(){
        // top plate cutout
        translate([vTopplate_offsetX, vTopplate_offsetY, vTopplate_offsetZ])
        rotate([0,0,90])
    //    cube([vTopplateCutout_l, vTopplateCutout_w, vTopplateCutout_h]);
        dovetail("female", slide=vTopplate_l, width=vTopplate_w, height=vTopplate_h, angle=30);
        
        // film frame
        translate([vFilmframe_offsetX, vFilmframe_offsetY, vFilmframe_offsetZ])
        roundedcube([vFilmframe_l, vFilmframe_w, vFilmframe_h], false, 1, "z");
        
        // film bed cutout
        translate([vFilmbedCutout_offsetX, vFilmbedCutout_offsetY, vFilmbedCutout_offsetZ])
        cube([vFilmbedCutout_l, vFilmbedCutout_w, vFilmbedCutout_h]);
        
        // film insert cutout
        translate([vFilmInsertCutout_offsetX, vFilmInsertCutout_offsetY, vFilmInsertCutout_offsetZ])
        cube([vFilmInsertCutout_l, vFilmInsertCutout_w, vFilmInsertCutout_h]);
           
        // dark slide grip cutout
        translate([vDarkslideGripCutout_offsetX, vDarkslideGripCutout_offsetY, vDarkslideGripCutout_offsetZ])
        cube([vDarkslideGripCutout_l, vDarkslideGripCutout_w, vDarkslideGripCutout_h]);
        
        // cover cutout
        translate([vCoverCutout_offsetX, vCoverCutout_offsetY, vCoverCutout_offsetZ])
        cube([vCoverCutout_l, vCoverCutout_w, vCoverCutout_h]);
        
        
        // screw holes
        
    }
    // cover light seal
    translate([vCoverLightSeal_offsetX, vCoverLightSeal_offsetY, vCoverLightSeal_offsetZ])
    rect_tube(size=[vCoverLightSeal_l,vCoverLightSeal_w], wall=vCoverLightSeal_wall, h=vCoverLightSeal_h);
}


