
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


difference(){
cyl(h=vWinderKnob_h, r1=vWinderKnob_d/2, r2=vWinderKnob_d/2-2,
//    chamfer=2,
    texture="trunc_pyramids", tex_size=[3,3],
    style="convex");
    
    // hex axis cutout
    cylinder(d=vWinderHexCutout_d, h=vWinderHexCutout_h, $fn=6, center=true);
    
    
}