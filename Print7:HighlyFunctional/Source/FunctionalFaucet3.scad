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
		faucetAttachment = false ;
		fountain = true;

	//Faucet Attachment (Thermochromic PLA)
		faucetDiameter = 24; //Diameter of inner circle
		attachmentHeight = 23;
		attachmentThickness = 2;
		
	//Fountain (Soft PLA)
		fountainHeight = 30;
		fountainWidth = 45;
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
		fountainCutoffs = ((fountainHeight*.7)/2);
		
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
	rotate([0, 180, 0])
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
	translate([0,0,(fountainHeight+fountainCutoffs-ridgeHeight)])
	difference(){
		fountainBody();
		fountainCutouts();
	}
}

module fountainCutouts(){
		translate([0,0,(fountainCutoffs-8)])
		cylinder(fountainHeight+8,faRadius+1,faRadius+1); //Inner Cylinder
		cylinder(fountainCutoffs-8,60,60); //Bottom Cutout
		translate([0,0,(fountainOval-fountainCutoffs)]) 
		cylinder(fountainCutoffs,60,60); //Top Cutout
		translate([-25,0,32])
		rotate([0, 140, 0])
		cylinder(fountainSpoutLength,(fountainSpoutRadius1-fountainSpoutThickness),(fountainSpoutRadius2-fountainSpoutThickness));
}

module fountainSpout(){
	translate([-25,0,32])
	rotate([0, 140, 0])
	cylinder(fountainSpoutLength,fountainSpoutRadius1,fountainSpoutRadius2);		
}

module fountainBody(){
fountainSpout();
translate([0,0,(fountainOval/2)]) resize([0,0,fountainOval]) 
sphere(fountainRadius);

}
