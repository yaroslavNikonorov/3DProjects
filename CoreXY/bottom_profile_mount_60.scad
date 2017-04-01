ww=60;
$fn=100;


module tt_in(h_in=25, w_in=25){
difference(){
    linear_extrude(height = 20)polygon ( points= [ [0,0], [0,w_in], [5,w_in],[h_in,5],[h_in,0]]);
    translate([5,5,5])cube([w_in, h_in, 10]);
    translate([20,10,10])rotate([90,0,0])cylinder(r=2.1,h=10);
translate([10,20,10])rotate([0,-90,0])cylinder(r=2.1,h=10);
    
}
}

module tt(h=ww, w=60){
    difference(){
        linear_extrude(height = 5)polygon ( points= [ [0,0], [0,w], [20,w],[h,20],[h,0]]);
        translate([h-7,10,0])cylinder(r=2.1,h=10);
        translate([25,10,0])cylinder(r=2.1,h=10); 
                translate([10,w-7,0])cylinder(r=2.1,h=10);
        translate([10,25,0])cylinder(r=2.1,h=10); 
    }
}
    
module mm(){    
tt();
translate([20,20,5])tt_in();
}
module mm1(){    
translate([0,0,5])rotate([0,-90])tt();
translate([20,20,25])rotate([0,-90])tt_in();
}


module gg(){
mm();
mm1();
translate([-5,0,5])rotate([90,0,90])mm1();
//translate([-5,0,5])rotate([90,0,90])mm();
//linear_extrude(height = 25)polygon ( points= [ [0,0], [0,50], [50,0]]);

translate([20,45,25])rotate([90])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
translate([20,20,25])rotate([0])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
translate([45,20,25])rotate([0,-90])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
translate([-5,0,0])cube([5,60,5]);
translate([-5,-5,0])cube([65,5,5]);
translate([-5,-5,5])cube([5,5,60]);
}

module hh(){
difference(){
    union(){
    rotate([90,0,90])gg();
//        translate([25,45,20])rotate([90])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
//        translate([25,20,20])rotate([0])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
//        translate([50,20,20])rotate([0,-90])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
//        translate([-5,0,0])cube([5,60,5]);
//        translate([-5,-5,0])cube([65,5,5]);
//        translate([-5,-5,5])cube([5,5,60]);
    }
    translate([5,0,0])cube([20.4,20.4,ww]);
    translate([5,0,0])cube([20.4,ww,20.4]);
    translate([5,0,0])cube([ww,20.4,20.4]);
    translate([35,30,-5])cylinder(r=2.1,h=100);
}
}

hh();
