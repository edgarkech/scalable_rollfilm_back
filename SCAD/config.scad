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

vFilmPlaneDistance = 5; // ANSI: 5
vFilmThickness = 0.4; // we are calculating 0.12...0.18 for the film + about the same amount for the back paper + a little bit tolerance

vFilmrollDiameter = 26; // max film roll diameter (empirical)
vFilmrollLength = 66; // max film roll length (empirical)
vFilmSpoolClearance = 5; // the space we need for inserting the film spool (empirical)
vFilmSpoolAxisDiameter = 12;
vFilmSpoolAxisLightSealDiameter = 20;
vFilmSpoolAxisLightSealDepth = 2;
vFilmSpoolAxisExtension = 4; // should be at least equal to the lower walls of the cover 

vFilmRoller_d = 12; // while 16 or even more would require less film "bending", it would also require more precious space 

vCoverWallThickness = 2; // 2 should be sufficient for opacity and rigidity
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

vDarkSlideLength = vCassetteLength - 10;
vDarkSlideWidth = 65; // the dark slide will be 64...65mm wide, but we need a enough room on the sides
vDarkSlideHeight = 0.8; // we calculate with 0.8 - the slot for the dark slide will be 1.0 
vDarkSlideSealLength = 10;
vDarkSlideSealWidth = vDarkSlideWidth;
vDarkSlideSealHeight = 1;
vDarkSlideGripCutout = 5;


vBackplateTopLength = vCassetteLength - 3; // we need a stop at the back end of the backplate 
vBackplateTopWidth = 102; // we are starting with the measurement from the original version (98)

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

vDarkSlideCutout_l = vDarkSlideLength;
vDarkSlideCutout_w = vDarkSlideWidth + 1;
vDarkSlideCutout_h = vCassetteHeight;
vDarkSlideCutout_offsetX = -vCassetteBorderOffset+10;
vDarkSlideCutout_offsetY = -vDarkSlideCutout_w/2;
vDarkSlideCutout_offsetZ = 2; // maybe reduce to 1.8

vDarkSlideGripCutout_l = vDarkSlideGripCutout;
vDarkSlideGripCutout_w = vDarkSlideWidth + 1;
vDarkSlideGripCutout_h = vCassetteHeight;
vDarkSlideGripCutout_offsetX = vCassetteLength - vCassetteBorderOffset - vDarkSlideGripCutout;
vDarkSlideGripCutout_offsetY = -vDarkSlideGripCutout_w/2;
vDarkSlideGripCutout_offsetZ = 0;


// remove?
vDarkSlideSealCutout_l = vDarkSlideSealLength;
vDarkSlideSealCutout_w = vDarkSlideWidth;
vDarkSlideSealCutout_h = vCassetteHeight;
vDarkSlideSealCutout_offsetX = vCassetteLength - vCassetteBorderOffset - vDarkSlideGripCutout - vDarkSlideSealCutout_l - 5;
vDarkSlideSealCutout_offsetY = -vDarkSlideWidth/2;
vDarkSlideSealCutout_offsetZ = 1.2;

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
vFilmSpool_w = vFilmrollLength + 2; // we need about one mm clearance on the lever side, so we just add 2mm
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

vFilmSpoolAxisHole_d = vFilmSpoolAxisDiameter + 2*vTolerance;
vFilmSpoolAxisHole_h = vFilmInsert_w + vFilmSpoolAxisExtension;
vFilmSpoolAxisHole_offsetX = vFilmSpool_offsetX;
vFilmSpoolAxisHole_offsetY = -vFilmInsert_w/2;
vFilmSpoolAxisHole_offsetZ = vFilmSpool_offsetZ;

vFilmSpoolAxisLightSeal_d = vFilmSpoolAxisLightSealDiameter + 2*vTolerance;
vFilmSpoolAxisLightSeal_h = vFilmSpoolAxisLightSealDepth;
vFilmSpoolAxisLightSeal_offsetX = vFilmSpool_offsetX;
vFilmSpoolAxisLightSeal_offsetY = vFilmSpool_w/2;
vFilmSpoolAxisLightSeal_offsetZ = vFilmSpool_offsetZ;

vFilmSpoolAxisExtension_d = vFilmSpoolAxisLightSealDiameter;
vFilmSpoolAxisExtension_h = vFilmSpoolAxisExtension;
vFilmSpoolAxisExtension_offsetX = vFilmSpool_offsetX;
vFilmSpoolAxisExtension_offsetY = vFilmInsert_w/2;
vFilmSpoolAxisExtension_offsetZ = vFilmSpool_offsetZ;

vCounterWindow_d = 12;
vCounterWindow_h = vFilmInsertBaseplate_h;
vCounterWindowTubeOuter_d = 20;
vCounterWindowTubeInner_d = 16;
vCounterWindowTube_h = vFilmInsertUpperSideWall_h - vFilmInsertBaseplate_h;
vCounterWindowTube_offsetX = -13;
vCounterWindowTube_offsetY = -3;
vCounterWindowTube_offsetZ = vFilmPlaneDistance + vFilmInsertBaseplate_h;

