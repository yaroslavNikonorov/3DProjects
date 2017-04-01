rr=8;

$fn=100;


module chanal(r_c=5, w_c=1.9, h_c=9, ll=50){
    intersection(){
    difference(){
        cylinder(r=r_c+w_c, h=h_c);
        cylinder(r=r_c, h=h_c);
        }
    cube([r_c+w_c,r_c+w_c,h_c]);
    }
    translate([r_c,-ll,0])cube([w_c,ll,h_c]);
    translate([-ll,r_c,0])cube([ll,w_c,h_c]);
}
    
//    chanal();

module chanal_mm(){
    translate([26,-5,11.5])rotate()chanal();
    translate([14,-5,-0.5])rotate([0,0,90])chanal();

    }


module main(){
difference(){
    cube([40,60,20]);
    translate([20,30,0])cylinder(r=rr,h=30);
    translate([0,10,0])rotate([0])chanal_mm();
    translate([0,50,20])rotate([180])chanal_mm();
    translate([20,17,0])cylinder(r=1.6,h=30);
    translate([20,43,0])cylinder(r=1.6,h=30);
    translate([0,11.5,11.5])cube([15,5,8.5]);
    translate([25,5.5,0])cube([15,5,8.5]);
    translate([25,49.5,11.5])cube([15,5,8.5]);
    translate([0,43.5,0])cube([15,5,8.5]);
}
}
main();

