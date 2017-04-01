d1 = 45.8;
d2 = 45.8;
d3 = 53.9;
d4 = 53.9;
h1 = 27;
h2 = 31.9;

in_delta = 0.2;
out_delta = 0.4;
h_delta = 0.5;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1+in_delta,d2=d2+in_delta,d3=d3-out_delta,d4=d4-out_delta,h1=h1,h2=h2+h_delta,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1+in_delta,d2=d2+in_delta,d3=d3-out_delta,d4=d4-out_delta,h1=h1,h2=h2+h_delta,stand=true);

