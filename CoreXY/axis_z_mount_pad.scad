$fn=100;
difference(){
    cube([20,55,11]);
    translate([10,(55-42)/2,0])cylinder(r=2.1,h=12);
    translate([10,55-(55-42)/2,0])cylinder(r=2.1,h=12);
}