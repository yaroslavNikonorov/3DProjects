w_nut=14;
d_nut_out=23;
//d_nut_in = 22.1;
d_nut_hole=8;
h_nut= 24;

w_mount = 40;

hw_mount=7;

hole_r=1.6;
hole_m4=2.1;



$fn=100;

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
}

module nut_mount_holes(){
        translate([d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    translate([0,d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([0,-d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([-d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    cylinder(r=5.5,h=40);
    }


module scrw_nut(wdw=w_nut){
    difference(){
        union(){
            cylinder(r=d_nut_out/2,h=h_nut);
            translate([-d_nut_out/2,0,0])cube([d_nut_out,w_nut,h_nut]);
            translate([-(w_mount/2),w_nut-hw_mount,0])cube([w_mount,hw_mount,h_nut]);
    }
    rotate([0,0,45])nut_mount_holes();
        
    
        translate([-(w_mount/2),w_nut,0])cube([w_mount,10,h_nut]);
    
        translate([w_mount/2-4,wdw-10,4])rotate([0,90,90])cylinder(r=hole_m4, h=50);
        translate([w_mount/2-4,wdw-10,h_nut-4])rotate([0,90,90])cylinder(r=hole_m4, h=50);
        translate([-(w_mount/2-4),wdw-10,4])rotate([0,90,90])cylinder(r=hole_m4, h=50);
        translate([-(w_mount/2-4),wdw-10,h_nut-4])rotate([0,90,90])cylinder(r=hole_m4, h=50);
}
}

difference(){
scrw_nut();
    translate([-25,-19,0])cube([50,10,h_nut]);
}