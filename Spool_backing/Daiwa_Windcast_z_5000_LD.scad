model="Shimano BBLC 025-280";
d1 = 38.1;
d2 = 35;
h1 = 33;

d4 = 61.7;
d3 = 57.3;
h2 = 37.5;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
