// Mini Goblet 


difference() {
	union(){
	translate([0,0,30]) cylinder(h = 27, r1 = 21.5, r2 = 25);
	translate([0,0,30]) sphere(r = 21.5);
	polyhedron(
  points=[ [15,15,0],[15,-15,0],[-15,-15,0],[-15,15,0],
		 // the four points at base

           [0,0,30]  ],  
         // the apex point 

  		   triangles=[ [0,1,4],[1,2,4],[2,3,4],[3,0,4],
         // each triangle side

          [1,0,3],[2,1,3] ]                         
		// two triangles for square base
 	);
	}


	union(){
		translate([0,0,30]) cylinder(h = 27, r1 = 20, r2 = 24);
		translate([0,0,30]) sphere(r = 20); 
	}
}

// 43
// 50

// 40
// 44