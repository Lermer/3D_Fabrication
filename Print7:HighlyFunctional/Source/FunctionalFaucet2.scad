/*Leone Ermer
Faucet Drinking Fountain
2013 3D Fabrication

Notes:
	Make Faucet Attachment infill normal
	Make Fountain infill zero // support first 13 layers?

To Do List:
	Print
	Make Spout
	Figure out Sizing and Print Controls
	Plumbers Tape
	
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
		fountainWidth = 50;
		fountainSpoutDiameter1 = 10;
		fountainSpoutDiameter2 = 15;
		fountainSpoutLength = 20;
		fountainSpoutThickness = attachmentThickness;
			
//
//Secondary Controls
//
	//Connecter Ridge
		ridgeThickness = 2;
		ridgeHeight = 3;
	
	
	//Don't Touch
		faucetRadius = (faucetDiameter/2);
		faRadius = (faucetRadius + attachmentThickness);
		ridgeRadius = (faRadius + ridgeThickness);
		fountainRadius = (fountainWidth/2);
		fountainOval = (fountainHeight + ((fountainHeight)*.7));
		fountainCutoff1 = (((fountainHeight*.7)/3)*2);
		fountainCutoff2 = ((fountainHeight*.7)/3);
		fountainSpoutRadius1 = (fountainSpoutDiameter1/2);
		fountainSpoutRadius2 = (fountainSpoutDiameter2/2);
		
//	
//Build
//

if(faucetAttachment == true){
	faucetAttachment();
	connecterRidge();
}

if(fountain == true){
	translate([0,60,0])
	fountain();
	fountainSpout();
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
	translate([0,0,(fountainHeight-ridgeHeight)])
	connecterRidge();
	translate([0,0,-fountainCutoff2])
	difference(){
		translate([0,0,(fountainOval/2)]) resize([0,0,fountainOval]) 
		sphere(fountainRadius);
		fountainCutouts();
	}
}

module fountainCutouts(){
		translate([0,0,(fountainCutoff2)])
		cylinder(fountainHeight,ridgeRadius,ridgeRadius); //Inner Cylinder
		cylinder(fountainCutoff2,60,60); //Bottom Cutout
		translate([0,0,(fountainOval-fountainCutoff1)]) 
		cylinder(fountainCutoff1,60,60); //Top Cutout
}

module fountainSpout(){
	translate([0,0,0])
	rotate([0, 140, 0])
	difference(){
		cylinder(fountainSpoutLength,fountainSpoutRadius1,fountainSpoutRadius2);
		cylinder(fountainSpoutLength,(fountainSpoutRadius1-fountainSpoutThickness),(fountainSpoutRadius2-fountainSpoutThickness));
		}
}
