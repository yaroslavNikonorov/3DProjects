h=45;
w_in=20.4;
r_m4=2.1;

$fn=100;



module hole(){
    cylinder(r=r_m4,h=h);
    }

difference(){
    cube([30,30,h]);
    translate([5,5,5])cube([w_in,w_in,h+5]);
    translate([0,5,5])cube([h,w_in,w_in]);
    translate([15,0,15])rotate([-90])hole();
    translate([15,0,35])rotate([-90])hole();
    translate([-5,15,35])rotate([-90,0,-90])hole();
    translate([15,15,0])hole();

}
    