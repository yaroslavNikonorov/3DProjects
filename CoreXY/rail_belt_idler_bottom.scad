b_in_r=3.98;
hole_r=1.6;
hole_m_r=2.1;

$fn=100;

module 608_bearing(){
    difference(){
        cylinder(r=12, h=30);
        cylinder(r=b_in_r, h=30);
        cylinder(r=6,h=0.5);
        //translate([0,0,7.5])cylinder(r=6,h=0.5);
        }
        translate([0,0,-10])cylinder(r=hole_r, h=30);
}

module slice_pie(r=10,a=10, h=10){
    difference(){
      cylinder(r=r, h=h);
      translate([-r,0,0])cube([r*2,r,h]);
        rotate([0,0,180-a])translate([-r,0,0])cube([r*2,r,h]);
      cylinder(r=6,h=h);
    }
}

module m3_hole(){
    cylinder(r=3.2, h=3, $fn=6);
    }

difference(){
    cube([60,40,10]);
    translate([30,17,1])608_bearing();
    translate([30,17,0])m3_hole();
    translate([30,17,1])rotate([0,0,-90])slice_pie(r=14,a=90, h=9);
    //translate([40,17,1])cube([4,30,9]);
    translate([16,16.9,1])cube([4,30,9]);
    translate([30,3,1])cube([100,4,9]);
    
    translate([4,24,0])cylinder(r=hole_r, h=20);
    translate([4,36,0])cylinder(r=hole_r, h=20);
    translate([56,24,0])cylinder(r=hole_r, h=20);
    translate([56,36,0])cylinder(r=hole_r, h=20);
    translate([30,36,0])cylinder(r=hole_r, h=20);
}