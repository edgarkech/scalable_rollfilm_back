
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


// film insert
difference(){
       
        // outside object
        chain_hull(){
            translate([vCoverLowerPart_offsetX, vCoverLowerPart_offsetY, vCoverLowerPart_offsetZ])
            cube([vCoverLowerPart_l, vCoverLowerPart_w, vCoverLowerPart_h]);
            translate([vCoverUpperPart_offsetX, vCoverUpperPart_offsetY, vCoverUpperPart_offsetZ])
            cube([vCoverUpperPart_l, vCoverUpperPart_w, vCoverUpperPart_h]);
        }
        // rails
        
        
        
        // cutout for film insert
        chain_hull(){
            translate([vCoverCutoutLowerPart_offsetX, vCoverCutoutLowerPart_offsetY, vCoverCutoutLowerPart_offsetZ])
            cube([vCoverCutoutLowerPart_l, vCoverCutoutLowerPart_w, vCoverCutoutLowerPart_h]);
            translate([vCoverCutoutUpperPart_offsetX, vCoverCutoutUpperPart_offsetY, vCoverCutoutUpperPart_offsetZ])
            cube([vCoverCutoutUpperPart_l, vCoverCutoutUpperPart_w, vCoverCutoutUpperPart_h]);
        }
        
        // cutout for light seal
        translate([vCoverLightSealCutout_offsetX, vCoverLightSealCutout_offsetY, vCoverLightSealCutout_offsetZ])
            cube([vCoverLightSealCutout_l, vCoverLightSealCutout_w, vCoverLightSealCutout_h]);
        
        // cutout for film advancing knob/lever
        
        
        
        
        }