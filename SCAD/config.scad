/*
This is the base configuration file for the scalable rollfilm back
# we are not using the exact ANSI measures, but slightly rounded measures
*/

/*
// target platforms
// (currently only a reminder to put target platform specific variables into separate include files)
// # 4x5 with a "native" format of 6x12 (smaller formats via different backplates/masks)
// # 5x7 with a "native" format of 6x17 or 6x12
// # 8x10 with a "native" format of 6x24 or 6x17
// # custom (e.g. for dedicated 6x17 or 6x24 cameras)

// target formats / aspect ratios / framesizes
// # 6x6 / 1:1 / 56x56 / 12 frames
// # 6x7 / 6x7 / 56x65 / 10 frames 
// # 6x8 / 3x4 / 56x75 / 9 frames
// # 6x9 / 2:3 / 56x84 / 8 frames
// # 6x10 / 9:16 / 56x100 / 7 frames
// # 6x12 / 1:2 / 56x112 / 6 frames
// # 6x13 / 9:21 / 56x131
// # 6x14 / 2:5 / 56x136 / 5 frames
// # 6x17 / 1:3 / 56x168 / 4 frames
// # 6x24 / 1:4 / 56x224 / 3 frames
*/

/*
#############################################################################################
# with the following variables we control the frame format and the targeted "platform"      #
# (currently setup for a 6x12 back for 4x5" cameras)                                        #
#############################################################################################
*/

vCassetteLength = 170; // ANSI: 159.92 ... ?
vCassetteWidth = 120.5; // ANSI: 120.24 ... 121.03
vCassetteHeight = 8; // this is not ANSI, but just an assumption for the thickness of our backplate
vCassetteBorderOffset = 76; // we will take the mid of the film frame as 0 for the x axis
vLightTrapSlotOffset = 139; // CAUTION: this offset is measured from the back, not from the center of the frame
vLightTrapSlotWidth = 2.2; // ANSI uses a trapezoid for the light seal. we are just using a cube with about 2mm width
vGraflokWidth = 5; // measurement from a Horseman 6x9 roll film back for 4x5"
vGraflokHeight = 6; // measurement from a Horseman 6x9 roll film back for 4x5"

/*
############################################################################################ 
## adjust the format here according to the mentioned sizes above! 
*/
vFrameLength = 112;
vFrameWidth = 56;
/*
############################################################################################
*/

vFilmPlaneDistance = 5; // ANSI
vFilmThickness = 0.3; // we are calculating 0.1...0.15 for the film + about the same amount for the back paper + a little bit tolerance

vFilmrollDiameter = 26; // max film roll diameter
vFilmrollLength = 66; // max film roll length

vFilmRoller_d = 12;

vCoverWallThickness = 2;
vCoverCutoutTolerance = 0.2;

/*
#############################################################################################
# PLEASE DO NOT CHANGE ANYTHING BELOW THIS POINT UNLESS YOU REALLY KNOW WHAT YOU ARE DOING! #
#############################################################################################
*/

// general tolerance
vTolerance = 0.2;

// some generic variables
$fn = 90; // we are using 90 fragments for cylinders and similar objects

vFilmInsert_w = 86; // we have to add at least 7mm to each side of the film roll, initially we used a total of 80

vDarkslideLength = vCassetteLength - 10;
vDarkslideWidth = 66; // the dark slide will be 64...65mm wide, but we need a enough room on the sides
vDarkslideHeight = 1; // we calculate with 1 but the real dark slide will be 0.5
vDarkslideSealLength = 10;
vDarkslideSealWidth = vDarkslideWidth;
vDarkslideSealHeight = 1;
vDarkslideGripCutout = 5;


vBackplateTopLength = vCassetteLength - 3; // we need a stop at the back end of the backplate 
vBackplateTopWidth = 104; // we are starting with the measurement from the original version (98)

vBackplateEdgeRadius = 1;


// we derive most measures and variables from the above variables

// base plate bottom outer
vBaseplate_l = vCassetteLength;
vBaseplate_w = vCassetteWidth;
vBaseplate_h = vCassetteHeight;
vBaseplate_offsetX = -vCassetteBorderOffset;
vBaseplate_offsetY = -vCassetteWidth/2;
vBaseplate_offsetZ = 0;

vFilmframe_l = vFrameLength;
vFilmframe_w = vFrameWidth;
vFilmframe_h = vCassetteHeight;
vFilmframe_offsetX = -vFilmframe_l/2;
vFilmframe_offsetY = -vFilmframe_w/2;
vFilmframe_offsetZ = 0;

vTopplateCutout_l = vBackplateTopLength + vTolerance;
vTopplateCutout_w = vBackplateTopWidth + vTolerance;
vTopplateCutout_h = vCassetteHeight-3;
vTopplateCutout_offsetX = vCassetteLength - vCassetteBorderOffset - (vTopplateCutout_l/2);
vTopplateCutout_offsetY = 0;
vTopplateCutout_offsetZ = vCassetteHeight;

