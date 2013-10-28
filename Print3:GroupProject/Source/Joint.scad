rotate([0,180,0])
difference(){
difference(){
	translate([8,0,12.5])
	cube(size = [30,20,25], center = true);
		union(){
		translate([55,0,0])
			difference(){
				// removed groove 
				#cylinder(h = 20, r=56, $fn=100);
				#cylinder(h = 20, r=49, $fn=100);
			}

		}
translate([15,0])
//Dowel Hole or latern maybe spoon
cylinder(h = 20, r=5);
}
}
