color("lightblue") cube([19,14,40]);//Garage
color("Lightblue")translate([19,0,6]) cube([23,14,58 ]);//Den
color("Tan") translate([42,-6,12]) cube([41,11,13]);//Front Door Space
color("Tan") translate([3,-12,5]) cube([39,14,38]);//Second Floor Bedrooms
color("Lightblue")translate([19,-12,25]) cube([64,14,39]);//Second Floor Bedrooms Part 2
color("Lightblue") translate([42,0,16]) cube([41,14,48]);//Bottom Floor Part 2
color("Lightblue") translate([36,-18,25]) cube([47,6,23]);//The Tower
color("Lightblue") translate([-18,0,0]) cube([37,2,43]);//Upstairs Balcony 1
color("White") translate([19,0,33]) cube([64,2,39]);//Upstairs Balcony 2

//Celings
color("White") translate([35.5,-19,24.5]) cube([48,1,24.5]);//The Tower Celing
color("White") translate([2.5,-13,0]) cube([40,1,43.5]);//The Second Floor Roof 1
color("White") translate([18.5,-13,26]) cube([64.5,1,46.5]);//The Second Floor Roof 2
color("White") translate([42,-7,5.5]) cube([41.5,1,20]);//Front Door Roof

//Pillars
color("White") translate([-18,0,0]) cube([1,14,1]);//Drive Port Pillar 1
color("White") translate([-18,0,2]) cube([1,14,1]);//Drive Port Pillar 2
color("White") translate([-18,0,4]) cube([1,14,1]);//Drive Port Pillar 3
color("White") translate([-18,0,38]) cube([1,14,1]);//Drive Port Pillar 11
color("White") translate([-18,0,40]) cube([1,14,1]);//Drive Port Pillar 12
color("White") translate([-18,0,42]) cube([1,14,1]);//Drive Port Pillar 13
color("White") translate([42,-7,5.5]) cube([1,14,1]);//Front Door Pillar 1
color("White") translate([55,-7,5.5]) cube([1,14,1]);//Front Door Pillar 2
color("White") translate([82,-7,5.5]) cube([1,14,1]);//Front Door Pillar 3
color("white") translate([19,-13,71]) cube([1,14,1]);//Balcony Pillar 1
color("white") translate([82,-13,71]) cube([1,14,1]);//Balcony Pillar 2
color("white") translate([40,-13,71]) cube([1,14,1]);//Balcony Pillar 3
color("white") translate([61,-13,71]) cube([1,14,1]);//Balcony Pillar 4
color("white") translate([19,0,71]) cube([1,14,1]);//Downstairs Pillar 1
color("white") translate([82,0,71]) cube([1,14,1]);//Downstairs Pillar 2
color("white") translate([40,0,71]) cube([1,14,1]);//Downstairs Pillar 3
color("white") translate([61,-0,71]) cube([1,14,1]);//Downstairs Pillar 4

Balcony1();
Balcony2();






module Balcony1(){
	difference(){
		color("LightBlue") translate([-18,-3,0]) cube([37,5,43]);//Upstairs Balcony 1
		color("White") translate([-17,-3,1]) cube([35,5,41]);//Upstairs Balcony 1
	}
}
module Balcony2(){
	difference(){
		color("White") translate([19,-3,33]) cube([64,5,39]);//Upstairs Balcony 2
		color("LightBlue") translate([20,-3,34]) cube([62,5,37]);//Upstairs Balcony 2
	}
}