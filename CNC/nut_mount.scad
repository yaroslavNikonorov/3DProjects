ww = 160;
hh = 100;
r_b=7.65;

w_nut=14;
d_nut_out=28;
d_nut_in = 22.1;
d_nut_hole=8;
h_nut= 20;

hole_r=1.6;

$fn=100;
module bearing_block(){
    difference(){
        cube([20,hh,20]);
        translate([10,0,10])rotate([-90])cylinder(r=r_b, h=hh);
    }
}

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=hole_r,h=30);
}

module scrw_nut(wdw=w_nut){
    difference(){
        union(){
        cylinder(r=d_nut_out/2,h=h_nut);
        translate([-d_nut_out/2,0,0])cube([d_nut_out,wdw,h_nut]);
        translate([-(d_nut_out/2+15/2),wdw-10,0])cube([d_nut_out+15,10,h_nut]);
        }
        //translate([d_nut/2,w_nut,0])cylinder(r=d_nut/2,h=10);
        //cube([d_nut,w_nut,10]);
    //translate([d_nut/2,w_nut,0])cylinder(r=5.1,h=20);
    cylinder(r=5.1,h=40);
    translate([d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    translate([0,d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([0,-d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([-d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    //translate([0,0,10])cylinder(r=d_nut_in/2, h=h_nut);
    translate([d_nut_out/2+3,wdw-10,4])rotate([0,90,90])m3_hole();
        translate([d_nut_out/2+3,wdw-10,h_nut-4])rotate([0,90,90])m3_hole();
            translate([-(d_nut_out/2+3),wdw-10,4])rotate([0,90,90])m3_hole();
        translate([-(d_nut_out/2+3),wdw-10,h_nut-4])rotate([0,90,90])m3_hole();
}
}

    
module block_mount(){
bearing_block();
translate([ww,0,0])bearing_block();
    translate([20,0,0])cube([ww-20,hh,5]);
}
//block_mount();

scrw_nut();