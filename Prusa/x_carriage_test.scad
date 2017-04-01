l=80.15;
w=60;
//h=6;
h=19;
hh=6;
//hh=3;
s_w=20;
br=7.7;

rr=5;
d_d=0.3;
d_in=1.6;
dd_in=2.5;
//h=12.5;
h_s=1;
//w_s=14;
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

module m3_hole(){
    translate([0,0,-2])cylinder(r=3.2, h=5, $fn=6);
    cylinder(r=1.6,h=50, $fn=100);
}

module m4_hole(){
    translate([0,0,-2])cylinder(r=4, h=5, $fn=6);
    cylinder(r=2.1,h=50, $fn=100);
}

module belt_support(){
    translate([0,rr,0])rotate([0,0,-109.5])difference(){
        raindrop2D(thick=h_s, radius=rr-d_d);
        raindrop2D(thick=h_s, radius=rr-d_in+d_d);
    }
    translate([rr*2,d_d,0])cube([14,dd_in-(d_d*2),h_s]);
     //translate()linear_extrude(height = h)polygon ( points= [ [0,r], [2*r,0], [0,-r]]); 
    }
module support(){
        translate([24,ss_d,hh])mirror([-1,0,0])belt_support();
        translate([36,ss_d,hh])belt_support();
    }

module m3_support(){
    cylinder(r=1.6,h=30);
    }


module cariage(){
    difference(){
            cube([w,l,h]);
        translate([0,10,10])rotate([0,90])cylinder(r=br,h=w*2,$fn=100);
        translate([0,l-10,10])rotate([0,90])cylinder(r=br,h=w*2,$fn=100);
        translate([0,(l-s_w)/2,hh])cube([w,s_w,hh*3]);
        translate([24,(l-s_w)/2+ss_d+rr,0])m3_hole();
        translate([36,(l-s_w)/2+(ss_d+rr),0])m3_hole();
        translate([8,(l-s_w)/2+ss_d+1+rr,0])m3_hole();
        translate([52,(l-s_w)/2+ss_d+1+rr,0])m3_hole();
        
        translate([10,20,h])rotate([180])m3_hole();
        translate([50,20,h])rotate([180])m3_hole();
        translate([10,l-20,h])rotate([180])m3_hole();
        translate([50,l-20,h])rotate([180])m3_hole();

        }
        translate([0,(l-s_w)/2,0])support();
    }
//translate([36,(l-s_w)/2+(ss_d+rr),-1])m3_support();
cariage();
//m3_support();
//support();
//belt_support();