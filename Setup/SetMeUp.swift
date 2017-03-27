//
//  SetMeUp.swift
//  BalloonKoo
//
//  Created by Rebeloper on 02/08/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

////////////////////////////////
// ATTRIBUTION/COPYRIGHT TEXT //
////////////////////////////////

// Add the text of the label that is displayed in the 'Settings' screen
let attributionCopyrightText = "Rebeloper © 2015, rebeloper.com"

//////////////////////////////
// MORE GAMES BUTTON STATUS //
//////////////////////////////

// If this is your first game and cannot add any other games in the Chartboost dashboard to the 'More Games' panel than set 'useMoreGamesButton' to false
// the 'More Games Button' will automagically disappear from the 'Settings' screen

let useMoreGamesButton = true

// set up time for when the level system is disabled
let timeForGameWithoutTheLevelSystem = 59

//////////////////
// LEVEL SYSTEM //
//////////////////

// Make sure you have 'enableLevelSystem' set to 'YES' in the 'EnableDisableLevelSystem.h' file to be able to use the level system
// If you do not wish to use the level system than set 'enableLevelSystem' to 'NO' and you may safely disregard the following (you don't have to set it up)

// Set up the goals
let goalForLevel0001 = 5
let goalForLevel0002 = 7
let goalForLevel0003 = 10
let goalForLevel0004 = 13
let goalForLevel0005 = 15
let goalForLevel0006 = 17
let goalForLevel0007 = 20
let goalForLevel0008 = 25
let goalForLevel0009 = 30
let goalForLevel0010 = 35
let goalForLevel0011 = 40
let goalForLevel0012 = 45
let goalForLevel0013 = 50
let goalForLevel0014 = 55
let goalForLevel0015 = 60
let goalForLevel0016 = 65
let goalForLevel0017 = 70
let goalForLevel0018 = 75
let goalForLevel0019 = 80
let goalForLevel0020 = 85
let goalForLevel0021 = 90
let goalForLevel0022 = 95
let goalForLevel0023 = 100
let goalForLevel0024 = 105
let goalForLevel0025 = 110
let goalForLevel0026 = 115
let goalForLevel0027 = 120
let goalForLevel0028 = 125
let goalForLevel0029 = 130
let goalForLevel0030 = 135
let goalForLevel0031 = 140
let goalForLevel0032 = 145
let goalForLevel0033 = 150

// Set up times
//
// - needs to be set in seconds
// - needs to be higher than 45
let timeForLevel0001 = 45
let timeForLevel0002 = 55
let timeForLevel0003 = 65
let timeForLevel0004 = 75
let timeForLevel0005 = 85
let timeForLevel0006 = 95
let timeForLevel0007 = 105
let timeForLevel0008 = 125
let timeForLevel0009 = 145
let timeForLevel0010 = 170
let timeForLevel0011 = 200
let timeForLevel0012 = 240
let timeForLevel0013 = 250
let timeForLevel0014 = 260
let timeForLevel0015 = 275
let timeForLevel0016 = 310
let timeForLevel0017 = 350
let timeForLevel0018 = 370
let timeForLevel0019 = 400
let timeForLevel0020 = 420
let timeForLevel0021 = 460
let timeForLevel0022 = 480
let timeForLevel0023 = 500
let timeForLevel0024 = 510
let timeForLevel0025 = 520
let timeForLevel0026 = 530
let timeForLevel0027 = 540
let timeForLevel0028 = 550
let timeForLevel0029 = 560
let timeForLevel0030 = 570
let timeForLevel0031 = 580
let timeForLevel0032 = 590
let timeForLevel0033 = 600

// Set up level system popup texts

let goalTextPart1 = "To pass this mission balance the ball and collect "
let goalTextPart2 = " coins in less than "
// output will be: To pass this mission balance the ball and collect 5 coins in less than 45 seconds.

let goalCompletedTextPart1 = "Way to go! You have collected all the "
let goalCompletedTextPart2 = " needed coins in "
// output will be: Way to go! You have collected all the 5 needed coins in 12 seconds.

let goalFaildTextPart1 = "You haven't collected all the "
let goalFaildTextPart2 = " needed coins. Better luck next time!"
// output will be: You haven't collected all the 5 coins. Better luck next time!

////////////////////////////////////////////////////////////////////////////////
