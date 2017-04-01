th_in=1.5;
th_out=1.5;
l_h=0.4;

s_w=1;
s_n=15;

p_w=0.8;

$fn=100;

module support_diff(d1=30,d2=28,d3=38,d4=40,h1=20,h2=25){
    ds_in_max=d1+(th_in*2);
    ds_in_min=d2+(th_in*2);
    hs_in=h2+th_out;
    ds_out_max=d4-(th_out*2);
    ds_out_min=d3-(th_out*2);
    hs_out=h2;
    union(){
    difference(){
        cylinder(r1=ds_out_max/2, r2=ds_out_min/2, h=hs_out);
        translate([0,0,(hs_out-hs_in)/2])cylinder(r1=ds_in_max/2, r2=ds_in_min/2, h=hs_in);
        for(ang=[0:360/(s_n*2):360]){
            rotate([0,0,ang])translate([(d2/2)-1,-s_w/2,-1])cube([20,s_w,h2+2]);
        }
        translate([-d4,-s_w,0])cube([d4*2,s_w*2,hs_out]);
}
}
}

module stand(d1=30,d2=28,d3=38,d4=40,h1=20,h2=25, ss_w=1){
    difference(){
        union(){
            translate([0,0,0])cylinder(r1=d4/2-p_w, r2=d1/2, h=(h2-h1)/2);
            translate([0,0,-l_h])cylinder(r=d4/2+1,h=l_h);
        }
        for(ang=[0:360/(s_n*2):360]){
            rotate([0,0,ang])translate([(d2/2)-1,-ss_w/2,-1])cube([d4-d1,ss_w,h2+2]);
            //rotate([0,0,ang])translate([(d4/2)-p_w,-ss_w/2,-1])cube([3,ss_w,h2+2]);
        }
        translate([(d2/2)-1,-ss_w,-1])cube([d4-d1,ss_w,h2+2]);
        translate([(d2/2)-1,0,-1])cube([d4-d1,ss_w,h2+2]);
        translate([-(d2/2+d4-d1)+1,-ss_w,-1])cube([d4-d1,ss_w,h2+2]);
        translate([-(d2/2+d4-d1)+1,0,-1])cube([d4-d1,ss_w,h2+2]);
        
//        translate([(d4/2)-p_w,-ss_w,-1])cube([3,ss_w,h2+2]);
//        translate([(d4/2)-p_w,0,-1])cube([3,ss_w,h2+2]);
//        translate([-(d4/2+3)+p_w,-ss_w,-1])cube([3,ss_w,h2+2]);
//        translate([-(d4/2+3)+p_w,0,-1])cube([3,ss_w,h2+2]);

    }
    }


module spool_backing(d1=30,d2=28,d3=38,d4=40,h1=20,h2=25, support=true, stand=false){
    h_delta=(h2-h1)/2;
    difference(){
        union(){
            cylinder(r1=d4/2, r2=d3/2, h=h2);
            translate([0,0,-l_h])cylinder(r=d4/2,h=l_h);
        }
        translate([0,0,h_delta])cylinder(r1=d1/2, r2=d2/2, h=h1);
        translate([0,0,h1+h_delta])cylinder(r1=d2/2, r2=d3/2-p_w, h=(h2-h1)/2);
        
        if(support){
            support_diff(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
        }
        translate([-d4,-d4,-1])cube([d4*2,d4,h2*2]);
    if(stand){
        //for(st_a=[5:34:175]){
        //    rotate([0,0,st_a])translate([d1/2,-p_w/2,0])cube([(d4-d1)/2-p_w,p_w,1]);
        //}
        stand(d1=d1,d2=d2,d3=d3,d4=d4,h1=h1,h2=h2);
    }else{
        translate([0,0,0])cylinder(r1=d4/2-p_w, r2=d1/2, h=(h2-h1)/2);
        //support();
    }
}
}

//spool_backing(stand=true);
stand();