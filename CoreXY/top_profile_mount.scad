
$fn=100;


module tt_in(h_in=25, w_in=25){
difference(){
    linear_extrude(height = 20)polygon ( points= [ [0,0], [0,w_in], [5,w_in],[h_in,5],[h_in,0]]);
    translate([5,5,5])cube([w_in, h_in, 10]);
    translate([20,10,10])rotate([90,0,0])cylinder(r=2.1,h=10);
translate([10,20,10])rotate([0,-90,0])cylinder(r=2.1,h=10);
    
}
}

module tt(h=60, w=60){
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


module gg(){
mm();
translate([-5,0,5])rotate([90,0,90])mm();
translate([-5,0,0])cube([5,60,5]);
translate([20,45,25])rotate([90])linear_extrude(height = 25)polygon ( points= [ [0,0], [0,5], [5,0]]);
}

module hh(){
difference(){
    rotate([90,0,90])gg();
    translate([5,0,0])cube([20.3,20.3,60]);
    translate([5,0,0])cube([20,60,20.3]);
    translate([5,0,0])cube([60,20,20.3]);
}
}

translate([0,0,20])hh();
translate([5,-5,0])cube([60,5,20]);
translate()cube([5,60,20]);
translate([0,-5,0])cube([5,5,20]);
