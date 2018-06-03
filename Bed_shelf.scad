// Shelf for IKEA STUVA Loft bed
rail_thickness = 17;   // this is the bed rail where the shelf will hang

include <./MCAD/teardrop.scad>

width = 100;
length = 220;
edge_t = 4;
height = 40;

slat_w = 16;
dsw = 2;
dcw = edge_t+30;

difference() {
    cube([length,width,height]);   
    // cut out inside
    translate([edge_t,edge_t,5]) 
        #cube([length-edge_t*2,100-edge_t*2,height+2]);

    // add circle decorations for front
    translate([edge_t+15,edge_t+2,5+15]) 
        rotate([90,0,0]) 
            #cylinder(r=15,h=10);
    translate([edge_t+15+40,edge_t+2,5+15]) 
        rotate([90,0,0]) 
            #cylinder(r=15,h=10);
    translate([edge_t+15+80,edge_t+2,5+15]) 
        rotate([90,0,0]) 
            #cylinder(r=15,h=10);
    translate([edge_t+15+120,edge_t+2,5+15]) 
        rotate([90,0,0]) 
            #cylinder(r=15,h=10);    
    translate([edge_t+15+160,edge_t+2,5+15]) 
        rotate([90,0,0]) 
            #cylinder(r=15,h=10);
    
    // add slats for left side
    translate([-1,edge_t,5]) 
            cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([-1,1*(slat_w+2)+edge_t,5]) 
            cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([-1,2*(slat_w+2)+edge_t,5]) 
            cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([-1,3*(slat_w+2)+edge_t,5]) 
            cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([-1,4*(slat_w+2)+edge_t,5]) 
            cube([edge_t+2,slat_w,height-2*edge_t]);


    // add slats for right side
    translate([length-edge_t,edge_t+2,5]) 
            #cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([length-edge_t,20+edge_t+2,5]) 
            #cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([length-edge_t,40+edge_t+2,5]) 
            #cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([length-edge_t,60+edge_t+2,5]) 
            #cube([edge_t+2,slat_w,height-2*edge_t]);
    translate([length-edge_t,80+edge_t+2,5]) 
            #cube([edge_t+2,slat_w,height-2*edge_t]);
}

module decor_teardrop() {
    teardrop(5, 20, 90);
}

!decor_teardrop();

module test_teardrop(){
    translate([0, -15, 0]) teardrop(5, 20, 90);
    translate([0, 0, 0]) teardrop(5, 20, 60);
    translate([0, 15, 0]) teardrop(5, 20, 45);
}

test_teardrop();

translate([0,width-edge_t,0]) {
    difference() {
    cube([length,rail_thickness+2*edge_t,height]);
        translate([0,edge_t,0])
    #cube([length,rail_thickness,height-edge_t]);
    }
}