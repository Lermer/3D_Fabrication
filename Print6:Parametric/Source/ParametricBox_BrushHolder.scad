//Leone Ermer
/*Parametic Box with Dividers and Lid
2013 3D Fabrication

Note: 
To remove Lid and Dividers make false
if fourSections = true the box is divided into 4 sections
if fourSections = false the box only has 3 sections

*/

//Box Controls
boxWidth = 70; // Y axis
boxLength = 70; // X axis
boxDepth = 150; 
boxThickness = 5;

// Box Divider Controls
dividerThickness = boxThickness;
yDivider = true; // Divider that runs along y axis
xDivider = true ; // Divider that runs along x axis
fourSections = true; // true = 4 sections / false = 3 sections
//Controls Dividers' Positions along respective axes
yDividerPos = (boxWidth/2)-(dividerThickness/2);
xDividerPos = (boxLength/2)-(dividerThickness/2); //Currently Centered
xDividerWidth = 0; //Currently Centered

// Lid Controls
lid = false; //True for a lid, False for no lid

//Adds Box
	box();
//Adds Dividers
	if(yDivider == true){
		yDivider();
	}
	if(xDivider == true){
		xDivider();
	}
// Adds Lid
	if(lid == true){
		translate([boxWidth + 10, 0, 0])
		lid();
	}

module box(){
	difference(){
		cube([boxWidth,boxLength,boxDepth]);
		translate([boxThickness,boxThickness,boxThickness])
		cube([boxWidth-(boxThickness *2),boxLength-(boxThickness *2),boxDepth-boxThickness]);
	}
}

module lid(){
		cube([boxWidth,boxLength,boxThickness]);
		translate([boxThickness,boxThickness,boxThickness])
		cube([boxWidth-(boxThickness *2),boxLength-(boxThickness *2),boxThickness]);
}

module yDivider(){
		translate([yDividerPos, 0, 0])
		cube([dividerThickness,boxLength,boxDepth-boxThickness]);
}
module xDivider(){
	translate([0, xDividerPos, 0])
	if(fourSections == true){
		cube([boxWidth,dividerThickness,boxDepth-boxThickness]);
	}
	else{
	cube([yDividerPos,dividerThickness,boxDepth-boxThickness]);
	}
}