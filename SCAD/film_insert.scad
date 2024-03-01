
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
        
        
        
    }

    // film spool
        translate([vFilmSpool_offsetX, vFilmSpool_offsetY, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpool_w);

    // take up spool
        translate([-vFilmSpool_offsetX, vFilmSpool_offsetY, vFilmSpool_offsetZ])
        rotate([-90, 0, 0])
        cylinder(d=vFilmSpool_d, h=vFilmSpool_w);

}



