include <inc/28BYJ-48-Stepper-Motor.scad>;
difference(){
	union(){
		//import("inc/SpherebotEndplate_fixed.stl");
		import("inc/Backplate_fixed.stl");
		//translate([50,14,-20]) stepper28BYJ();
		//#translate([50,22,-1]) cylinder(h = 12, r=2.25, $fn=100);
	}
	union(){
		translate([32.5,14,-1]) cylinder(h = 12, r=2.25, $fn=100);
		translate([67.5,14,-1]) cylinder(h = 12, r=2.25, $fn=100);
	}
}