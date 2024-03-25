
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


difference(){
    union(){
        translate([0, 0, 0])
        cylinder(d=vFilmSpoolHolderBase_d1, h=vFilmSpoolHolderBase_h1);
        translate([0, 0, vFilmSpoolHolderBase_h1])
        cylinder(d1=vFilmSpoolHolderBase_d1, d2=vFilmSpoolHolderBase_d2, h=vFilmSpoolHolderBase_h2);
        translate([0, 0, vFilmSpoolHolderBase_h1+vFilmSpoolHolderBase_h2])
        cylinder(d=vFilmSpoolHolderAxis_d1, h=vFilmSpoolHolderAxis_h1);
        translate([0, 0, vFilmSpoolHolderBase_h1 + vFilmSpoolHolderBase_h2 + vFilmSpoolHolderAxis_h1])
        cylinder(d1=vFilmSpoolHolderAxis_d1, d2=vFilmSpoolHolderAxis_d2, h=vFilmSpoolHolderAxis_h2);
    }
    
    translate([0, 0, 2])
    rotate([90, 0, 0])
    cylinder(d=vFilmSpoolSpringHole_d, h=vFilmSpoolHolderBase_d1, center = true);
    
}