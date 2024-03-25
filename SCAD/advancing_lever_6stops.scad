$fn = 120;

// "old" variables

rotate_y = 180;
//rotate_z = -30;
rotate_z = 0;
//pos_hex = -2;
pos_hex = 0; // EK 20240317 

vTolerance = 0.2;

vBodyOuter_d = 22;
vBodyLever_l = 25;
vBodyLeverEnd_d = 9;
vBodyEdgeCut = 2;
vLeverExtension_d = vBodyLeverEnd_d;
vLeverExtension_l = 20;


// calling/executing all modules		
union() rotate([0,rotate_y,rotate_z])
{
	translate([0,0,0]) eye();
  translate([0,0,0]) body();
    translate([0,0,0]) lever_extension();
}

 
module body()
{
  difference()
  {
    union()
    {
      // outer hull
        hull()
      {
        translate([0,0,0]) cylinder(d=19,h=12,center=true);
        translate([0,0,0]) cylinder(d=22,h=8,center=true);
        translate([-25,7,0]) cylinder(d=6,h=12,center=true);
        translate([-25,7,0]) cylinder(d=9,h=8,center=true);
      }
    }
    union()
    {
      // cage cutout
      translate([0,0,0]) cylinder(d=11.5,h=12.2,center=true);
      hull()
      {
        //translate([0,0,0]) cylinder(d=10.8,h=12.2,center=true);
        translate([0,0,0]) cylinder(d=11.2,h=12.2,center=true);
        translate([0,0,0]) cylinder(d=16.8,h=2.8,center=true);
      }
      
      // ratchet cutout
      hull()
      {
        translate([-0.0,6.0,0]) cylinder(d=1,h=4,center=true);
        translate([-20,6.0,0]) cylinder(d=1,h=4,center=true);
        //translate([-0.2,10.6,0]) cylinder(d=1.6,h=16,center=true);
        //translate([-20,10.6,0]) cylinder(d=1.6,h=16,center=true);
        translate([-0.2,10.5,0]) cylinder(d=2.4,h=16,center=true);
        translate([-20,10.5,0]) cylinder(d=2.4,h=16,center=true); 
      }
    }
  }
  
  // ratchet
  intersection()
  {
    union()
    {
      difference()
      {
        hull()
        {
          translate([0,0,0]) cylinder(d=19,h=12,center=true);
          translate([0,0,0]) cylinder(d=22,h=8,center=true);
          translate([-25,7,0]) cylinder(d=6,h=12,center=true);
          translate([-25,7,0]) cylinder(d=9,h=8,center=true);
        }
        hull()
        {
          //translate([-20,7,0]) cylinder(d=4,h=12,center=true);
          //translate([-10,7,0]) cylinder(d=4,h=12,center=true);
          translate([-20,7.5,0]) cylinder(d=4,h=12,center=true);
          translate([-10,7.5,0]) cylinder(d=4,h=12,center=true);
          translate([-7,4,0]) cylinder(d=4,h=12,center=true);
        }
      }
    }
    union()
    {
      hull()
      {
        translate([-0.6,6.6,0]) cylinder(d=1,h=4,center=true);
        translate([-21,6.6,0]) cylinder(d=1,h=4,center=true);
        translate([-0.6,11.0,0]) cylinder(d=1,h=16,center=true);
        translate([-21,11.0,0]) cylinder(d=1,h=16,center=true);
      }
    }
  }
}

module lever_extension()
{
    hull()
      {
        translate([-25,7,0]) cylinder(d=6,h=12,center=true);
        translate([-25,7,0]) cylinder(d=9,h=8,center=true);
        translate([-45,7,0]) cylinder(d=6,h=12,center=true);
        translate([-45,7,0]) cylinder(d=9,h=8,center=true);
      }
    }



module eye() 
{
  difference()
  {
    union()
    {
      hull()
      {
        translate([0,0,0]) cylinder(d=10.5,h=12,center=true);
        translate([0,0,0]) cylinder(d=16,h=3,center=true);
      }
    }
    union()
    {
      translate([0,0,pos_hex]) cylinder(d=6.65,h=12,center=true); // HEX Zylinder
      difference()
      {
        translate([0,0,pos_hex]) cylinder(d=9.5,h=12,center=true,$fn=6); // HEX Sechseck
        //  translate([0,0,pos_hex]) cylinder(d=7.7,h=12,center=true,$fn=6); // HEX Sechseck
      }
      // for(i=[30:60:360]) // 6 stops
      for(i=[30:60:360]) // 6 stops    
      {
        rotate([0,0,i])
        {
          hull()
          {  // Ratsche
            translate([-6.0,-0.3,0]) cylinder(d=1,h=4,center=true);
            translate([-6.0,-21,0]) cylinder(d=1,h=4,center=true);
            translate([-10,-0.3,0]) cylinder(d=1,h=16,center=true);
						translate([-10,-21,0]) cylinder(d=1,h=16,center=true);
          }
        }
      }  
    }
  }
}