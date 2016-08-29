d_in_max = 60.2;
d_in_min = 56.8;
h_in = 23.6;

d_out_max = 75;
d_out_min = 70;
h_out = 27.4;

$fn=100;

module spool(){
difference(){
cylinder(r1=d_out_max/2, r2=d_out_min/2, h=h_out);
translate([0,0,(h_out-h_in)/2])cylinder(r1=d_in_max/2, r2=d_in_min/2, h=h_in);
translate([0,0,h_in+(h_out-h_in)/2])cylinder(r1=d_in_min/2, r2=d_out_min/2, h=(h_out-h_in)/2);
translate([0,0,0])cylinder(r1=d_out_max/2, r2=d_in_max/2, h=(h_out-h_in)/2);
translate([-d_out_max,0,-1])cube([d_out_max*2,d_out_max,h_out*2]);
}
}

translate([0,-1,0])spool();
translate([0,1,0])rotate([0,0,180])spool();


