//Choose
	Globe = false;
	Trick = false;
	Tree = true;
	House = true;
	Snowman1 = true;


//Build
	if(Globe == true){
		difference(){
			%Globe();	
			cylinder(19,2,2);
		}
	}	
	if(Trick == true){
		Trick();	
	}
	if(Snowman1 == true){
		Snowman1();	
	}
	
	

//Design
	module Globe(){
		translate([0,0,45])
		difference(){
			sphere(r = 45,$fn=30);
			sphere(r = 42,$fn=30);	
		}
		cylinder(17,35,30, $fn=30);	
	}

	module Trick(){
		translate([70,0,0])
		cylinder(90,5,5);
	}
	module Tree(){
	}
	module House(){
	}
	module Snowman1(){
	import("/Users/Leone/Documents/GitHub/3D_Fabrication/Print8:Final/Source/ReparedParts/Snowman.stl");
	
	}
	module Snowman2(){
	import("/Users/Leone/Documents/GitHub/3D_Fabrication/Print8:Final/Source/ReparedParts/Snowman.stl");
	mirror([90,0,0])
	translate([1,0,0])
	import("/Users/Leone/Documents/GitHub/3D_Fabrication/Print8:Final/Source/ReparedParts/Snowman.stl");
	}