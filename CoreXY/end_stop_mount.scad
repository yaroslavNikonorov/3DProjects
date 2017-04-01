$fn=100;

module m3_hole(){
    cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=1.6,h=20);
    }

difference(){
    union(){
        translate([-1,0,0])cube([27,13,5]);
        translate([2.5,0,0])cube([20,3,15]);
    }
    translate([7.5,3,0])cube([10,10,10]);
    translate([6.5,0,10])rotate([-90,0,0])cylinder(r=1.5,h=10);
    translate([18.5,0,10])rotate([-90,0,0])cylinder(r=1.5,h=10);    
    translate([3,8,6])rotate([180,0,90])m3_hole();
    translate([22,8,6])rotate([180,0,90])m3_hole();
    //translate([12.5,0,15])rotate([-90,0,0])cylinder(r=4.5,h=10);
}

