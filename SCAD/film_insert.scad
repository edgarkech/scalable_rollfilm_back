
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


// film insert
difference(){
    union(){
        translate([vFilmInsertBaseplate_offsetX, vFilmInsertBaseplate_offsetY, vFilmInsertBaseplate_offsetZ])
        cube([vFilmInsertBaseplate_l, vFilmInsertBaseplate_w, vFilmInsertBaseplate_h]);
        
        // film rollers
        translate([vFilmRoller_offsetX, vFilmRoller_offsetY, vFilmRoller_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmRoller_d, h=vFilmRoller_w);
        
        // film rollers
        translate([-vFilmRoller_offsetX, vFilmRoller_offsetY, vFilmRoller_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmRoller_d, h=vFilmRoller_w);
        
        // lower side walls
        chain_hull(){
            translate([vFilmInsertLowerSideWall_offsetX, vFilmInsertLowerSideWall_offsetY1, vFilmInsertLowerSideWall_offsetZ])
            cube([vFilmInsertLowerSideWall_l, vFilmInsertLowerSideWall_w, vFilmInsertLowerSideWall_h]);
            translate([vFilmInsertUpperSideWall_offsetX, vFilmInsertUpperSideWall_offsetY1, vFilmInsertUpperSideWall_offsetZ])
            cube([vFilmInsertUpperSideWall_l, vFilmInsertUpperSideWall_w, vFilmInsertUpperSideWall_h]);
        }
        chain_hull(){
            translate([vFilmInsertLowerSideWall_offsetX, vFilmInsertLowerSideWall_offsetY2, vFilmInsertLowerSideWall_offsetZ])
            cube([vFilmInsertLowerSideWall_l, vFilmInsertLowerSideWall_w, vFilmInsertLowerSideWall_h]);
            translate([vFilmInsertUpperSideWall_offsetX, vFilmInsertUpperSideWall_offsetY2, vFilmInsertUpperSideWall_offsetZ])
            cube([vFilmInsertUpperSideWall_l, vFilmInsertUpperSideWall_w, vFilmInsertUpperSideWall_h]);
        }
        
        // extensions for the film spool axis
       translate([vFilmSpoolAxisExtension_offsetX, vFilmSpoolAxisExtension_offsetY, vFilmSpoolAxisExtension_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisExtension_d, h=vFilmSpoolAxisExtension_h);
        translate([-vFilmSpoolAxisExtension_offsetX, vFilmSpoolAxisExtension_offsetY, vFilmSpoolAxisExtension_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisExtension_d, h=vFilmSpoolAxisExtension_h);
        
        
        
    }

    // film spool
        translate([vFilmSpool_offsetX, vFilmSpool_offsetY, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpool_w);
    
    // film spool clearance
        translate([-vFilmSpool_offsetX, vFilmSpool_offsetY-vFilmSpoolClearance, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpoolClearance);
        translate([-vFilmSpool_offsetX-(vFilmSpool_d/2), vFilmSpool_offsetY-vFilmSpoolClearance, vFilmSpool_offsetZ])
        cube([vFilmSpool_d, vFilmSpoolClearance, vFilmSpool_d]);
    
    // film spool axis hole
    translate([-vFilmSpoolAxisHole_offsetX, vFilmSpoolAxisHole_offsetY, vFilmSpoolAxisHole_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisHole_d, h=vFilmSpoolAxisHole_h);
    
    // film spool axis light seal
    translate([-vFilmSpoolAxisLightSeal_offsetX, vFilmSpoolAxisLightSeal_offsetY, vFilmSpoolAxisLightSeal_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisLightSeal_d, h=vFilmSpoolAxisLightSeal_h);
    

    // take up spool
        translate([-vFilmSpool_offsetX, vFilmSpool_offsetY, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpool_w);
    
    // take up spool clearance
        translate([vFilmSpool_offsetX, vFilmSpool_offsetY-vFilmSpoolClearance, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpoolClearance);
        translate([vFilmSpool_offsetX-(vFilmSpool_d/2), vFilmSpool_offsetY-vFilmSpoolClearance, vFilmSpool_offsetZ])
        cube([vFilmSpool_d, vFilmSpoolClearance, vFilmSpool_d]);
    
    // take up spool axis hole
    translate([vFilmSpoolAxisHole_offsetX, vFilmSpoolAxisHole_offsetY, vFilmSpoolAxisHole_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisHole_d, h=vFilmSpoolAxisHole_h);
        
    // take up spool axis light seal
    translate([vFilmSpoolAxisLightSeal_offsetX, vFilmSpoolAxisLightSeal_offsetY, vFilmSpoolAxisLightSeal_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpoolAxisLightSeal_d, h=vFilmSpoolAxisLightSeal_h);
    
    // spring cutout
    translate([vFilmSpoolSpringCutout_offsetX, vFilmSpoolSpringCutout_offsetY, vFilmSpoolSpringCutout_offsetZ])
        rotate([-90, 0, 90])
        cylinder(d=vFilmSpoolSpringCutout_d, h=vFilmSpoolSpringCutout_h);
   
    translate([-vFilmSpoolSpringCutout_offsetX, vFilmSpoolSpringCutout_offsetY, vFilmSpoolSpringCutout_offsetZ])
        rotate([-90, 0, -90])
        cylinder(d=vFilmSpoolSpringCutout_d, h=vFilmSpoolSpringCutout_h);
    
    // hole for the spring
    translate([-vFilmSpoolSpringHole_offsetX, vFilmSpoolSpringHole_offsetY, vFilmSpoolSpringHole_offsetZ])
        rotate([-90, 0, 90])
        cylinder(d=vFilmSpoolSpringHole_d, h=vFilmSpoolSpringHole_h);
    
}




