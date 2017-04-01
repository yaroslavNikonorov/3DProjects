text="Daiwa Emblem PRO 5000 0.25-250";
d1 = 60.3;
d2 = 62.0;
d3 = 71;
d4 = 67.2;
h1 = 31;
h2 = 37.4;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);

