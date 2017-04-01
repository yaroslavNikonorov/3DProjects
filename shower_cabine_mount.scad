
$fn=100;

module m4_hole(l=30){
    translate([0,0,-1])cylinder(r=4, h=3.5, $fn=6);
    cylinder(r=2.1,h=l);
    }

module main(){
    difference(){
    union(){
    cylinder(r=5, h=11);
    translate([28,0,0])cylinder(r=5, h=11);
    translate([0,-5,0])cube([28,10,8.5]);
    translate([14,0,0])scale([2,1,1])cylinder(r=10,h=6.5);
    translate([14,-10,2.5])rotate([-90])cylinder(r=4,h=20);
    }
    m4_hole();
    translate([28,0,0])m4_hole();
    translate([14,-11,2.5])rotate([-90])cylinder(r=3.5/2, h=25);
    translate([8,-4,-3])cube([12,8,20]);

}
    
}    
main();

