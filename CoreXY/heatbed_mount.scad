module main_mount(){
    cube([10,10,5.5]);
    translate([0,1.75,5.5])cube([10,6.5,2.5]);
    translate([0,0,8])cube([10,10,2]);
    }
    
module hole(){
    cylinder(h=3, r=3.5, $fn=6);
    translate([0,-3,0])cube([6,6,3]);
    }

module m3_hole(){
    translate([0,0,-3])cylinder(r=3.2, h=6, $fn=6);
    cylinder(r=1.6,h=30,$fn=100);
    }

module main(){
difference(){
    main_mount();
    translate([5,5,-1])cylinder(h=20,r=1.7, $fn=100);
    //translate([5,5,1.5])hole();
    translate([5,5,1.5])m3_hole();
}
}

rotate([0,-90,0])main();
//hole();