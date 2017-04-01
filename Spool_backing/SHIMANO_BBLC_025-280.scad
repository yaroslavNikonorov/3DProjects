model="Shimano BBLC 025-280";
d1 = 60.2;
d2 = 56.8;
h1 = 32;

d4 = 75;
d3 = 70;
h2 = 38.3;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
