module t_nut(){
difference(){
rotate([0,90,0])linear_extrude(height = 10)polygon ( points= [ [0,3], [0,9], [1,9], [1,12], [2,12],[5,9],[5,3],[2,0],[1,0],[1,3],]);
translate([5,6,-6])cylinder(r=7.9/2,h=4, $fn=6);
translate([5,6,-6])cylinder(r=2,1,h=10,$fn=100); 
}
}

rotate([180,0,0])t_nut();