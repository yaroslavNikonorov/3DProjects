model="Shimano Ultegra XTC 10000 025-300";
d1 = 31.39;
d2 = 31.39;
h1 = 15;

d4 = 43;
d3 = 43;
h2 = 18.6;

l_h=0.4;
h2_abs = ceil(h2/l_h)*l_h;
echo(h2_abs);

in_delta = 0.4;
out_delta = 0;
h_delta = 0;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1+in_delta,d2=d2+in_delta,d3=d3-out_delta,d4=d4-out_delta,h1=h1,h2=h2_abs+h_delta,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1+in_delta,d2=d2+in_delta,d3=d3-out_delta,d4=d4-out_delta,h1=h1,h2=h2_abs+h_delta,stand=true);