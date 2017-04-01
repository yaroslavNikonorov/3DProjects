$fn=100;
module belt_line(l=50, w=10,h=20, r=0.5){
    module single(){
        union(){
        difference(){
            cube([r*4,w,h]);
            translate([r,w,0])cylinder(r=r,h=h);
            }
            
        }
        translate([r*3,w,0])cylinder(r=r,h=h);
    }

    for(a=[0:l/(r*4)]){
        translate([a*r*4,0,0])single();
    }
}
    
//belt_line();


rotate([90])difference(){
//cube([40,20,20]);
//    translate([7,0,0])cube([26,6.5,25]);
    union(){
        intersection(){
            belt_line(l=22,w=5.5,h=20);
            cube([22,7,20]);
        }
    }
    //translate([11,15,0])cylinder(r=1.6,h=30);
    //translate([29,15,0])cylinder(r=1.6,h=30);
    translate([5,0,10])rotate([-90])cylinder(r=1.6,h=30);
    translate([17,0,10])rotate([-90])cylinder(r=1.6,h=30);
}