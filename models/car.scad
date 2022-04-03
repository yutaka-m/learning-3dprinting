$fn=36;

d=20;
//linear_extrude(15) circle(4.15);
translate([0,20,0]) car(d);
module car(d) {
    difference() {
        union() {
            translate([d, 0, 0]) linear_extrude(30) circle(12);

            linear_extrude(30) square([d*2, 24],true);

            translate([-d, 0, 0]) linear_extrude(30) circle(12);
        }
        translate([d, 0, 0]) linear_extrude(24) circle(7.5);
        translate([-d, 0, 0]) linear_extrude(24) circle(7.5);
        
        translate([0, 0, 0]) linear_extrude(100) circle(4.10);
        translate([d, 0, 0]) linear_extrude(100) circle(4.10);
        translate([-d, 0, 0]) linear_extrude(100) circle(4.10);
    }
}

translate([0,-20,0]) frame(d);
module frame(d) {
    difference() {
        union() {
            translate([d, 0, 0]) linear_extrude(30) circle(12);

            linear_extrude(30) square([d*2, 24],true);

            translate([-d, 0, 0]) linear_extrude(30) circle(12);
        }
        translate([0, 0, 5]) linear_extrude(100) circle(4.05);
        translate([d, 0, 5]) linear_extrude(100) circle(4);
        translate([-d, 0, 5]) linear_extrude(100) circle(4);        
    }
}