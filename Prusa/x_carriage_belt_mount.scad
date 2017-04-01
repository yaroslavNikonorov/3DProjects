rr=5;
d_in=1.6;
dd_in=2.5;
h=13;
h_s=7.5;
w=14;
ss_d=2.7;
$fn=100;
module raindrop2D(thick, radius, centered = true){
	if(!centered){
		translate([radius, radius, 0]){
			cylinder(h = thick, r = radius);
			linear_extrude(height = thick)
			polygon(points=[[radius * -cos(20), radius * sin(20)],[radius * cos(20), radius * sin(20)],[0, radius * 3]], paths=[[0,1,2]]);
		}
	}else if(centered){
		cylinder(h = thick, r = radius);
		linear_extrude(height = thick)
		polygon(points=[[radius * -cos(20), radius * sin(20)],[radius * cos(20), radius * sin(20)],[0, radius * 3]], paths=[[0,1,2]]);
	}	
}

module m3_support(){
    translate([0,0,-1])cylinder(r=3,h=3);
    translate([0,0,2])cylinder(r1=3,r2=1.6,h=2);
    cylinder(r=1.6,h=20);
}


module belt_support(){
    translate([0,rr,0])rotate([0,0,-109.5])difference(){
        raindrop2D(thick=10, radius=rr);
        raindrop2D(thick=11, radius=rr-d_in);
    }
    translate([rr*2,0,0])cube([50,dd_in,h]);
     //translate()linear_extrude(height = h)polygon ( points= [ [0,r], [2*r,0], [0,-r]]); 
    }
    
module belt_mount(){
    difference(){
        cube([60,w,h]);
        translate([24,ss_d,h-h_s])mirror([-1,0,0])belt_support();
        translate([36,ss_d,h-h_s])belt_support();
        translate([24,ss_d+rr,-1])m3_support();
        translate([36,ss_d+rr,-1])m3_support();
        translate([8,ss_d+1+rr,-1])m3_support();
        translate([52,ss_d+1+rr,-1])m3_support();
    }
}

belt_mount();
//belt_support();
//m3_support();