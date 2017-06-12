h=4;
h_h=2;
d=20;
d_d=3;
n=12;


module m4_support(dd=1){
    translate([0,0,-dd])cylinder(r=4,,h=dd*2, $fn=100);
    translate([0,0,dd])cylinder(r1=4,r2=2.1,h=2.8, $fn=100);
    cylinder(r=2.1,h=50, $fn=100);
}

module m4_hole(){
    translate([0,0,-1.9])cylinder(r=7.8/2, h=5, $fn=6);
    cylinder(r=2.1,h=30,$fn=100);
}


module main(){
    difference(){
        union(){
            cylinder(h=h,r=d/2, $fn=100);
            translate([0,0,h])cylinder(h=h_h,r=d/2-4,$fn=100);
        }
        for(a = [0:360/n:360]){
            rotate([0,0,a])translate([d/2,0,-1])cylinder(r=d_d/2,h=h*2,$fn=100);
        }
        //m4_support();
        translate([0,0,0])rotate([0,0,0])m4_hole();
    }
}


main();