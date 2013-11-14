include <inc/28BYJ-48-Stepper-Motor.scad>;
difference(){
	union(){
		import("inc/SpherebotEndplate_fixed.stl");

		//translate([50,67,-20]) stepper28BYJ();

	}
	union(){
		translate([32.5,67,-1]) cylinder(h = 12, r=2.25, $fn=100);
		translate([67.5,67,-1]) cylinder(h = 12, r=2.25, $fn=100);
	}
}