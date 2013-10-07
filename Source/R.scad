difference(){
	union(){
		union(){
			cube(size = [6,35,5], center = false);
			translate([-7,0,0])
			cube(size = [10,15,5]);
			translate([-7,7.5,0])
			cylinder(h = 5, r=7.5);
		}


	difference(){
		union(){
			translate([-4,0,0])
			rotate(20,0,0)
			cube(size = [7,33,5], center = false);
			translate([-11.8,31.73,0])
			cylinder(h = 5, r=3.55);
			translate([-18,30.2,0])
			cube(size = [7,5,5], center = false);
		}
			translate([-12,4,0])
			rotate(20,0,0)
			cube(size = [7,33,5], center = false);
	}
}
	union(){
		translate([0,0,4])
		union(){
			translate([-2.10,-3,0])
			rotate(20,0,0)
			cube(size = [6.25,40,5], center = false);
			translate([-11.8,31.73,0])
			cylinder(h = 5, r=3.55);
			translate([-18,30.3,0])
			cube(size = [7,5,5], center = false);
		}
		
	}
}

	
	


	




