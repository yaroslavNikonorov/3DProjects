c_h=46.3;
c_w=32;

d_exm=16.15;
h_exm=9;
d_exm_in=11.9;
h_exm_in=5.5;

module ex_mount(){
        translate([0,0,-1])cylinder(r=d_exm/2, h=h_exm+1, $fn=100);
        translate([0,0,0])cylinder(r=d_exm_in/2, h=h_exm+h_exm_in+1, $fn=100);
}


module m3_hole(){
    translate([0,0,-1])cylinder(r=3.2, h=4, $fn=6);
    cylinder(r=1.6,h=30,$fn=100);
    }


difference(){
    union(){
            cube([60,20,10]);
            translate([(60-c_w)/2,0,0])cube([c_w,20,c_h-c_w]);
        }
        translate([30,10,(c_h-c_w)])rotate([180])ex_mount();
        translate([(60-c_w)/2,10,0])cube([c_w,c_w,c_w]);
        translate([20,0,(c_h-c_w)/2])rotate([-90])m3_hole();
        translate([40,0,(c_h-c_w)/2])rotate([-90])m3_hole();
        translate([5,10,-1])cylinder(r=1.6,h=20,$fn=100);
        translate([55,10,-1])rotate([])cylinder(r=1.6,h=20,$fn=100);
    //translate([20,])cylinder(r=1.6, h=30, $fn=100);
    //translate([])rotate([-90])cylinder(r=1.6, h=30, $fn=100);
}

//        translate([30,10,(c_h-c_w)])rotate([180])ex_mount();
