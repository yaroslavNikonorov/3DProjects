text="Daiwa Emblem PRO 5000 0.25-300";
d1 = 61.7;
d2 = 62.1;
h1 = 33;

d4 = 66.2;
d3 = 70.0;
h2 = 37.4;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
