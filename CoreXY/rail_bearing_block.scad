rb_r=7.65;
hole_r=1.6;
$fn=100;

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
    }

module block(){
difference(){
    cube([60,40,20]);
    translate([0,10,10])rotate([0,90,0])cylinder(r=rb_r,h=70);
    translate([10,25,10])rotate([-90,0,0])cylinder(r=4.1,h=30);
    translate([50,25,10])rotate([-90,0,0])cylinder(r=4.1,h=30);
    

    translate([4,24,0])m3_hole(); 
    translate([4,36,0])m3_hole();
    translate([56,24,0])m3_hole();
    translate([56,36,0])m3_hole();
    translate([30,36,0])m3_hole();
    
//    translate([20,25,0])cube([1,15,10]);
//    translate([10,25,9])cube([10,15,1]);
//    translate([39,25,0])cube([1,15,10]);
//    translate([39,25,9])cube([10,15,1]);

    translate([16,36,20])rotate([180])m3_hole();    
    translate([44,36,20])rotate([180])m3_hole();    
    
    //translate([0,17,10])cube([100,6,1]);
    
    translate([16,24,20])rotate([180])m3_hole();
    translate([44,24,20])rotate([180])m3_hole();
    translate([0,20,0])cube([20,20,10]);
    translate([40,20,0])cube([20,20,10]);
    
}

}

rotate([90])block();