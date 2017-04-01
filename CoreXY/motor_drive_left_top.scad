
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



module nema_mount(){
    cylinder(r=11.2, h=30);
    translate([31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,-31/2,0])cylinder(r=hole_r, h=30);
    translate([31/2,-31/2,0])cylinder(r=hole_r, h=30);
    }

module hhh(l1=20, l2=22, w1=15, w2=17, h=10){
    linear_extrude(height = h)polygon ( points= [ [0,0], [0,l1], [w1,l2], [w2,0]]); 
    }   
    
    module m3_hole(){
    cylinder(r=3.2, h=3, $fn=6);
    }
    
module drive_part_left(){
 difference(){
    union(){ 
        cube([70,90,10]);
        //translate([46,13.5,1])cylinder(r=b_in_r, h=12);
        //translate([13.5,51,1])cylinder(r=b_in_r, h=12);
    }
    //cube([20,20,30]);
     //translate([46,13.5,1])608_bearing();
     //translate([13.5,65,1])608_bearing();
     //translate([])rotate([0,0,-90])cube([100,3,10]);
     //translate([-5,70,1])rotate([0,0,-57.7])cube([100,3,10]);
     //translate([40,0,1])cube([100,3,10]);
     translate([0,61,-1])cube([3,100,10]);
     translate([27,10,0])cylinder(r=hole_m_r, h=30);
     translate([63,10,0])cylinder(r=hole_m_r, h=30);
    translate([46,37,0])cylinder(r=hole_r, h=30);
    translate([46,13.5,0])cylinder(r=hole_r, h=30);
    //translate([46,13.5,7])m3_hole();
     translate([10,27,0])cylinder(r=hole_m_r, h=30);
     translate([10,83,0])cylinder(r=hole_m_r, h=30);
     
     translate([49,69,0])nema_mount();
    
    translate([13.5,65,9])rotate([180,0,0])608_bearing();
    //translate([13.5,65,7])m3_hole();
    translate([13.5,65,-1])rotate([0,0,-20])slice_pie(r=14,a=150,h=10);
    translate([46,37,9])rotate([180,0,0])608_bearing();
    //translate([46,37,7])m3_hole();
    translate([46,37,-1])rotate([0,0,-100])slice_pie(r=14,a=150,h=10);
    //translate([50,70,-1])rotate([0,0,-137])hhh(l=30,r=10,h=10,w=22);
    ///translate([35,39.5,-1])rotate([0,0,45])cube([30,22,10]);
    translate([35,39.5,-1])rotate([0,0,45])hhh(l1=25,l2=22,w1=30,w2=30);
    translate([43,23.5,-1])cube([100,3,10]);

//    hhh(l=20,r=8,h=10,w=22);
 }
//    translate([29,50,-10])cylinder(r=8,h=20);
 translate([33.5,53.5,0])difference(){
    cylinder(r=5, h=10);
    cylinder(r=hole_r, h=20);
}
}
    
//rotate([180,0,0])608_bearing();
//translate([0,0,1])cube([100,3,8]);
// translate([0,46,1])cube([3,100,8]);

//idler_part_1();

//nema_mount();
rotate([180,0,0])drive_part_left();
//drive_part_left();

//translate([50,70,-5])rotate([0,0,-130])hhh(l=25,r=8,h=10,w=22);
//slice_pie(r=14,a=10,h=10);
//slice(r=10,a=10,h=10);
//translate([13.5,65,-1])rotate([0,0,45])pie_slice(r=14,a=60,h=10);