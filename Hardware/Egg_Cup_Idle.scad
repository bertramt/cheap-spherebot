include <inc/28BYJ-48-Stepper-Motor.scad>;
difference(){
union(){
	cylinder(h = 20, r=8, $fn=100);
	translate([0,0,20]) cylinder(h = 2.5, r=5.5, $fn=100);
	//translate([0,0,-21]) stepper28BYJ();
}
union(){
	//cylinder(h = 30, r=8, $fn=60);
	translate([0,0,11]) cylinder(h = 12, r=3.6, $fn=60);
	//#translate([0,-8,-21]) stepper28BYJ();
	//cylinder(h = 5, r=2.49, $fn=60);
	cube(size = [3.1,5,8], center = true);
	translate([0,0,-1]) cylinder(h = 10, r=3.9, $fn=60);
}
}
