model="Daiwa Emblem Spod 0.16-300";
d1 = 63.9;
d2 = 65.6;
h1 = 33;

d4 = 67.6;
d3 = 69.7;
h2 = 37.4;

use <spool_backing.scad>

translate([0,1,0])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
translate([0,-1,0])rotate([0,0,180])spool_backing(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2,stand=true);
