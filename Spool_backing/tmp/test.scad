model="Shimano BBLC 025-280";
d1 = 60.2;
d2 = 56.8;
h1 = 33.6;

d4 = 75;
d3 = 70;
h2 = 37.5;

s_w=1;
s_n=10;

$fn=100;

use <text_on/text_on.scad>

module support(ds_in_max=d1+(s_w*2), ds_in_min=d2+(s_w*2), hs_in=h2+s_w, ds_out_max=d4-(s_w*2), ds_out_min=d3-(s_w*2), hs_out=h2, as=20){
    union(){
    difference(){
        cylinder(r1=ds_out_max/2, r2=ds_out_min/2, h=hs_out);
        translate([0,0,(hs_out-hs_in)/2])cylinder(r1=ds_in_max/2, r2=ds_in_min/2, h=hs_in);
        for(ang=[0:360/(s_n*2):360]){
            rotate([0,0,ang])translate([(d2/2)-1,-s_w/2,-1])cube([20,s_w,h2+2]);
        }
}
}
}


module spool(){
difference(){
    cylinder(r1=d4/2, r2=d3/2, h=h2);
    translate([0,0,(h2-h1)/2])cylinder(r1=d1/2, r2=d2/2, h=h1);
    translate([0,0,h1+(h2-h1)/2])cylinder(r1=d2/2, r2=d3/2, h=(h2-h1)/2);
    translate([0,0,0])cylinder(r1=d4/2, r2=d1/2, h=(h2-h1)/2);
    support();
    translate([-d4,-d4,-1])cube([d4*2,d4,h2*2]);  
    mirror([-1,1,0])text_on_cylinder(model,[0,0,0],r1=d1/2,r2=d2/2,h=h1, size=3, extrusion_height=2.5,eastwest=80-len(model)*1.7);
}
}

translate([0,1,0])spool();
//translate([0,-1,0])rotate([0,0,180])spool();
//    mirror([-1,1,0])text_on_cylinder(model,[0,0,0],r1=d1/2,r2=d2/2,h=h1, size=3, extrusion_height=0.5,eastwest=80-len(model)*1.7);
