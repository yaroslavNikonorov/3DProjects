d1 = 48.9;
d2 = 48.9;
d3 = 60;
d4 = 60;
h1 = 30;
h2 = 33.6;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);

