d1 = 47.6;
d2 = 45.7;
d3 = 53.2;
d4 = 53.4;
h1 = 29.5;
h2 = 36.8;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);

