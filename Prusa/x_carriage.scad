l=80;
w=60;
h=19;
hh=6.5;
s_w=20;
br=7.7;

rr=4.9;
d_in=1.4;
dd_in=2.3;
//h=12.5;
h_s=1;
//w_s=14;
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


module belt_support(){
    translate([0,rr,0])rotate([0,0,-109.5])difference(){
        raindrop2D(thick=h_s, radius=rr);
        raindrop2D(thick=h_s, radius=rr-d_in);
    }
    translate([rr*2,0,0])cube([14,dd_in,h_s]);
     //translate()linear_extrude(height = h)polygon ( points= [ [0,r], [2*r,0], [0,-r]]); 
    }
module support(){
        translate([24,2,hh])mirror([-1,0,0])belt_support();
        translate([36,2,hh])belt_support();
    }



module cariage(){
    difference(){
            cube([w,l,h]);
            translate([0,30,0])support();
        translate([0,10,10])rotate([0,90])cylinder(r=br,h=w*2,$fn=100);
        translate([0,l-10,10])rotate([0,90])cylinder(r=br,h=w*2,$fn=100);
        translate([0,(l-s_w)/2,hh])cube([w,s_w,hh*2]);
        }
        translate([0,30,0])support();
    }

cariage();
//support();