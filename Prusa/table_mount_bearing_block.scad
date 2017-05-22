l=25;
w=20;
h=22;

rb=7.7;



module m3_support(){
    $fn=100;
    cylinder(r=3,h=3);
    translate([0,0,3])cylinder(r1=3,r2=1.6,h=2);
    cylinder(r=1.6,h=50);
}

module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=9, $fn=6);
    cylinder(r=1.6,h=50, $fn=100);
}

module profile_mount(ph=10){
    $fn=100;
    difference(){
    union(){
        cylinder(r=5,h=ph);
        translate([0,-5,0])cube([10,10,ph]);
    }
//    m3_hole();
}
}


module  bearing_block(){
    difference(){
    union(){
        cube([l,w,h]);
        translate([0,w/2,h-6])profile_mount(ph=6);
        translate([15,25,0])rotate([0,0,-90])profile_mount(ph=h);
        translate([l/2,0,0])rotate([0,0,90])profile_mount(ph=h);
    }
    translate([-10,10,10])rotate([0,90,0])cylinder(r=rb, h=100, $fn=100);
    translate([0,10,h-9])m3_hole();
    translate([15,25,-3])m3_hole();
        translate([l/2,0,-3])m3_hole();
}
}

module main(){
    difference(){
union(){
    bearing_block();
    translate([160,0,0])rotate([0,0,180])mirror([0,-15,0])bearing_block();
    translate([l,5,h-10])cube([110,10,10]);
}
translate([0,w/2,10])rotate([0,90,0])cylinder(r=rb-1,h=200, $fn=100);
}
}
//profile_mount();
rotate([180,0,45])main();