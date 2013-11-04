difference() {
//translate([ -149, -40, -315 ])
//import("/Users/Leone/Documents/3D Printing/Leone For/Leone.stl");

for ( i = [0 : 5] ){
    rotate( i * 60, [0, 1, 0])
	translate([ -149, -40, -315 ])
    import("/Users/Leone/Documents/3D Printing/Leone For/Leone.stl");
}
}