vDarkslideCutout_l = vDarkslideLength;
vDarkslideCutout_w = vDarkslideWidth;
vDarkslideCutout_h = vCassetteHeight;
vDarkslideCutout_offsetX = -vCassetteBorderOffset+10;
vDarkslideCutout_offsetY = -vDarkslideCutout_w/2;
vDarkslideCutout_offsetZ = 2;

vDarkslideGripCutout_l = vDarkslideGripCutout;
vDarkslideGripCutout_w = vDarkslideWidth;
vDarkslideGripCutout_h = vCassetteHeight;
vDarkslideGripCutout_offsetX = vCassetteLength - vCassetteBorderOffset - vDarkslideGripCutout;
vDarkslideGripCutout_offsetY = -vDarkslideWidth/2;
vDarkslideGripCutout_offsetZ = 0;

vDarkslideSealCutout_l = vDarkslideSealLength;
vDarkslideSealCutout_w = vDarkslideWidth;
vDarkslideSealCutout_h = vCassetteHeight;
vDarkslideSealCutout_offsetX = vCassetteLength - vCassetteBorderOffset - vDarkslideGripCutout - vDarkslideSealCutout_l - 5;
vDarkslideSealCutout_offsetY = -vDarkslideWidth/2;
vDarkslideSealCutout_offsetZ = 1.2;

vBottomLightTrapSlot_l = vLightTrapSlotWidth;
vBottomLightTrapSlot_w = vBaseplate_w;
vBottomLightTrapSlot_h = 1;
vBottomLightTrapSlot_offsetX = vLightTrapSlotOffset - vCassetteBorderOffset;
vBottomLightTrapSlot_offsetY = -vBottomLightTrapSlot_w/2;
vBottomLightTrapSlot_offsetZ = 0;

vGraflokCutout_l = vBaseplate_l;
vGraflokCutout_w = vGraflokWidth;
vGraflokCutout_h = vCassetteHeight;
vGraflokCutout_offsetX = vBaseplate_offsetX;
vGraflokCutout_offsetY1 = -vCassetteWidth/2;
vGraflokCutout_offsetY2 = vCassetteWidth/2 - vGraflokCutout_w;
vGraflokCutout_offsetZ = vGraflokHeight;



vTopplate_l = vBackplateTopLength;
vTopplate_w = vBackplateTopWidth - vTolerance;
vTopplate_h = vCassetteHeight-3;
vTopplate_offsetX = vCassetteLength - vCassetteBorderOffset - (vTopplate_l/2);
vTopplate_offsetY = 0;
vTopplate_offsetZ = vCassetteHeight;

vFilmbedCutout_l = vFrameLength + 4 + vFilmRoller_d + 2 ; // we add 8mm on each side to keep the film flat
vFilmbedCutout_w = vFrameWidth + 8; // backpaper is normally about 63mm, so we add 4mm on each side to our 56mm film frame
vFilmbedCutout_h = vTopplate_h; // we just take the full height
vFilmbedCutout_offsetX = -vFilmbedCutout_l/2;
vFilmbedCutout_offsetY = -vFilmbedCutout_w/2;
vFilmbedCutout_offsetZ = vFilmPlaneDistance - vFilmThickness;

vFilmInsertCutout_l = vFilmbedCutout_l + (2*vTolerance);
vFilmInsertCutout_w = vFilmInsert_w + 2*vTolerance;
vFilmInsertCutout_h = vTopplate_h;
vFilmInsertCutout_offsetX = -vFilmInsertCutout_l/2;
vFilmInsertCutout_offsetY = -vFilmInsertCutout_w/2;
vFilmInsertCutout_offsetZ = vFilmPlaneDistance;

vCoverCutout_l = vFilmbedCutout_l + 8 + (2*vTolerance);
vCoverCutout_w = vFilmInsert_w + 8 + (2*vTolerance);
vCoverCutout_h = vTopplate_h;
vCoverCutout_offsetX = -vCoverCutout_l/2;
vCoverCutout_offsetY = -vCoverCutout_w/2;
vCoverCutout_offsetZ = vFilmPlaneDistance;

vCoverLightSeal_l = vFilmbedCutout_l + 4 - (2*vTolerance);
vCoverLightSeal_w = vFilmInsert_w + 4 - (2*vTolerance);
vCoverLightSeal_h = 2 - vTolerance;
vCoverLightSeal_wall = 2 - (2*vTolerance);
vCoverLightSeal_offsetX = 0; // rect_tube centers by default, so we can leave the offset at 0
vCoverLightSeal_offsetY = 0; // rect_tube centers by default, so we can leave the offset at 0
vCoverLightSeal_offsetZ = vFilmPlaneDistance;

// film insert

vFilmInsertBaseplate_l = vFrameLength + 4;
vFilmInsertBaseplate_w = vFilmInsert_w;
vFilmInsertBaseplate_h = 3;
vFilmInsertBaseplate_offsetX = -vFilmInsertBaseplate_l/2;
vFilmInsertBaseplate_offsetY = -vFilmInsertBaseplate_w/2;
vFilmInsertBaseplate_offsetZ = vFilmPlaneDistance;


