
module clip(hh=8, ww=15, ll=5, ddl=1,zl=8){
        cube([ww,ll,hh]);
        translate([4,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
        translate([6,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
        translate([8,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
    translate([10,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
    translate([12,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
    translate([14,4,ddl])rotate([0,0,45])cube([1,zl,hh-ddl]);
    //translate([15,4,0])rotate([0,0,45])cube([1,5,hh]);
}

difference(){
    cube([15,20,13]);
    translate([0,5,5])cube([15,11.5,10]);
}
translate([0,5,5])clip();