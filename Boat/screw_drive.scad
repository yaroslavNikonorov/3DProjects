
blade_count=4;
ang=60;
hight=10;
diam=30;
w=2;
lh=0.1;

cc=ang/lh;
hh=hight/cc;


module blade_print(){
    //translate([0,-w/2,0])cube([diam/4,w,hh]);
    difference(){
        scale([1,w/diam])cylinder(r=diam/2,h=hh);
        translate([-diam/2,-w/2,0])cube([diam,w*2,hh*3],center=true);
    }
    }

module screw_blade(){
    for(a = [0:1:cc]){
        rotate([0,0,a*lh])translate([0,0,a*hh])
            blade_print();
        }
    
    }


module main(){
for(a=[0:360/blade_count:360]){
    rotate([0,0,a])screw_blade();
}
}
//cube();
main();
//blade_print();
//linear_extrude(height = 10, center = true, convexity = 10, scale=[1,5], $fn=100)circle(r1 = 1,r2=5);
//circle(r=20);
//scale([1/20,1])cylinder(r=20,h=hh);
//circle(r=20);