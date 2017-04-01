model="Shimano BBLC 025-280";
d1 = 59.2;
d2 = 56.75;
h1 = 31;

d4 = 74.45;
d3 = 69.85;
h2 = 37.5;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
