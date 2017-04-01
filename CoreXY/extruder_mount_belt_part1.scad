$fn=100;
hole_r=1.6;
module belt_line(l=50, w=10,h=20, r=0.5){
    module single(){
        union(){
        difference(){
            cube([r*4,w,h]);
            translate([r,w,0])cylinder(r=r,h=h);
            }
            
        }
        translate([r*3,w,0])cylinder(r=r,h=h);
    }

    for(a=[0:l/(r*4)-1]){
        translate([a*r*4,0,0])single();
    }
}
    
//belt_line();

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
    }


difference(){
    cube([40,60,20]);
    translate([5,20,0])cube([30,20,20]);
    translate([7,0,0])belt_line(l=26,w=7.5,h=20);
    translate([7,61,21])rotate([180])belt_line(l=26,w=8.5,h=22);

//    translate([11,15,0])cylinder(r=1.6,h=30);
//    translate([29,15,0])cylinder(r=1.6,h=30);
    translate([14,0,10])rotate([-90])cylinder(r=1.6,h=30);
    translate([26,0,10])rotate([-90])cylinder(r=1.6,h=30);
    
    translate([14,40,10])rotate([-90])cylinder(r=1.6,h=30);
    translate([26,40,10])rotate([-90])cylinder(r=1.6,h=30);

    translate([10,12.5,0])cylinder(r=1.6,h=30);
    translate([10,12.5,0])m3_hole();
    //translate([20,12.5,20])rotate([0,180,0])m3_hole();
    translate([30,12.5,0])cylinder(r=1.6,h=30);
    translate([30,12.5,0])m3_hole();
    translate([10,47.5,0])cylinder(r=1.6,h=30);
    translate([10,47.5,0])m3_hole();
    translate([30,47.5,0])cylinder(r=1.6,h=30);
    translate([30,47.5,0])m3_hole();
}

   //translate([7,60,0])rotate([180])belt_line(l=26,w=7.5,h=20);