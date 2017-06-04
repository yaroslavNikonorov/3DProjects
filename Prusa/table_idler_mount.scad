h_mount= 30;
w_mount = 34;
hh_mount = 14;
d_in=16;


dd_in=9.4;
dh_in=0.5;
hh=8.5;
$fn=100;

wdw=11;


module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=5, $fn=6);
    cylinder(r=1.6,h=30);
}


module m3_support(){
    cylinder(r=3,h=3);
    translate([0,0,3])cylinder(r1=3,r2=1.6,h=2);
}

module m4_support(){
    cylinder(r1=4,r2=2.1,h=2.8);
}

module m4_hole(){
    translate([0,0,-1.9])cylinder(r=7.8/2, h=5, $fn=6);
    cylinder(r=2.1,h=30);
}


module base(m4=false, m3_s=false, m4_s=false){
    difference(){
        cube([w_mount,h_mount,hh_mount]);
        translate([w_mount/2,h_mount/2,hh_mount-hh])cylinder(r=d_in/2,h=20);
        translate([w_mount/2,h_mount/2,hh_mount-(hh+dh_in)])cylinder(r=dd_in/2,h=20);
        if(m4){
            translate([w_mount/2,h_mount/2,0])m4_hole();
        }else{
            translate([w_mount/2,h_mount/2,0])cylinder(r=2.1,h=30);
            }
        translate([w_mount/2,(h_mount-d_in)/2,hh_mount-hh])cube([w_mount,d_in,20]);
        
        if(m4_s){
                translate([w_mount/2,h_mount/2,0])m4_support();
            }

        if(m3_s){
            translate([4,4,-2])rotate([0])m3_support();
            translate([w_mount-5,4,-2])rotate([0])m3_support();
            translate([w_mount-5,h_mount-4,-2])rotate([0])m3_support();
            translate([4,h_mount-4,-2])rotate([0])m3_support();
        }
            
        
        translate([4,4,-1])rotate([0])cylinder(r=1.6,h=30);
        translate([w_mount-5,4,-1])rotate([0])cylinder(r=1.6,h=30);
        translate([w_mount-5,h_mount-4,-1])rotate([0])cylinder(r=1.6,h=30);
        translate([4,h_mount-4,-1])rotate([0])cylinder(r=1.6,h=30);
        }
    }


base(m3_s=true, m4_s=true);

//translate([w_mount+1,0,0])base(m4=true);