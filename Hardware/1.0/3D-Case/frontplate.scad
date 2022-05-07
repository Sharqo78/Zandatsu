$fn=20;
szMechanicalSwitch = 14; //Side size

module switchSlot(arrPos, angle=0){
 szMechanicalSwitch = 14.2;
 tabWidth = szMechanicalSwitch+2.4;
 tabHeight = 3.5;
 
 for(pos = arrPos){
 translate(pos)
  rotate([90, 0, angle]){
   cube(szMechanicalSwitch, center=true);
   translate([0, 0, -4.05])
     cube([tabWidth, tabWidth, tabHeight], center=true);
   translate([0, 0, 4.05])
     cube([tabWidth, tabWidth, tabHeight], center=true);
  }
 }
}

module screwSlot(arrPos, diameter=3, wallthickness=2, height=3){
 for(pos = arrPos){
  translate(pos){
   difference(){
    cylinder(h=height, d=diameter+wallthickness, center=true);
    cylinder(h=height+1, d=diameter, center=true);
   }
  }
 } 
}

arrScrewPos = [
 [120, 4, -1.5],
 [120,86, -1.5],
 [206, 4, -1.5],
 [206,86, -1.5],
 [  4, 4, -1.5],
 [  4,86, -1.5]
];


arrWasdPos = [
 [47, 60, 0],
 [21, 48, 0],
 [40, 41, 0],
 [59, 34, 0]
];

posPico = [101, 64, 0];
szPico = [21, 51, 0];

arrBtnPos = [
 [127.4, 33.8, 0],
 [127.4, 53.8, 0],
 [147.4, 58.8, 0],
 [147.4, 38.8, 0],
 [167.4, 61.3, 0],
 [167.4, 41.3, 0],
 [187.4, 58.8, 0],
 [187.4, 38.8, 0],
];

arrSecBtnPos = [
 [15.6, 81.7, 0],
 [28.2, 81.5, 0],
 [40.6, 81.4, 0]
];

szSecondaryButtons = 10; //Diameter
angleWasd = -20;

roundedCornerDiam = 10;
arrCompRd = [roundedCornerDiam/2, roundedCornerDiam/2];

arrSzPlate = [210-roundedCornerDiam, 90-roundedCornerDiam, 1.5];

difference(){
 union(){

  translate([roundedCornerDiam/2, roundedCornerDiam/2, 0])
 minkowski(){
  cylinder(d=roundedCornerDiam, h=0.0001, center=false);
  cube(arrSzPlate);
 }
 
}
 
 switchSlot(arrWasdPos, -20);
 switchSlot(arrBtnPos);

 for(secBtnPos = arrSecBtnPos){
   translate(secBtnPos)
    cylinder(d=szSecondaryButtons, h=4 , center=true);
 }
 
  translate([15.5, 76.71, -1])
   rotate([0, 0, -0.6])
   cube([41-16, szSecondaryButtons, 6], center=false);
}

//screwSlot(arrScrewPos, 2.5, 3.5);
