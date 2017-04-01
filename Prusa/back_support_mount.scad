ang=74;

wm=40;
hm=40;

h=12;
wns=25;
hns=25;
ww=3.5;
wh=5;

d_nut=21;
d_hole=10.1;
h_nut=8;

module m3_support(){
    $fn=100;
    cylinder(r=3,h=3);
    translate([0,0,3])cylinder(r1=3,r2=1.6,h=2);
    cylinder(r=1.6,h=50);
}


module s_wall(){
    difference(){
    linear_extrude(height = ww)polygon( points= [ [0,0], [hns*cos(ang),hns*sin(ang)],[hns,0]]);
    }
}


module s_mount(){
        rotate([0,-ang,0])union(){
            difference(){
            cube([hns,wns,h]);    
            translate([hns/2,wns/2,-1])cylinder(r=d_nut/2,h=h_nut+1, $fn=6);
            translate([hns/2,wns/2,-1])cylinder(r=d_hole/2,h=h_nut*2, $fn=100);
            }
        }
            translate([0,ww,0])rotate([90])s_wall();
            translate([0,wns,0])rotate([90])s_wall();
        translate([-h*cos(90-ang)])rotate([-90])linear_extrude(height = wns)polygon( points= [ [0,0], [-h*cos(90-ang),-h*sin(90-ang)],[-h*cos(90-ang),0]]);
}

module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=5, $fn=6);
    cylinder(r=1.6,h=30, $fn=100);
}

module main(){
    difference(){
    union(){
        cube([hm,wm,wh]);
        translate([h*cos(90-ang),(wm-wns)/2,wh])s_mount();
    }
    translate([4,4,6])rotate([180])m3_hole();
    translate([hm-4,4,6])rotate([180])m3_hole();
    translate([4,wm-4,6])rotate([180])m3_hole();
    translate([hm-4,wm-4,6])rotate([180])m3_hole();
}
}
    
main();
//s_mount();
//translate([-h*cos(90-ang)])rotate([90])linear_extrude(height = wns)polygon( points= [ [0,0], [-h*cos(90-ang),h*sin(90-ang)],[-h*cos(90-ang),0]]);