difference(){
difference(){
	translate([8,0,15])
	cube(size = [30,20,30], center = true);
		union(){
		translate([55,0,0])
			difference(){
				// removed groove
				cylinder(h = 20, r=55);
				cylinder(h = 20, r=50);
			}

		}
translate([15,0])
cylinder(h = 20, r=5);
}
}
