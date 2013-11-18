/*Leone Ermer
Faucet Drinking Fountain
2013 3D Fabrication

Notes:
	Make Faucet Attachment infill normal
	Make Fountain infill zero

To Do List:
	Print
	Make Spout
	Figure out Sizing and Print Controls
*/

//
//Basic Controls
//
	//Display Parts
		faucetAttachment = true;
		fountain = true;

	//Faucet Attachment (Thermochromic PLA)
		faucetDiameter = 25; //Diameter of inner circle
		attachmentHeight = 23;
		attachmentThickness = 2;
		
	//Fountain (Soft PLA)
		fountainHeight = 30;
		fountainWidth = 45;
			
//
//Secondary Controls
//
	//Connecter Ridge
		ridgeThickness = 2;
		ridgeHeight = 3;
	
	
	//Don't Touch
		faucetRadius = (faucetDiameter/2);
		faRadius = (faucetRadius + attachmentThickness);
		ridgeRadius = (faRadius+ ridgeThickness);
		fountainRadius = (fountainWidth/2);
		fountainOval = (fountainHeight + ((fountainHeight)*.7));
		fountainCutoffs = ((fountainHeight*.7)/2);
		
//	
//Build
//

if(faucetAttachment == true){
	faucetAttachment();
	connecterRidge();
}

if(fountain == true){
	translate([0,0,(fountainHeight+fountainCutoffs-ridgeHeight)])
	connecterRidge();
	fountain();
}

//
// Modules
//

module faucetAttachment(){
	difference(){
		cylinder(attachmentHeight,faRadius,faRadius);
		cylinder(attachmentHeight,faucetRadius,faucetRadius);
	}
}

module connecterRidge(){
	difference(){
		cylinder(ridgeHeight,ridgeRadius,ridgeRadius);
		cylinder(ridgeHeight,faucetRadius,faucetRadius);
	}
}

module fountain(){
	difference(){
		translate([0,0,(fountainOval/2)]) resize([0,0,fountainOval]) 
		sphere(fountainRadius);
		fountainCutouts();
	}
}

module fountainCutouts(){
		translate([0,0,(fountainCutoffs)])
		cylinder(fountainHeight,ridgeRadius,ridgeRadius); //Inner Cylinder
		cylinder(fountainCutoffs,60,60); //Bottom Cutout
		translate([0,0,(fountainOval-fountainCutoffs)]) 
		cylinder(fountainCutoffs,60,60); //Top Cutout
}
