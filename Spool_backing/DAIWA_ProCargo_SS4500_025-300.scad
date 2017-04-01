d1 = 46 ;
d2 = 44.7;
h1 = 23;

d4 = 58.8;
d3 = 57.3;
h2 = 26.8;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);

