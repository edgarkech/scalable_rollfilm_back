
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


// film insert


difference(){
union(){
    difference(){
           union(){
            // outside object
            chain_hull(){
                translate([vCoverLowerPart_offsetX, vCoverLowerPart_offsetY, vCoverLowerPart_offsetZ])
                cube([vCoverLowerPart_l, vCoverLowerPart_w, vCoverLowerPart_h]);
                translate([vCoverUpperPart_offsetX, vCoverUpperPart_offsetY, vCoverUpperPart_offsetZ])
                cube([vCoverUpperPart_l, vCoverUpperPart_w, vCoverUpperPart_h]);
            }
            // claws
            
            translate([vCoverClaw_offsetX1, vCoverClaw_offsetY, vCoverClaw_offsetZ])
            rotate([0,0,90])
            dovetail("female", slide=vCoverClaw_l, width=vCoverClaw_w, height=vCoverClaw_h, angle=30);
            
            translate([vCoverClaw_offsetX2, vCoverClaw_offsetY, vCoverClaw_offsetZ])
            rotate([0,0,90])
            dovetail("female", slide=vCoverClaw_l, width=vCoverClaw_w, height=vCoverClaw_h, angle=30);
            
            
        }
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
            
            translate([vCoverLightSealCutout_offsetX, vCoverLightSealCutout_offsetY, 0])
                cube([vCoverLightSealCutout_l, vCoverLightSealCutout_w, vCassetteHeight]);
            
            // cutout for film advancing knob/lever
            translate([vFilmSpoolAxisExtensionCutout_offsetX, vFilmSpoolAxisExtensionCutout_offsetY, vFilmSpoolAxisExtensionCutout_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmSpoolAxisExtensionCutout_d, h=vFilmSpoolAxisExtensionCutout_h);
            
            translate([-vFilmSpoolAxisExtensionCutout_offsetX, vFilmSpoolAxisExtensionCutout_offsetY, vFilmSpoolAxisExtensionCutout_offsetZ])
            rotate([-90, 0, 0])
            cylinder(d=vFilmSpoolAxisExtensionCutout_d, h=vFilmSpoolAxisExtensionCutout_h);
            
            // lower cutouts
            translate([vFilmSpoolAxisExtensionLowerCutout_offsetX1, vFilmSpoolAxisExtensionLowerCutout_offsetY, vFilmSpoolAxisExtensionLowerCutout_offsetZ])
                cube([vFilmSpoolAxisExtensionLowerCutout_l, vFilmSpoolAxisExtensionLowerCutout_w, vFilmSpoolAxisExtensionLowerCutout_h]);
            
            translate([vFilmSpoolAxisExtensionLowerCutout_offsetX2, vFilmSpoolAxisExtensionLowerCutout_offsetY, vFilmSpoolAxisExtensionLowerCutout_offsetZ])
                cube([vFilmSpoolAxisExtensionLowerCutout_l, vFilmSpoolAxisExtensionLowerCutout_w, vFilmSpoolAxisExtensionLowerCutout_h]);
            
            }
        // tube for counter window
        translate([vCoverCounterWindow_offsetX, vCoverCounterWindow_offsetY, vCoverCounterWindow_offsetZ2])
        cylinder(d=vCoverCounterWindowTubeOuter_d, h=vCoverCounterWindowTube_h);    
            
       }
   // counter window tube
   translate([vCoverCounterWindow_offsetX, vCoverCounterWindow_offsetY, vCoverCounterWindow_offsetZ2])
        cylinder(d=vCoverCounterWindowTubeInner_d, h=vCoverCounterWindowTube_h);
   translate([vCoverCounterWindow_offsetX, vCoverCounterWindow_offsetY, vCoverCounterWindow_offsetZ1])
        cylinder(d=vCoverCounterWindow_d, h=vCoverCounterWindow_h);    
            
}