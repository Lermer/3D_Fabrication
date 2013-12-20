//Choose
	Globe = true;
	Trick = true;
	House = false;



//Build
	if(Globe == true){
		difference(){
			Globe();	
			GlobeCutOut();
		}
	}	
	if(Trick == true){
		Trick();	
	}
	if(House == true){
		House();	
	}

	
	

//Design
	module Globe(){
		translate([0,0,45])
		difference(){
			sphere(r = 45,$fn=30);
			sphere(r = 44.5,$fn=30);	
		}
		cylinder(25,35,40, $fn=30);
	}

	module Trick(){
		translate([70,0,15])
		cylinder(75,5,5);
	}
	module House(){
	translate([-15,-10,30]) scale(.45,.45,.45)
	import("/Users/Leone/Documents/GitHub/3D_Fabrication/Print8:Final/Exported/MyHouseWithLawn.stl");
	}

	module GlobeCutOut(){
	cylinder(28,4,4);
	cylinder(15,100,100);
	}
