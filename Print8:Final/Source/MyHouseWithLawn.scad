rotate([-90,0,0])
import("/Users/Leone/Documents/GitHub/3D_Fabrication/Print8:Final/Source/MyHouse.stl");
difference(){
	translate([58,10,-18]) resize([90,90,25])
	sphere(20);
	translate([-20,-40,-59]) cube([130,100,45]);
}
