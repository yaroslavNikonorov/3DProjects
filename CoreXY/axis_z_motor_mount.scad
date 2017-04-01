w=70;
dd=60;
nema_w=42;


hole_r=1.6;

d_in=20.4;
m4_r=2.1;

$fn=100;
module nema_mount(){
    cylinder(r=11.2, h=30);
    translate([31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,-31/2,0])cylinder(r=hole_r, h=30);
    translate([31/2,-31/2,0])cylinder(r=hole_r, h=30);
    }

module nn(){
    linear_extrude(height = 5)polygon ( points= [ [0,0], [0,30], [nema_w,0]]);
    }

    
module mm_in(){
    cube([w*2,d_in,d_in]);
    translate([10,-10,10])rotate([-90])cylinder(r=m4_r,h=w);
    translate([w-10,-10,10])rotate([-90])cylinder(r=m4_r,h=w);
    translate([10,10,10])rotate([0,0,0])cylinder(r=m4_r,h=w);
    translate([w-10,10,10])rotate([0,0,0])cylinder(r=m4_r,h=w);
}
module main(){    
difference(){    
union(){
cube([w,95,30]);
translate([0,dd,30])cube([w,5,nema_w]);
translate([5,65,30])rotate([0,-90])nn();
translate([w,65,30])rotate([0,-90])nn();    
}
translate([w/2,55,51])rotate([-90])nema_mount();
translate([0,25,5])rotate([90])mm_in();
translate([0,70,25])rotate([-90])mm_in();
translate([(w-50)/2,30,0])cube([50,30,40]);
}

}
main();
