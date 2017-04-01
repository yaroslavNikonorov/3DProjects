hole_r=1.6;

$fn=100;
module nema_mount(){
    cylinder(r=11.2, h=30);
    translate([31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,31/2,0])cylinder(r=hole_r, h=30);
    translate([-31/2,-31/2,0])cylinder(r=hole_r, h=30);
    translate([31/2,-31/2,0])cylinder(r=hole_r, h=30);
    }
    
    
module dd(){    
difference(){
    cube([42,42,2]);
translate([21,21,0])nema_mount();    
    }
    
}
intersection(){
dd();
translate([21,21,0])rotate([0,0,45])cube([53.8,53.8,10], center=true);
}

    