vMidwall_l = 12;
vMidwall_w = vFilmInsert_w;
vMidwall_h = 12;
vMidwall_offsetX = -vMidwall_l/2;
vMidwall_offsetY = -vMidwall_w/2;
vMidwall_offsetZ = vFilmPlaneDistance + vFilmInsertBaseplate_h;

vUnrollPreventerHole_d = 2;
vUnrollPreventerHole_h = vMidwall_l;
vUnrollPreventerHole_offsetX = 0;
vUnrollPreventerHole_offsetY1 = -30;
vUnrollPreventerHole_offsetY2 = -25;
vUnrollPreventerHole_offsetY3 = 25;
vUnrollPreventerHole_offsetY4 = 30;
vUnrollPreventerHole_offsetZ = vFilmPlaneDistance + vFilmInsertBaseplate_h + vMidwall_h - 4;



// cover specific

vCoverLowerPart_l = vFilmInsertLowerSideWall_l + 4*vCoverWallThickness;
vCoverLowerPart_w = vFilmInsertBaseplate_w  + 4*vCoverWallThickness;
vCoverLowerPart_h = vFilmInsertLowerSideWall_h  + vCoverWallThickness ;
vCoverLowerPart_offsetX = -vCoverLowerPart_l/2;
vCoverLowerPart_offsetY = -vCoverLowerPart_w/2;
vCoverLowerPart_offsetZ = vFilmPlaneDistance;

vCoverUpperPart_l = vFilmInsertUpperSideWall_l  + 2*vCoverWallThickness;
vCoverUpperPart_w = vFilmInsertBaseplate_w  + 2*vCoverWallThickness;
vCoverUpperPart_h = vFilmInsertUpperSideWall_h  + vCoverWallThickness ;
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

vCoverClaw_l = 18;
vCoverClaw_w = vTopplate_w;
vCoverClaw_h = vTopplate_h;
vCoverClaw_offsetX1 = -(vFilmbedCutout_l-vCoverClaw_l)/2;
vCoverClaw_offsetX2 = (vFilmbedCutout_l-vCoverClaw_l)/2;
vCoverClaw_offsetY = vTopplate_offsetY;
vCoverClaw_offsetZ = vTopplate_offsetZ;

vCoverClawCutout_l = vCoverClaw_l + 2*vTolerance;
vCoverClawCutout_w = 10 + vTolerance;
vCoverClawCutout_h = 2*vTopplate_h;
vCoverClawCutout_offsetX1 = -vFilmbedCutout_l/2 - vTolerance;
vCoverClawCutout_offsetX2 = vFilmbedCutout_l/2 - vCoverClawCutout_l + vTolerance;
vCoverClawCutout_offsetY1 = (vFilmInsert_w + 4 - 2*vTolerance)/2;
vCoverClawCutout_offsetY2 = -(vFilmInsert_w + 4 - 2*vTolerance)/2 -vCoverClawCutout_w;
vCoverClawCutout_offsetZ = 0;

vCoverCounterWindow_d = vCounterWindowTubeInner_d;
vCoverCounterWindow_h = vCoverWallThickness;
vCoverCounterWindow_offsetZ1 = vFilmPlaneDistance + vCoverUpperPart_h - vCoverWallThickness;
vCoverCounterWindowTubeOuter_d = vCounterWindowTubeOuter_d + 4;
vCoverCounterWindowTubeInner_d = vCounterWindowTubeOuter_d + 2*vTolerance;
vCoverCounterWindowTube_h = 2;
vCoverCounterWindow_offsetX = vCounterWindowTube_offsetX;
vCoverCounterWindow_offsetY = vCounterWindowTube_offsetY;
vCoverCounterWindow_offsetZ2 = vFilmPlaneDistance + vCoverUpperPart_h - vCoverWallThickness - vCoverCounterWindowTube_h;



vFilmSpoolAxisExtensionCutout_d = vFilmSpoolAxisLightSealDiameter + 2*vTolerance;
vFilmSpoolAxisExtensionCutout_h = vFilmSpoolAxisExtension;
vFilmSpoolAxisExtensionCutout_offsetX = vFilmSpool_offsetX;
vFilmSpoolAxisExtensionCutout_offsetY = vFilmInsert_w/2;
vFilmSpoolAxisExtensionCutout_offsetZ = vFilmSpool_offsetZ;