vFilmRoller_w = vFilmInsertBaseplate_w;
vFilmRoller_offsetX = vFilmInsertBaseplate_offsetX;
vFilmRoller_offsetY = vFilmInsertBaseplate_offsetY;
vFilmRoller_offsetZ = vFilmPlaneDistance + vFilmRoller_d/2;

vFilmInsertLowerSideWall_l = vFilmInsertBaseplate_l + vFilmRoller_d + 2;
vFilmInsertLowerSideWall_w = (vFilmInsert_w - vFilmrollLength)/2;
vFilmInsertLowerSideWall_h = vFilmRoller_d;
vFilmInsertLowerSideWall_offsetX = -vFilmInsertLowerSideWall_l/2;
vFilmInsertLowerSideWall_offsetY1 = -vFilmInsertBaseplate_w/2;
vFilmInsertLowerSideWall_offsetY2 = vFilmInsertBaseplate_w/2 - vFilmInsertLowerSideWall_w;
vFilmInsertLowerSideWall_offsetZ = vFilmPlaneDistance;

vFilmSpool_d = vFilmrollDiameter;
vFilmSpool_w = vFilmrollLength;
vFilmSpool_offsetX = -(vFrameLength/2)+vFilmRoller_d/2+vFilmSpool_d/2;
vFilmSpool_offsetY = -vFilmSpool_w/2;
vFilmSpool_offsetZ = vFilmPlaneDistance + 1 + vFilmSpool_d/2;

vFilmInsertUpperSideWall_l = vFilmInsertLowerSideWall_l - 2*(vFilmSpool_d + 2 - vFilmRoller_d);
vFilmInsertUpperSideWall_w = vFilmInsertLowerSideWall_w;
vFilmInsertUpperSideWall_h = vFilmSpool_d + 2;
vFilmInsertUpperSideWall_offsetX = -vFilmInsertUpperSideWall_l/2;
vFilmInsertUpperSideWall_offsetY1 = -vFilmInsertBaseplate_w/2;
vFilmInsertUpperSideWall_offsetY2 = vFilmInsertBaseplate_w/2 - vFilmInsertUpperSideWall_w;
vFilmInsertUpperSideWall_offsetZ = vFilmPlaneDistance;

// cover specific

vCoverLowerPart_l = vFilmInsertLowerSideWall_l + 2*vCoverCutoutTolerance + 4*vCoverWallThickness;
vCoverLowerPart_w = vFilmInsertBaseplate_w + 2*vCoverCutoutTolerance + 4*vCoverWallThickness;
vCoverLowerPart_h = vFilmInsertLowerSideWall_h + vCoverCutoutTolerance + vCoverWallThickness ;
vCoverLowerPart_offsetX = -vCoverLowerPart_l/2;
vCoverLowerPart_offsetY = -vCoverLowerPart_w/2;
vCoverLowerPart_offsetZ = vFilmPlaneDistance;

vCoverUpperPart_l = vFilmInsertUpperSideWall_l + 2*vCoverCutoutTolerance + 2*vCoverWallThickness;
vCoverUpperPart_w = vFilmInsertBaseplate_w + 2*vCoverCutoutTolerance + 2*vCoverWallThickness;
vCoverUpperPart_h = vFilmInsertUpperSideWall_h + vCoverCutoutTolerance + vCoverWallThickness ;
vCoverUpperPart_offsetX = -vCoverUpperPart_l/2;
vCoverUpperPart_offsetY = -vCoverUpperPart_w/2;
vCoverUpperPart_offsetZ = vFilmPlaneDistance;

vCoverCutoutLowerPart_l = vFilmInsertLowerSideWall_l + 2*vCoverCutoutTolerance;
vCoverCutoutLowerPart_w = vFilmInsertBaseplate_w + 2*vCoverCutoutTolerance;
vCoverCutoutLowerPart_h = vFilmInsertLowerSideWall_h + vCoverCutoutTolerance;
vCoverCutoutLowerPart_offsetX = -vCoverCutoutLowerPart_l/2;
vCoverCutoutLowerPart_offsetY = -vCoverCutoutLowerPart_w/2;
vCoverCutoutLowerPart_offsetZ = vFilmPlaneDistance;

vCoverCutoutUpperPart_l = vFilmInsertUpperSideWall_l + 2*vCoverCutoutTolerance;
vCoverCutoutUpperPart_w = vFilmInsertBaseplate_w + 2*vCoverCutoutTolerance;
vCoverCutoutUpperPart_h = vFilmInsertUpperSideWall_h + vCoverCutoutTolerance;
vCoverCutoutUpperPart_offsetX = -vCoverCutoutUpperPart_l/2;
vCoverCutoutUpperPart_offsetY = -vCoverCutoutUpperPart_w/2;
vCoverCutoutUpperPart_offsetZ = vFilmPlaneDistance;

vCoverLightSealCutout_l = vFilmbedCutout_l + 4;
vCoverLightSealCutout_w = vFilmInsert_w + 4;
vCoverLightSealCutout_h = 2;
vCoverLightSealCutout_offsetX = -vCoverLightSealCutout_l/2;
vCoverLightSealCutout_offsetY = -vCoverLightSealCutout_w/2;
vCoverLightSealCutout_offsetZ = vFilmPlaneDistance;