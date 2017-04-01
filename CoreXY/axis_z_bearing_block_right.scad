rb_r=7.7;
$fn=100;
module mm(h=20, l=60, w=60){
    difference(){
        linear_extrude(height = h)polygon ( points= [ [0,0], [0,l], [w,0]]); 
        translate([5,5,5])linear_extrude(height = h-10)polygon ( points= [ [0,0], [0,l], [w,0]]); 
        translate([15,15,0])linear_extrude(height = h)polygon ( points= [ [0,0], [0,20], [20,0]]);
        translate([w-5,-1,-1])cube([30,30,30]);
        translate([-1,l-15,-1])cube([30,30,30]);
        //translate([20,20,-1])cylinder(r=9,h=30);
        translate([10,20,10])rotate([90])cylinder(r=2.1,h=20);
        translate([30,20,10])rotate([90])cylinder(r=2.1,h=20);
        translate([50,20,10])rotate([90])cylinder(r=2.1,h=20);
    }
}

module dd(){
    difference(){
    union(){    
        translate([20,0,15])rotate([0,-90])mm();
        cube([20,100,20]);
        translate([15,0,0])cube([5,100,30]);
        translate([-15,0,0])cube([20,100,5]);
        translate([-15,0,0])cube([20,5,30]);
    }
    translate([10,-1,10])rotate([-90])cylinder(r=rb_r,h=200);
    for (a =[10:10:95]){
        translate([-7.5,a,-1])cylinder(r=2.1,h=20);
    }
translate([-7.5,0,15])rotate([-90])cylinder(r=2.1,h=20);
    translate([-7.5,0,25])rotate([-90])cylinder(r=2.1,h=20);
//    translate([25,25,-1])cylinder(r=2.1,h=20);
//    translate([25,35,-1])cylinder(r=2.1,h=20);
}
}
//rotate([90])dd();
//mm();
dd();
