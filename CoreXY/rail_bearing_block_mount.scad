hole_r=1.6;

$fn=100;
module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
    }
module rail_mount(){
difference(){
    cube([20,20,10]);
    translate([10,5,10])rotate([-90])cylinder(r=4.1,h=30);
    translate([4,4,0])m3_hole();
    translate([4,16,0])m3_hole();
    translate([16,4])cylinder(r=hole_r, h=20);
    translate([16,16])cylinder(r=hole_r, h=20);
    }
    
    translate([21,0,0])difference(){
    cube([20,20,10]);
    translate([10,5,10])rotate([-90])cylinder(r=4.1,h=30);
    translate([4,4,0])cylinder(r=hole_r, h=20);
    translate([4,16,0])cylinder(r=hole_r, h=20);
    translate([16,4])m3_hole();
    translate([16,16])m3_hole();
    }
}

rotate([90])rail_mount();