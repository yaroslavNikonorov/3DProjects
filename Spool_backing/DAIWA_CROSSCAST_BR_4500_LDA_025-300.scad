d1 = 49;
d2 = 45.8;
h1 = 32;

d4 = 54.9;
d3 = 53.3;
h2 = 36.4;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);

