l=42;
w=42;
h=20;

nema_w=42;
nema_sw=31;
nema_d=23;
nema_h=15;
nema_dd = (nema_w-nema_sw)/2;

b_d=16.2;


bh_w=16.5;
bh_h=12;
bh_inh=21.5;

ss_d=22;


module m3_support(){
    $fn=100;
    translate([0,0,-2])union(){
    cylinder(r=3,h=3);
    translate([0,0,3])cylinder(r1=3,r2=1.6,h=2);
    cylinder(r=1.6,h=50);
    }
}


module main(){
    difference(){
        union(){
            cube([l,w,h]);
            //translate([nema_w/2,w/2,h])cylinder(r1=nema_d/2, r2=b_d/2, h=3, $fn=100);
        }
        //nema mount
        translate([nema_dd,nema_dd,h])rotate([180])m3_support();
        translate([nema_w-nema_dd,nema_dd,h])rotate([180])m3_support();
        translate([nema_w-nema_dd,nema_w-nema_dd,h])rotate([180])m3_support();
        translate([nema_dd,nema_w-nema_dd,h])rotate([180])m3_support();
        
        translate([nema_w/2,w/2,0])cylinder(r=nema_d/2, h=nema_h, $fn=100);
        translate([nema_w/2,w/2,0])cylinder(r=b_d/2, h=bh_inh, $fn=100);
        translate([nema_w/2,w/2,0])cylinder(r=b_d/2-2, h=bh_inh*2, $fn=100);


        //belt holes
        translate([nema_w/2,(nema_w-bh_w)/2,-1])cube([l,bh_w,bh_h]);
        translate([54.8,(w-ss_d)/2,h])rotate([180])m3_support();
        translate([54.8,w-(w-ss_d)/2,h])rotate([180])m3_support();
        translate([79.8,(w-ss_d)/2,h])rotate([180])m3_support();
        translate([79.8,w-(w-ss_d)/2,h])rotate([180])m3_support();
    }
}
    
rotate([0,180,0])main();