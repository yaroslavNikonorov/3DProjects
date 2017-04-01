
hole_r=1.6;
$fn=100;

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
    }

module block(){
difference(){
    cube([60,60,20]);
    translate([20,0,0])cube([20,60,10]);
    translate([10,0,10])rotate([-90])cylinder(r=7.7,h=60);
    translate([50,0,10])rotate([-90])cylinder(r=7.7,h=60);
    
    translate([20,12.5,0])cylinder(r=1.6,h=30);
    //translate([20,12.5,20])rotate([0,180,0])m3_hole();
    translate([40,12.5,0])cylinder(r=1.6,h=30);
    translate([20,47.5,0])cylinder(r=1.6,h=30);
    translate([40,47.5,0])cylinder(r=1.6,h=30);
    
    //translate([30,17.5,0])cylinder(r=8,h=30);
    //translate([30,42.5,0])cylinder(r=8,h=30);
    translate([30,30,0])cylinder(r=8,h=30);
    translate([10,0,9])cube([10,70,1]);
    translate([40,0,9])cube([10,70,1]);
    }
}
rotate([90])block();

