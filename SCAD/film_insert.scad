// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


// top plate 
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
        translate([vFilmInsertLowerSideWall_offsetX, vFilmInsertLowerSideWall_offsetY1, vFilmInsertLowerSideWall_offsetZ])
        cube([vFilmInsertLowerSideWall_l, vFilmInsertLowerSideWall_w, vFilmInsertLowerSideWall_h]);
        
        translate([vFilmInsertLowerSideWall_offsetX, vFilmInsertLowerSideWall_offsetY2, vFilmInsertLowerSideWall_offsetZ])
        cube([vFilmInsertLowerSideWall_l, vFilmInsertLowerSideWall_w, vFilmInsertLowerSideWall_h]);
        
        // side walls
        chain_hull(){
            translate([vFilmInsertSideWall_offsetX1, vFilmInsertSideWall_offsetY1, vFilmInsertSideWall_offsetZ])
            cube([vFilmInsertSideWall_l, vFilmInsertSideWall_w, vFilmInsertSideWall_h]);
            
            translate([vFilmInsertSideWallTop_offsetX, vFilmInsertSideWallTop_offsetY1, vFilmInsertSideWallTop_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmInsertSideWallTop_d, h=vFilmInsertSideWallTop_w);
        }
        
        chain_hull(){
            translate([vFilmInsertSideWall_offsetX1, vFilmInsertSideWall_offsetY2, vFilmInsertSideWall_offsetZ])
            cube([vFilmInsertSideWall_l, vFilmInsertSideWall_w, vFilmInsertSideWall_h]);
            
            translate([vFilmInsertSideWallTop_offsetX, vFilmInsertSideWallTop_offsetY2, vFilmInsertSideWallTop_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmInsertSideWallTop_d, h=vFilmInsertSideWallTop_w);
        }
        
        chain_hull(){
            translate([vFilmInsertSideWall_offsetX2, vFilmInsertSideWall_offsetY1, vFilmInsertSideWall_offsetZ])
            cube([vFilmInsertSideWall_l, vFilmInsertSideWall_w, vFilmInsertSideWall_h]);
            
            translate([-vFilmInsertSideWallTop_offsetX, vFilmInsertSideWallTop_offsetY1, vFilmInsertSideWallTop_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmInsertSideWallTop_d, h=vFilmInsertSideWallTop_w);
        }
        
        chain_hull(){
            translate([vFilmInsertSideWall_offsetX2, vFilmInsertSideWall_offsetY2, vFilmInsertSideWall_offsetZ])
            cube([vFilmInsertSideWall_l, vFilmInsertSideWall_w, vFilmInsertSideWall_h]);
            
            translate([-vFilmInsertSideWallTop_offsetX, vFilmInsertSideWallTop_offsetY2, vFilmInsertSideWallTop_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmInsertSideWallTop_d, h=vFilmInsertSideWallTop_w);
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