$fn=100;

difference(){
cube([20,60,10]);
        translate([0,12.5,0])cylinder(r=1.6,h=30);
    //translate([20,12.5,20])rotate([0,180,0])m3_hole();
    translate([20,12.5,0])cylinder(r=1.6,h=30);
    translate([0,47.5,0])cylinder(r=1.6,h=30);
    translate([20,47.5,0])cylinder(r=1.6,h=30);
}