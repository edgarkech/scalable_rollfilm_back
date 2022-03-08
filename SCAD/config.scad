/*
This is the base configuration file for the scalable rollfilm back
# we are not using the exact ANSI measures, but slightly rounded measures


*/

// BOSL2 includes (https://github.com/revarbat/BOSL2/wiki)  
include <BOSL2/std.scad>
include <BOSL2/joiners.scad>

// include for a modified cube primitive (with rounded edges)
use <rounded_cube.scad>;


// general tolerance
vTolerance = 0.2;

// some generic variables
$fn = 60; // we are using 60 fragments for cylinders and similar objects

// target platform specific includes
// (currently only a reminder to put target platform specific variables into separate include files)
// # 4x5 with a "native" format of 6x12 (smaller formats via different backplates/masks)
// # 5x7 with a "native" format of 6x17 or 6x12
// # 8x10 with a "native" format of 6x24 or 6x17
// # custom (e.g. for dedicated 6x17 or 6x24 cameras)

// target formats / aspect ratios / framesizes
// # 6x6 / 1:1 / 56x56
// # 6x7 / 6x7 / 56x66
// # 6x8 / 3x4 / 56x74
// # 6x9 / 2:3 / 56x84
// # 6x12 / 1:2 / 56x112
// # 6x14 / 2:5 / 56x136
// # 6x17 / 1:3 / 56x168
// # 6x24 / 1:4 / 56x224

vCassetteLength = 170; // ANSI: 159.92 ... ?
vCassetteWidth = 120.5; // ANSI: 120.24 ... 121.03
vCassetteHeight = 8;
vCassetteBorderOffset = 76; // we will take the mid of the film frame as 0
vLightTrapSlotOffset = 139; // CAUTION: this offset is measured from the back, not from the center of the frame
vLightTrapSlotWidth = 2.2;
vGraflokWidth = 5;
vGraflokHeight = 6.2; // derived from the Graflok height
vFrameLength = 112;
vFrameWidth = 56;
vFilmPlaneDistance = 5;
vFilmThickness = 0.3; // we are calculating 0.1...0.15 for the film + about the same amount for the back paper + a little bit tolerance

vFilmrollDiameter = 26; 
vFilmrollLength = 66;

vDarkslideLength = vCassetteLength - 10;
vDarkslideWidth = 66; // the dark slide will be 64...65mm wide, but we need a enough room on the sides
vDarkslideHeight = 1; // we calculate with 1 but the real dark slide will be 0.5
vDarkslideSealLength = 10;
vDarkslideSealWidth = vDarkslideWidth;
vDarkslideSealHeight = 1;
vDarkslideGripCutout = 5;


vBackplateTopLength = vCassetteLength - 3; 
vBackplateTopWidth = 98; // we are starting with the measurement from the original version

vBackplateEdgeRadius = 1;


// we derive all other measures and variables from the above variables

// base plate bottom outer
// we want to have rounded edges, so we use the hull
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

vFilmbedCutout_l = vFrameLength + 16; // we add 8mm on each side to keep the film flat
vFilmbedCutout_w = vFrameWidth + 8; // backpaper is normally about 63mm, so we add 4mm on each side to our 56mm film frame
vFilmbedCutout_h = vTopplate_h; // we just take the full height
vFilmbedCutout_offsetX = -vFilmbedCutout_l/2;
vFilmbedCutout_offsetY = -vFilmbedCutout_w/2;
vFilmbedCutout_offsetZ = vFilmPlaneDistance - vFilmThickness;

vFilmInsertCutout_l = vFilmbedCutout_l + (2*vTolerance);
vFilmInsertCutout_w = 80 + 2*vTolerance;
vFilmInsertCutout_h = vTopplate_h;
vFilmInsertCutout_offsetX = -vFilmInsertCutout_l/2;
vFilmInsertCutout_offsetY = -vFilmInsertCutout_w/2;
vFilmInsertCutout_offsetZ = vFilmPlaneDistance;

vCoverCutout_l = vFilmbedCutout_l + 8 + (2*vTolerance);
vCoverCutout_w = 80 + 8 + (2*vTolerance);
vCoverCutout_h = vTopplate_h;
vCoverCutout_offsetX = -vCoverCutout_l/2;
vCoverCutout_offsetY = -vCoverCutout_w/2;
vCoverCutout_offsetZ = vFilmPlaneDistance;

vCoverLightSeal_l = vFilmbedCutout_l + 4 - (2*vTolerance);
vCoverLightSeal_w = 80 + 4 - (2*vTolerance);
vCoverLightSeal_h = 2 - vTolerance;
vCoverLightSeal_wall = 2 - (2*vTolerance);
vCoverLightSeal_offsetX = 0; // rect_tube centers by default, so we can leave the offset at 0
vCoverLightSeal_offsetY = 0; // rect_tube centers by default, so we can leave the offset at 0
vCoverLightSeal_offsetZ = vFilmPlaneDistance;

