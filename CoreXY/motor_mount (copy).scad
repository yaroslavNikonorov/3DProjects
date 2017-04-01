



$fn=100;

module 608_bearing(){
    difference(){
        cylinder(r=11.5, h=30);
        cylinder(r=3.9, h=30);
        cylinder(r=6,h=0.5);
        //translate([0,0,7.5])cylinder(r=6,h=0.5);
        }
        translate([0,0,-10])cylinder(r=2, h=30);
    }


module idler_part_1(){
 difference(){
    union 
    cube([60,80,10]);
    cube([20,20,30]);
     translate([46,13.5,1])608_bearing();
     translate([13.5,51,1])608_bearing();
     translate([])rotate([0,0,-90])cube([100,3,7]);
     translate([-10,58,1])rotate([0,0,-49.1])cube([100,3,8]);
     translate([40,0,1])cube([100,3,8]);
      translate([0,46,1])cube([3,100,8]);
     
 }
}
    
//608_bearing();
//translate([0,0,1])cube([100,3,8]);
// translate([0,46,1])cube([3,100,8]);

idler_part_1();