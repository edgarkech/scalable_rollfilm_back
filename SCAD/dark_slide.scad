
// all includes are included in the assembly file, so no need do include them here (except temporarily for isolated part development)

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// including our configuration file
include <config.scad>;


union(){
translate([vDarkSlide_offsetX, vDarkSlide_offsetY, vDarkSlide_offsetZ])
//    cube([vDarkSlide_l, vDarkSlide_w, vDarkSlide_h]);
    cuboid([vDarkSlide_l, vDarkSlide_w, vDarkSlide_h], rounding=2, edges=[FRONT,LEFT,BACK,RIGHT], except=[TOP,BOT], p1=[0,0,0]);
translate([vDarkSlideGrip_offsetX, vDarkSlideGrip_offsetY, vDarkSlideGrip_offsetZ])
//    cube([vDarkSlide_l, vDarkSlide_w, vDarkSlide_h]);
    cuboid([vDarkSlideGrip_l, vDarkSlideGrip_w, vDarkSlideGrip_h], rounding=2, edges=[FRONT,LEFT,BACK,RIGHT], except=[BOT], p1=[0,0,0]);
}
