c_h=46.3;
c_w=32;
d_in=25;
w_cut=26;

d_fan=27;

h_m=13.2;

d_exm=16.15;
h_exm=9;
d_exm_in=11.9;
h_exm_in=5.5;

w_hole = 24;

module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=1.6,h=30,$fn=100);
    }



module ex_mount(){
        translate([0,0,-1])cylinder(r=d_exm/2, h=h_exm+1, $fn=100);
        translate([0,0,0])cylinder(r=d_exm_in/2, h=h_exm+h_exm_in+1, $fn=100);
}

module fan(){
difference(){
    cube([c_w,c_w,c_h]);
    translate([c_w/2,c_w/2,0])cylinder(r=d_in/2, h=c_w, $fn=100);
    translate([c_w/2,-1,c_w/2])rotate([-90])cylinder(r=d_fan/2, h=c_w/2, $fn=100);
    translate([0,w_cut,-1])cube([50,50,50]);
    translate([c_w/2,c_w/2,c_w])ex_mount();
    translate([0,c_w/2,c_w])cube([50,50,50]);
    translate([0,0,c_w])cube([c_w,(c_w/2)-10,c_h-c_w]);
    translate([(c_w-w_hole)/2,0,(c_w-w_hole)/2])rotate([-90])cylinder(r=1.1,h=10, $fn=100);
    translate([c_w-(c_w-w_hole)/2,0,(c_w-w_hole)/2])rotate([-90])cylinder(r=1.1,h=10, $fn=100);
    translate([c_w-(c_w-w_hole)/2,0,c_w-(c_w-w_hole)/2])rotate([-90])cylinder(r=1.1,h=10, $fn=100);
    translate([(c_w-w_hole)/2,0,c_w-(c_w-w_hole)/2])rotate([-90])cylinder(r=1.1,h=10, $fn=100);
    
    translate([(c_w-20)/2,0,c_w+(c_h-c_w)/2])rotate([-90])cylinder(r=1.6, h=30, $fn=100);
    translate([c_w-(c_w-20)/2,0,c_w+(c_h-c_w)/2])rotate([-90])cylinder(r=1.6, h=30, $fn=100);
    translate([(c_w-20)/2,0,c_w+(c_h-c_w)/2])rotate([-90])cylinder(r=4, h=9, $fn=100);
    translate([c_w-(c_w-20)/2,0,c_w+(c_h-c_w)/2])rotate([-90])cylinder(r=4, h=9, $fn=100);
}
}

module fan_mount(){
    difference(){
        union(){
            translate()cube([8,4.5,15]);
            translate([0,16.5,0])cube([8,5,15]);
        }
        translate([4,23,4.5])rotate([90])m3_hole();
        translate([4,23,10.5])rotate([90])m3_hole();
    }
}
rotate([90])union(){
fan();
translate([c_w,0,8])fan_mount();
}