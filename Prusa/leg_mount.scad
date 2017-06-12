d=12;
w_p=6.1;

module m4_hole(){
    translate([0,0,-1.9])cylinder(r=7.8/2, h=5, $fn=6);
    cylinder(r=2.1,h=30, $fn=100);
}

module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=5, $fn=6);
    cylinder(r=1.6,h=30, $fn=100);
}


module m3_support(){
    cylinder(r=3,h=3, $fn=100);
    translate([0,0,3])cylinder(r1=3,r2=1.6,h=2, $fn=100);
}

module main(){
    difference(){
    union(){
        translate([-d/2,0,0])cube([d,d,d-2]);
        translate([-d/2,d/2-2,0])cube([d,d+1,d*2-4]);
        cylinder(r=d/2, h=d-2, $fn=100);
    }
        translate([0,0,d-2])rotate([180,0,0])m4_hole();
        m4_hole();
        translate([-d/2-1,d/2+1,4])cube([d*2,w_p,d*2]);
        translate([0,1,d+2])rotate([-90])m3_support();
        translate([0,d+6,d+2])rotate([90])m3_hole();
    }
}   
main();