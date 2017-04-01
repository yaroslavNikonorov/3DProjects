
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

module nema_mount(){
    cylinder(r=11.2, h=30);
    translate([31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,-31/2,0])cylinder(r=hole_r, h=30);
    translate([31/2,-31/2,0])cylinder(r=hole_r, h=30);
    }
    
module m3_hole(){
    cylinder(r=3.2, h=3, $fn=6);
    }
    
module idler_part_1(){
 difference(){
    union(){ 
        cube([70,90,10]);
        //translate([46,13.5,1])cylinder(r=b_in_r, h=12);
        //translate([13.5,51,1])cylinder(r=b_in_r, h=12);
    }
    //cube([20,20,30]);
     translate([46,13.5,1])608_bearing();
    translate([46,13.5,0])m3_hole();
     translate([13.5,65,1])608_bearing();
    translate([13.5,65,0])m3_hole();
     //translate([])rotate([0,0,-90])cube([100,3,10]);
     translate([-5.5,70,1])rotate([0,0,-57.7])cube([100,3,9]);
     translate([40,0,1])cube([100,3,9]);
     translate([0,61,1])cube([3,100,9]);
     translate([27,10,0])cylinder(r=hole_m_r, h=30);
     translate([63,10,0])cylinder(r=hole_m_r, h=30);
    translate([46,37,0])cylinder(r=hole_r, h=30);
    translate([46,37,0])m3_hole();
    
     translate([10,27,0])cylinder(r=hole_m_r, h=30);
     translate([10,83,0])cylinder(r=hole_m_r, h=30);
     
     translate([49,69,0])nema_mount();
    
    //translate([13.5,65,0])608_bearing();
    //translate([46,37,0])608_bearing();

     
 }
}
    
//608_bearing();
//translate([0,0,1])cube([100,3,8]);
// translate([0,46,1])cube([3,100,8]);

idler_part_1();

//nema_mount();