vFilmSpoolAxisExtensionLowerCutout_l = vFilmSpoolAxisLightSealDiameter + 2*vTolerance;
vFilmSpoolAxisExtensionLowerCutout_w = vFilmSpoolAxisExtension;
vFilmSpoolAxisExtensionLowerCutout_h = vCoverLowerPart_h;
vFilmSpoolAxisExtensionLowerCutout_offsetX1 = - vFilmSpool_offsetX - vFilmSpoolAxisExtensionLowerCutout_l/2;
vFilmSpoolAxisExtensionLowerCutout_offsetX2 = vFilmSpool_offsetX - vFilmSpoolAxisExtensionLowerCutout_l/2;
vFilmSpoolAxisExtensionLowerCutout_offsetY = vFilmInsert_w/2;
vFilmSpoolAxisExtensionLowerCutout_offsetZ = vFilmPlaneDistance;

vFilmSpoolSpringCutout_d = vFilmSpoolAxisDiameter;
vFilmSpoolSpringCutout_h = -vFilmSpool_offsetX -10;
vFilmSpoolSpringCutout_offsetX = -vFilmSpool_offsetX;
vFilmSpoolSpringCutout_offsetY = -vFilmInsert_w/2 - vFilmSpoolAxisDiameter/4;
vFilmSpoolSpringCutout_offsetZ = vFilmSpool_offsetZ;

vFilmSpoolSpringHole_d = 2;
vFilmSpoolSpringHole_h = -vFilmSpool_offsetX*2;
vFilmSpoolSpringHole_offsetX = vFilmSpool_offsetX;
vFilmSpoolSpringHole_offsetY = -vFilmInsert_w/2 + 2;
vFilmSpoolSpringHole_offsetZ = vFilmSpool_offsetZ;

vFilmSpoolHolderBase_d1 = vFilmSpoolAxisDiameter;
vFilmSpoolHolderBase_d2 = vFilmSpoolAxisDiameter - 3;
vFilmSpoolHolderBase_h1 = 3;
vFilmSpoolHolderBase_h2 = (vFilmInsert_w - vFilmrollLength)/2 - vFilmSpoolHolderBase_h1;
vFilmSpoolHolderAxis_d1 = 5;
vFilmSpoolHolderAxis_d2 = 3;
vFilmSpoolHolderAxis_h1 = 3;
vFilmSpoolHolderAxis_h2 = 2;

// winders
vWinderLightSeal_d = vFilmSpoolAxisLightSealDiameter;
vWinderLightSeal_h = 2;
vWinderBase_d = vFilmSpoolAxisDiameter;
vWinderBase_h = (vFilmInsert_w - vFilmrollLength)/2 + vFilmSpoolAxisExtension + 2*vTolerance;
vWinderHex_d = 9.1; // should result in key width 8mm
vWinderHex_h = 12 + vTolerance;
vWinderLeverScrewhole_d = 2.5;
vWinderLeverScrewhole_h = vWinderHex_h;
vWinderCutout_l = 10;
vWinderCutout_w = 2 + vTolerance;
vWinderCutout_h = (vFilmInsert_w - vFilmrollLength)/2;

// winder blades
vWinderBlade_l = vWinderCutout_h + 5;
vWinderBlade_w = vWinderCutout_l - vTolerance;
vWinderBlade_h = 2;
vWinderBladeEdgeCutOff = 3;

// winder knob
vWinderKnob_d = vFilmSpoolAxisLightSealDiameter - 1;
vWinderKnob_h = vWinderHex_h;
vWinderHexCutout_d = vWinderHex_d + (2*vTolerance);
vWinderHexCutout_h = vWinderKnob_h;
vWinderKnobEdgeCutOff = 2;

// bottom light trap
vBottomLightTrap_l = 2;
vBottomLightTrap_h = 3;
vBottomLightTrap_w = vBaseplate_w;

// dark slide
vDarkSlide_l = vDarkSlideLength;
vDarkSlide_w = vDarkSlideWidth;
vDarkSlide_h = vDarkSlideHeight;
vDarkSlide_offsetX = -vCassetteBorderOffset+10;
vDarkSlide_offsetY = -vDarkSlide_w/2;
vDarkSlide_offsetZ = vDarkSlideCutout_offsetZ + vTolerance;

vDarkSlideGrip_l = 15;
vDarkSlideGrip_w = vDarkSlideWidth;
vDarkSlideGrip_h = 5;
vDarkSlideGrip_offsetX = vCassetteLength - vCassetteBorderOffset - vDarkSlideGripCutout + vTolerance;
vDarkSlideGrip_offsetY = -vDarkSlideGrip_w/2;
vDarkSlideGrip_offsetZ = vDarkSlide_offsetZ;

vDarkSlideIndent_d = 2;
vDarkSlideIndent_h = vDarkSlide_h;
vDarkSlideIndent_offsetX = -vFrameLength/2 - 10+38; //empirical
vDarkSlideIndent_offsetY = -vDarkSlide_w/2;
vDarkSlideIndent_offsetZ = vDarkSlideCutout_offsetZ + vTolerance;