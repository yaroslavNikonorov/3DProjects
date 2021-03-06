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

module belt_idler_2(){    
difference(){
cube([60,60,10]);
//cube([20,20,50]);
//    translate([13.5,20,1])608_bearing();
//    translate([13.5,20,1])rotate([0,0,-20])slice_pie(r=13,a=180,h=10);
    translate([13.5,40,0])cylinder(r=hole_r, h=20);
    translate([13.5,40,7])m3_hole();

//translate([0,20,1])cube([3,100,10]);
    translate([10,25,0])cylinder(r=hole_m_r,h=20);
    translate([10,55,0])cylinder(r=hole_m_r,h=20);
    translate([25,10,0])cylinder(r=hole_m_r,h=20);
    translate([55,10,0])cylinder(r=hole_m_r,h=20);
}
}

belt_idler_2();
