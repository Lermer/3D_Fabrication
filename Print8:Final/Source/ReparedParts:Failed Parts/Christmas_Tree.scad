// Hollow Multicolored Christmas Tree Test

Tree = false;
TreeBase = true;
Ball1 = false;
Ball2 = false;


if(Tree == true){
	Tree();	
}

if(TreeBase == true){
	TreeBase();
}

if(Ball1 == true){
	Ball1();
}
if(Ball2 == true){
	Ball2();
}

module Tree(){
	translate([0,0,(4)])
	difference(){
		cylinder(30,20,5);
		cylinder(25,17,2);
	}
}

module TreeBase(){
		cylinder(4,20,20);	
}

module Ball1(){
	translate([0,0,(5+5)])
	sphere(r = 5);
	translate([0,60,0])
	cube( 5); 
} 

module Ball2(){
	translate([0,0,(0)])
	sphere(r = 20);

} 
