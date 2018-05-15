// Shelf for IKEA STUVA Loft bed
shelf_thick = 17;
edge_t = 4;
bracket_height = 40;

difference() {
    cube([200,100,bracket_height]);
    translate([edge_t,edge_t,5]) 
        #cube([200-edge_t*2,100-edge_t*2,bracket_height+2]);
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
    
    translate([-1,edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([-1,20+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([-1,40+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([-1,60+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([-1,80+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);



    translate([200-edge_t,edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([200-edge_t,20+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([200-edge_t,40+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([200-edge_t,60+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
    translate([200-edge_t,80+edge_t+2,5]) 
            cube([edge_t+2,16,bracket_height-2*edge_t]);
}
translate([0,100-edge_t,0]) {
    difference() {
    cube([200,shelf_thick+2*edge_t,bracket_height]);
        translate([0,edge_t,0])
    #cube([200,shelf_thick,bracket_height-edge_t]);
    }
}