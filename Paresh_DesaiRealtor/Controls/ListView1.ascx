﻿<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="ListView1.ascx.cs" Inherits="Property.Controls.ListView1" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Bootstrap -->
<link href="css/bootstrap.css" rel="stylesheet">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<link href="css/font.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="css/media-queries.css" rel="stylesheet">
<link href="css/ihover.css" rel="stylesheet">
<link href="css/ihover.min.css" rel="stylesheet">
<link href="css/ihover.min.css" rel="stylesheet">
<link href="css/font-awesome.css" rel="stylesheet">


<script src="js/jquery-1.11.1.min.js"></script>
  <script type="text/javascript" src="js/jquery-1.9.1.min.js"></script>
    <!-- use jssor.slider.mini.js (40KB) instead for release -->
    <!-- jssor.slider.mini.js = (jssor.js + jssor.slider.js) -->
    <script type="text/javascript" src="js/jssor.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script>
    <script>
        jQuery(document).ready(function ($) {
            //Reference http://www.jssor.com/development/slider-with-slideshow-jquery.html
            //Reference http://www.jssor.com/development/tool-slideshow-transition-viewer.html

            var _SlideshowTransitions = [
                //Rotate Overlap
                { $Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: { $Zoom: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 0.5 }, $Brother: { $Duration: 1200, $Zoom: 1, $Rotate: 1, $Easing: $JssorEasing$.$EaseSwing, $Opacity: 2, $Round: { $Rotate: 0.5 }, $Shift: 90 } },
                //Switch
                { $Duration: 1400, x: 0.25, $Zoom: 1.5, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Zoom: $JssorEasing$.$EaseInSine }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1400, x: -0.25, $Zoom: 1.5, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Zoom: $JssorEasing$.$EaseInSine }, $Opacity: 2, $ZIndex: -10 } },
                //Rotate Relay
                { $Duration: 1200, $Zoom: 11, $Rotate: 1, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 1 }, $ZIndex: -10, $Brother: { $Duration: 1200, $Zoom: 11, $Rotate: -1, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Round: { $Rotate: 1 }, $ZIndex: -10, $Shift: 600 } },
                //Doors
                { $Duration: 1500, x: 0.5, $Cols: 2, $ChessMode: { $Column: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutCubic }, $Opacity: 2, $Brother: { $Duration: 1500, $Opacity: 2 } },
                //Rotate in+ out-
                { $Duration: 1500, x: -0.3, y: 0.5, $Zoom: 1, $Rotate: 0.1, $During: { $Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4], $Zoom: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, $Zoom: 11, $Rotate: -0.5, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Shift: 200 } },
                //Fly Twins
                { $Duration: 1500, x: 0.3, $During: { $Left: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Outside: true, $Brother: { $Duration: 1000, x: -0.3, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
                //Rotate in- out+
                { $Duration: 1500, $Zoom: 11, $Rotate: 0.5, $During: { $Left: [0.4, 0.6], $Top: [0.4, 0.6], $Rotate: [0.4, 0.6], $Zoom: [0.4, 0.6] }, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, $Zoom: 1, $Rotate: -0.5, $Easing: { $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Shift: 200 } },
                //Rotate Axis up overlap
                { $Duration: 1200, x: 0.25, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1200, x: -0.1, y: -0.7, $Rotate: 0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2 } },
                //Chess Replace TB
                { $Duration: 1600, x: 1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1600, x: -1, $Rows: 2, $ChessMode: { $Row: 3 }, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
                //Chess Replace LR
                { $Duration: 1600, y: -1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1600, y: 1, $Cols: 2, $ChessMode: { $Column: 12 }, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
                //Shift TB
                { $Duration: 1200, y: 1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
                //Shift LR
                { $Duration: 1200, x: 1, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Brother: { $Duration: 1200, x: -1, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 } },
                //Return TB
                { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1200, y: -1, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Shift: -100 } },
                //Return LR
                { $Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: { $Left: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Brother: { $Duration: 1200, x: 1, $Delay: 40, $Cols: 6, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Easing: { $Top: $JssorEasing$.$EaseInOutQuart, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2, $ZIndex: -10, $Shift: -100 } },
                //Rotate Axis down
                { $Duration: 1500, x: -0.1, y: -0.7, $Rotate: 0.1, $During: { $Left: [0.6, 0.4], $Top: [0.6, 0.4], $Rotate: [0.6, 0.4] }, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2, $Brother: { $Duration: 1000, x: 0.2, y: 0.5, $Rotate: -0.1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Top: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInQuad }, $Opacity: 2 } },
                //Extrude Replace
                { $Duration: 1600, x: -0.2, $Delay: 40, $Cols: 12, $During: { $Left: [0.4, 0.6] }, $SlideOut: true, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 260, $Easing: { $Left: $JssorEasing$.$EaseInOutExpo, $Opacity: $JssorEasing$.$EaseInOutQuad }, $Opacity: 2, $Outside: true, $Round: { $Top: 0.5 }, $Brother: { $Duration: 1000, x: 0.2, $Delay: 40, $Cols: 12, $Formation: $JssorSlideshowFormations$.$FormationStraight, $Assembly: 1028, $Easing: { $Left: $JssorEasing$.$EaseInOutExpo, $Opacity: $JssorEasing$.$EaseInOutQuad }, $Opacity: 2, $Round: { $Top: 0.5 } } }
            ];

            var _CaptionTransitions = [
            //CLIP|LR
            { $Duration: 900, $Clip: 3, $Easing: $JssorEasing$.$EaseInOutCubic },
            //CLIP|TB
            { $Duration: 900, $Clip: 12, $Easing: $JssorEasing$.$EaseInOutCubic },

            //DDGDANCE|LB
            { $Duration: 1800, x: 0.3, y: -0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5 } },
            //DDGDANCE|RB
            { $Duration: 1800, x: -0.3, y: -0.3, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseInJump, $Top: $JssorEasing$.$EaseInJump, $Zoom: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $During: { $Left: [0, 0.8], $Top: [0, 0.8] }, $Round: { $Left: 0.8, $Top: 2.5 } },

            //TORTUOUS|HL
            { $Duration: 1500, x: 0.2, $Zoom: 1, $Easing: { $Left: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $Opacity: 2, $During: { $Left: [0, 0.7] }, $Round: { $Left: 1.3 } },
            //TORTUOUS|VB
            { $Duration: 1500, y: -0.2, $Zoom: 1, $Easing: { $Top: $JssorEasing$.$EaseOutWave, $Zoom: $JssorEasing$.$EaseOutCubic }, $Opacity: 2, $During: { $Top: [0, 0.7] }, $Round: { $Top: 1.3 } },

            //ZMF|10
            { $Duration: 600, $Zoom: 11, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear }, $Opacity: 2 },

            //ZML|R
            { $Duration: 600, x: -0.6, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },
            //ZML|B
            { $Duration: 600, y: -0.6, $Zoom: 11, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },

            //ZMS|B
            { $Duration: 700, y: -0.6, $Zoom: 1, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2 },

            //ZM*JDN|LB
            { $Duration: 1200, x: 0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
            //ZM*JUP|LB
            { $Duration: 1200, x: 0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
            //ZM*JUP|RB
            { $Duration: 1200, x: -0.8, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },

            //ZM*WVR|LT
            { $Duration: 1200, x: 0.5, y: 0.3, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
            //ZM*WVR|RT
            { $Duration: 1200, x: -0.5, y: 0.3, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInWave }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
            //ZM*WVR|TL
            { $Duration: 1200, x: 0.3, y: 0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
            //ZM*WVR|BL
            { $Duration: 1200, x: 0.3, y: -0.5, $Zoom: 11, $Easing: { $Left: $JssorEasing$.$EaseInWave, $Top: $JssorEasing$.$EaseLinear }, $Opacity: 2, $Round: { $Rotate: 0.8 } },

            //RTT|10
            { $Duration: 700, $Zoom: 11, $Rotate: 1, $Easing: { $Zoom: $JssorEasing$.$EaseInExpo, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInExpo }, $Opacity: 2, $Round: { $Rotate: 0.8 } },

            //RTTL|R
            { $Duration: 700, x: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8 } },
            //RTTL|B
            { $Duration: 700, y: -0.6, $Zoom: 11, $Rotate: 1, $Easing: { $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic, $Opacity: $JssorEasing$.$EaseLinear, $Rotate: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $Round: { $Rotate: 0.8 } },

            //RTTS|R
            { $Duration: 700, x: -0.6, $Zoom: 1, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $Round: { $Rotate: 1.2 } },
            //RTTS|B
            { $Duration: 700, y: -0.6, $Zoom: 1, $Rotate: 1, $Easing: { $Top: $JssorEasing$.$EaseInQuad, $Zoom: $JssorEasing$.$EaseInQuad, $Rotate: $JssorEasing$.$EaseInQuad, $Opacity: $JssorEasing$.$EaseOutQuad }, $Opacity: 2, $Round: { $Rotate: 1.2 } },

            //RTT*JDN|RT
            { $Duration: 1000, x: -0.8, y: 0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
            //RTT*JDN|LB
            { $Duration: 1000, x: 0.8, y: -0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseOutCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
            //RTT*JUP|RB
            { $Duration: 1000, x: -0.8, y: -0.5, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseLinear, $Top: $JssorEasing$.$EaseInCubic, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Top: [0, 0.5] } },
            { $Duration: 1000, x: -0.5, y: 0.8, $Zoom: 11, $Rotate: 1, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseLinear, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Left: [0, 0.5] }, $Round: { $Rotate: 0.5 } },
            //RTT*JUP|BR
            { $Duration: 1000, x: -0.5, y: -0.8, $Zoom: 11, $Rotate: 0.2, $Easing: { $Left: $JssorEasing$.$EaseInCubic, $Top: $JssorEasing$.$EaseLinear, $Zoom: $JssorEasing$.$EaseInCubic }, $Opacity: 2, $During: { $Left: [0, 0.5] } },

            //R|IB
            { $Duration: 900, x: -0.6, $Easing: { $Left: $JssorEasing$.$EaseInOutBack }, $Opacity: 2 },
            //B|IB
            { $Duration: 900, y: -0.6, $Easing: { $Top: $JssorEasing$.$EaseInOutBack }, $Opacity: 2 },

            ];

            var options = {
                $AutoPlay: true,                                    //[Optional] Whether to auto play, to enable slideshow, this option must be set to true, default value is false
                $AutoPlaySteps: 1,                                  //[Optional] Steps to go for each navigation request (this options applys only when slideshow disabled), the default value is 1
                $AutoPlayInterval: 4000,                            //[Optional] Interval (in milliseconds) to go for next slide since the previous stopped if the slider is auto playing, default value is 3000
                $PauseOnHover: 1,                               //[Optional] Whether to pause when mouse over if a slider is auto playing, 0 no pause, 1 pause for desktop, 2 pause for touch device, 3 pause for desktop and touch device, 4 freeze for desktop, 8 freeze for touch device, 12 freeze for desktop and touch device, default value is 1

                $ArrowKeyNavigation: true,   			            //[Optional] Allows keyboard (arrow key) navigation or not, default value is false
                $SlideDuration: 500,                                //[Optional] Specifies default duration (swipe) for slide in milliseconds, default value is 500
                $MinDragOffsetToSlide: 20,                          //[Optional] Minimum drag offset to trigger slide , default value is 20
                //$SlideWidth: 600,                                 //[Optional] Width of every slide in pixels, default value is width of 'slides' container
                $SlideHeight: 225,                                //[Optional] Height of every slide in pixels, default value is height of 'slides' container
                $SlideSpacing: 0, 					                //[Optional] Space between each slide in pixels, default value is 0
                $DisplayPieces: 1,                                  //[Optional] Number of pieces to display (the slideshow would be disabled if the value is set to greater than 1), the default value is 1
                $ParkingPosition: 0,                                //[Optional] The offset position to park slide (this options applys only when slideshow disabled), default value is 0.
                $UISearchMode: 1,                                   //[Optional] The way (0 parellel, 1 recursive, default value is 1) to search UI components (slides container, loading screen, navigator container, arrow navigator container, thumbnail navigator container etc).
                $PlayOrientation: 1,                                //[Optional] Orientation to play slide (for auto play, navigation), 1 horizental, 2 vertical, 5 horizental reverse, 6 vertical reverse, default value is 1
                $DragOrientation: 3,                                //[Optional] Orientation to drag slide, 0 no drag, 1 horizental, 2 vertical, 3 either, default value is 1 (Note that the $DragOrientation should be the same as $PlayOrientation when $DisplayPieces is greater than 1, or parking position is not 0)

                $SlideshowOptions: {                                //[Optional] Options to specify and enable slideshow or not
                    $Class: $JssorSlideshowRunner$,                 //[Required] Class to create instance of slideshow
                    $Transitions: _SlideshowTransitions,            //[Required] An array of slideshow transitions to play slideshow
                    $TransitionsOrder: 1,                           //[Optional] The way to choose transition to play slide, 1 Sequence, 0 Random
                    $ShowLink: true                                    //[Optional] Whether to bring slide link on top of the slider when slideshow is running, default value is false
                },

                $CaptionSliderOptions: {                            //[Optional] Options which specifies how to animate caption
                    $Class: $JssorCaptionSlider$,                   //[Required] Class to create instance to animate caption
                    $CaptionTransitions: _CaptionTransitions,       //[Required] An array of caption transitions to play caption, see caption transition section at jssor slideshow transition builder
                    $PlayInMode: 1,                                 //[Optional] 0 None (no play), 1 Chain (goes after main slide), 3 Chain Flatten (goes after main slide and flatten all caption animations), default value is 1
                    $PlayOutMode: 3                                 //[Optional] 0 None (no play), 1 Chain (goes before main slide), 3 Chain Flatten (goes before main slide and flatten all caption animations), default value is 1
                },

                $BulletNavigatorOptions: {                                //[Optional] Options to specify and enable navigator or not
                    $Class: $JssorBulletNavigator$,                       //[Required] Class to create navigator instance
                    $ChanceToShow: 2,                               //[Required] 0 Never, 1 Mouse Over, 2 Always
                    $AutoCenter: 0,                                 //[Optional] Auto center navigator in parent container, 0 None, 1 Horizontal, 2 Vertical, 3 Both, default value is 0
                    $Steps: 1,                                      //[Optional] Steps to go for each navigation request, default value is 1
                    $Lanes: 1,                                      //[Optional] Specify lanes to arrange items, default value is 1
                    $SpacingX: 10,                                   //[Optional] Horizontal space between each item in pixel, default value is 0
                    $SpacingY: 10,                                   //[Optional] Vertical space between each item in pixel, default value is 0
                    $Orientation: 1                                 //[Optional] The orientation of the navigator, 1 horizontal, 2 vertical, default value is 1
                },

                $ArrowNavigatorOptions: {
                    $Class: $JssorArrowNavigator$,              //[Requried] Class to create arrow navigator instance
                    $ChanceToShow: 2                                //[Required] 0 Never, 1 Mouse Over, 2 Always
                }
            };

            var jssor_slider1 = new $JssorSlider$("slider1_container", options);
            //responsive code begin
            //you can remove responsive code if you don't want the slider scales while window resizes
            function ScaleSlider() {
                var parentWidth = jssor_slider1.$Elmt.parentNode.clientWidth;
                if (parentWidth)
                    jssor_slider1.$ScaleWidth(Math.min(parentWidth, 1170));
                else
                    window.setTimeout(ScaleSlider, 30);
            }
            ScaleSlider();

            $(window).bind("load", ScaleSlider);
            $(window).bind("resize", ScaleSlider);
            $(window).bind("orientationchange", ScaleSlider);
            //responsive code end
        });
    </script>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body>

<div class="header_bg">
<div class="container">
<div class="row margin_0">
<div class="col-md-5 col-sm-5"></div>
<div class="col-md-7 col-sm-7">
<div class="top_section">
<ul>
<li>Direct: (647) 832-2369</li>
<li>Office: (416) 747-9777</li>
<li>Email:  dineshmanocha@gmail.com</li>

</ul>
 </div>

</div>
 </div>
 <div class="row margin_0">
 <div class="header_middle">
 <div class="col-md-12 col-sm-12 margin_0">
  <div class="col-md-3 col-sm-3">
  <figure class="logo">
  <img src="images/logo.png" alt="" title=""/>
   </figure>
 
  </div>
  
  <div class="col-md-5 col-sm-5">
  <div class="property_logo">
  <img src="images/property-logo.png" alt="" title=""/>
  <h4>Homelife/Miracle Realty Ltd, Brokerage
Independently Owned and Operated</h4>
   </div>
  
  
   </div>
   
   <div class="col-md-4 col-sm-4">
   <div class="useful_link">
   <ul>
   <li><a href="#">Useful Links</a></li>
   <li><a href="#">Calculator</a></li>
   <li><a style="border:none;" href="#">About us</a></li>
    </ul>
   
    </div>
   
    </div>
 
  </div>
</div>
</div>

<div class="row margin_0">
 <div class="col-md-12 col-sm-12">
 <div class="menu_bg">
 
  <div role="navigation" class="navbar navbar-default">
          <div class="navbar-header">
            <button data-target=".navbar-collapse" data-toggle="collapse" class="navbar-toggle" type="button">
              <span class="sr-only">Toggle navigation</span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
              <span class="icon-bar"></span>
            </button>
                     </div>
          <div class="navbar-collapse collapse topnav_new">
            <ul class="nav navbar-nav">
              <li><a href="index.html" title="Home">Home </a></li>
              <li><a href="about-us.html" title="About Me">About us</a></li>
               <li><a href="services.html" title="Services">Services</a></li>
              <li><a href="#"title="Gallery">Gallery</a></li>
              <li><a href="#" title="Blog">Blog</a></li>
              <li style="border:none;"><a href="contact_us.html" title="Contact us">Contact us</a></li>
                         
            </ul>
            
        </div><!--/.container-fluid -->
      </div>
  
 </div>
 
  </div>
</div>
 </div>
 </div>
 
 <div class="container">
<div class="col-md-12 col-md-12">
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
    <img src="images/property-1.png">
    <h6>70 - 735 Sheppard Ave</h6>
    <p>Lovely Bright Executive Town Home In The High Demand West Pickering. Ideal Location Just Minutes To 401, Go Transit, </p>
    <div class="property_area">
    <span>MLS#:      </span>
    <span>E3183695        </span>
    
     </div>
     <div class="property_area">
    <span>Status:       </span>
    <span>Sold       </span>
    
     </div>
     <div class="property_area">
    <span>Type:       </span>
    <span>Condominium      </span>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
</div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
    <img src="images/property-1.png">
    <h6>70 - 735 Sheppard Ave</h6>
    <p>Lovely Bright Executive Town Home In The High Demand West Pickering. Ideal Location Just Minutes To 401, Go Transit, </p>
    <div class="property_area">
    <span>MLS#:      </span>
    <span>E3183695        </span>
    
     </div>
     <div class="property_area">
    <span>Status:       </span>
    <span>Sold       </span>
    
     </div>
     <div class="property_area">
    <span>Type:       </span>
    <span>Condominium      </span>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
</div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
    <img src="images/property-1.png">
    <h6>70 - 735 Sheppard Ave</h6>
    <p>Lovely Bright Executive Town Home In The High Demand West Pickering. Ideal Location Just Minutes To 401, Go Transit, </p>
    <div class="property_area">
    <span>MLS#:      </span>
    <span>E3183695        </span>
    
     </div>
     <div class="property_area">
    <span>Status:       </span>
    <span>Sold       </span>
    
     </div>
     <div class="property_area">
    <span>Type:       </span>
    <span>Condominium      </span>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
</div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
    <img src="images/property-1.png">
    <h6>70 - 735 Sheppard Ave</h6>
    <p>Lovely Bright Executive Town Home In The High Demand West Pickering. Ideal Location Just Minutes To 401, Go Transit, </p>
    <div class="property_area">
    <span>MLS#:      </span>
    <span>E3183695        </span>
    
     </div>
     <div class="property_area">
    <span>Status:       </span>
    <span>Sold       </span>
    
     </div>
     <div class="property_area">
    <span>Type:       </span>
    <span>Condominium      </span>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
</div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
       <div class="box_in">
                        <span>Toronto</span> <a href="../Search.aspx?Municipality=Toronto" title="Toronto">
                            <img src="../images/real-estate-2_30.png" alt="Toronto" title="Toronto" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>

<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
      <img src="../images/real-estate-2_30.png" alt="Toronto" title="Toronto" />
  <div class="box_in">
                        <span>Toronto</span> <a href="../Search.aspx?Municipality=Toronto" title="Toronto">
                            <img src="../images/real-estate-2_30.png" alt="Toronto" title="Toronto" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
       <div class="box_in">
                        <span>Mississauga</span> <a href="../Search.aspx?Municipality=Mississauga" title="Mississauga">
                            <img src="../images/real-estate-2_32.png" alt="Mississauga" title="Mississauga" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
      <img src="../images/real-estate-2_30.png" alt="Toronto" title="Toronto" />
     <div class="box_in">
                        <span>Brampton</span> <a href="../Search.aspx?Municipality=Brampton" title="Brampton">
                            <img src="../images/real-estate-2_34.png" alt="Brampton" title="Brampton" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
         <div class="box_in">
                        <span>Oakville</span> <a href="../Search.aspx?Municipality=Oakville" title="Oakville">
                            <img src="../images/real-estate-2_42.png" alt="Oakville" title="Oakville" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
       <div class="box_in">
                        <span>Hamilton</span> <a href="../Search.aspx?Municipality=Hamilton" title="Hamilton">
                            <img src="../images/real-estate-2_30.png" alt="Hamilton" title="Hamilton" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
    <div class="box_in">
                        <span>Markham</span> <a href="../Search.aspx?Municipality=Markham" title="Markham">
                            <img src="../images/real-estate-2_44.png" alt="Markham" title="Markham" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
    
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>
<div class="col-md-3 col-md-3">
<div class="Residential_section_box_1">
       <div class="box_in">
                        <span>Wasaga Beach</span> <a href="../Search.aspx?Municipality=Wasaga Beach" title="Wasaga Beach">
                            <img src="../images/real-estate-2_46.png" alt="Wasaga Beach" title="Wasaga Beach" />
                            <p>
                                Search
                            </p>
                        </a>
                    </div>
     </div>
     <div class="view_detail">
     <button type="button" class="btn btn-primary">View Details</button>
     
      </div>
    
    
     </div>

</div>
 
  
  
  <footer class="footer_bg">
  <div class="container">
  <div class="row">
  <div class="col-md-4 col-sm-4">
  <div class="footer_menu">
  <ul>
  <li><a href="#">Home</a></li>
  <li><a href="#">Listings   </a></li>
  <li><a href="#">Buyers   </a></li>
  </ul>
   </div>
  
   </div>
   
   <div class="col-md-4 col-sm-4">
  <div class="footer_menu">
  <ul>
  <li><a href="#">Sellers  </a></li>
  <li><a href="#">Testimonials</a></li>
  <li><a href="#">Contact</a></li>
  </ul>
   </div>
  
   </div>
   
   <div class="col-md-4 col-sm-4">
  <div class="footer_menu">
<p>HomeLife/Miracle Realty Ltd., Brokerage<br/>
Ontario, Canada<br/>
Email: dineshmanocha@gmail.com  </p>
<h5>Cell: (647) 832-2369</h5>
   </div>
  
   </div>
 
   </div>
   </div>
  
   </footer>

  
  
  
  
 
     


   
<script src="js/bootstrap.js"></script> 
<script src="js/bootstrap.min.js"></script>
</body>
</html>