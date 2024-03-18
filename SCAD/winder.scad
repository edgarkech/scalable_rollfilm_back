
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


difference(){
    union(){
        // light seal
        translate([0, 0, 0])
            cylinder(d=vWinderLightSeal_d, h=vWinderLightSeal_h);
                
        // winder base
        translate([0, 0, 0])
            cylinder(d=vWinderBase_d, h=vWinderBase_h);
        
        // hex axis
        translate([0, 0, vWinderBase_h])
            cylinder(d=vWinderHex_d, h=vWinderHex_h, $fn=6);
        
        }
    
    // Winder cutout
    translate([-vWinderCutout_l/2, -vWinderCutout_w/2, 0])
        cube([vWinderCutout_l, vWinderCutout_w, vWinderCutout_h]);
        
    // lever screw hole
    translate([0, 0, 0])
            cylinder(d=vWinderLeverScrewhole_d, h=vWinderBase_h+vWinderHex_h);    
}
