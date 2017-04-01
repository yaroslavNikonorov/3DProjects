$fn=100;
hole_m_r=2.1;

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=1.5,h=30);
    }

    
module mm(){
    difference(){
        cube([10,20,15]);
        translate([0,0,15])rotate([0,45,0])cube([20,20,20]);
        translate([0,5,5])cube([10,10,10]);
        translate([5,10,0])cylinder(r=2.1,h=10);
    }
    }    
    
difference(){
    cube([20,20,40]);
    translate([10,10,25])cylinder(r=4.1,h=30);
    translate([0,4,25])rotate([180,-90,0])m3_hole();
    translate([0,16,25])rotate([180,-90,0])m3_hole();
    translate([4,0,32.5])rotate([-90,90,0])m3_hole();
    translate([0,9.5,25])cube([10,1,30]);
    //translate([10,0,5])rotate([-90,0,0])cylinder(r=hole_m_r, h=30);
    translate([10,0,20])rotate([-90,0,0])cylinder(r=hole_m_r, h=30);
}


translate([20,20,0])rotate([0,0,90])mm();
    