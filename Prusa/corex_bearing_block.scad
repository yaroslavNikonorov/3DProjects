bh=76;
ww=20;
bw=30;
nw=25;
nh=30;
rb=7.7;
rn=5.5;

hole_w=4;
hole_h=4;

module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=5, $fn=6);
    cylinder(r=1.6,h=50, $fn=100);
}

module nut_mount_holes(d_nut_hole=8){
        translate([d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    translate([0,d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([0,-d_nut_hole,0])rotate([0,0,0])m3_hole();
    translate([-d_nut_hole,0,0])rotate([0,0,90])m3_hole();
    cylinder(r=5.5,h=40, $fn=100);
    }


module main(){
    difference(){
        union(){
            cube([bw,bh,ww]);
            translate([bw,(bh-nh)/2,0])cube([nw,nh,ww]);
        }
        translate([bw/2,-1,ww/2])rotate([-90])cylinder(r=rb,h=100, $fn=100);
        translate([bw+10,-1,ww/2])rotate([-90])cylinder(r=rn,h=100, $fn=100);
        translate([bw+10,(bh-nh)/2,ww/2])rotate([-90,45,0])nut_mount_holes();
        
        translate([hole_w,hole_h,0])rotate()m3_hole();
        translate([bw-hole_w,hole_h,0])rotate()m3_hole();
        translate([hole_w,bh-hole_h,0])rotate()m3_hole();
        translate([bw-hole_w,bh-hole_h,0])rotate()m3_hole();
        translate([hole_w,(bh-nh)/2+hole_h,0])rotate()m3_hole();
        translate([bw-hole_w,(bh-nh)/2+hole_h,0])rotate()m3_hole();
        translate([hole_w,bh-((bh-nh)/2)-hole_h,0])rotate()m3_hole();
        translate([bw-hole_w,bh-((bh-nh)/2)-hole_h,0])rotate()m3_hole();
        
        translate([(bw+nw)-hole_w,bh-((bh-nh)/2)-hole_h,0])rotate()m3_hole();
        translate([(bw+nw)-hole_w,(bh-nh)/2+hole_h,0])rotate()m3_hole();


        translate([bw/2+1,bh-((bh-nh)/2)-hole_h,ww-1])cylinder(r=4,h=2,$fn=100);
        translate([bw/2+1,(bh-nh)/2+hole_h,ww-1])cylinder(r=4,h=2,$fn=100);
        translate([bw/2+1,hole_h,ww-1])cylinder(r=4,h=2,$fn=100);
        translate([bw/2+1,bh-hole_h,ww-1])cylinder(r=4,h=2,$fn=100);
        
        
    }
}

//main();

//rotate([90,0,0])translate([1,0,0])main();
mirror([-1,0,0])rotate([90,0,0])translate([1,0,0])main();