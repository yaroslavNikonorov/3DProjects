model="Shimano Ultegra XTC 10000 025-300";
d1 = 58;
d2 = 58;
h1 = 32;

d4 = 68.5;
d3 = 68.5;
h2 = 37;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
