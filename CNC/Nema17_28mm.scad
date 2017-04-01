h=28;
d_in=22.5;

w=42;

hole_r=1.8;

hole_w=31;


d_r = 22.3;
$fn=100;




difference(){
    cube(size=[w,w,h], center=true);
    translate([hole_w/2,hole_w/2,-1])cylinder(r=hole_r, h=h+53, center=true);
    translate([hole_w/2,-hole_w/2,-1])cylinder(r=hole_r, h=h+53, center=true);
    translate([-hole_w/2,hole_w/2,-1])cylinder(r=hole_r, h=h+53, center=true);
    translate([-hole_w/2,-hole_w/2,-1])cylinder(r=hole_r, h=h+53, center=true);
    translate([0,0,-1])cylinder(r=d_in/2, h=h+3, center=true);
    translate([d_r,d_r,0])rotate([0,0,45])cube(size=[10,100,100], center=true);
    translate([d_r,-d_r,0])rotate([0,0,-45])cube(size=[10,100,100], center=true);
    translate([-d_r,d_r,0])rotate([0,0,135])cube(size=[10,100,100], center=true);
    translate([-d_r,-d_r,0])rotate([0,0,-135])cube(size=[10,100,100], center=true);
    }
 
    
