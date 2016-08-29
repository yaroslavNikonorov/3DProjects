r_outer=50;
r_inner=40;
w_outer=60;
w_inner=w_outer-5;

$fn=100;



//difference(){
//	cylinder(r=r_outer,h=w_outer);
//	translate([0,0,-1])cylinder(r=r_inner, h=w_outer*2);
//}


module inner_scope(){
union(){
	cylinder(r1=r_outer, r2=r_inner, h=(w_outer-w_inner)/2);
   translate([0,0,(w_outer-w_inner)/2])cylinder(r=r_inner, h=w_inner);
	translate([0,0,w_inner+(w_outer-w_inner)/2])cylinder(r1=r_inner, r2=r_outer, h=(w_outer-w_inner)/2);
	translate([0,0,-2])cylinder(r=r_outer, h=2);
	translate([0,0,w_outer])cylinder(r=r_outer, h=1);
}
}

union(){
difference(){
	cylinder(r=r_outer, h=w_outer-1);
	inner_scope();
}
}