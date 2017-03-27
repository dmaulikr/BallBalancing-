//
//  MissionFaildScene.swift
//  RebeloperLevelSystem
//
//  Created by rebeloper on 7/20/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class MissionFaildScene: CCNode {
  
  var missionTextLabel: CCLabelTTF!
  var currentGoalForLevel: Int!
  
  func didLoadFromCCB() {
    print("Mission Scene started.")
    
    switch UserDefaults.standard.integer(forKey: keyCurrentLevel) {
    case 1:
      currentGoalForLevel = goalForLevel0001
    case 2:
      currentGoalForLevel = goalForLevel0002
    case 3:
      currentGoalForLevel = goalForLevel0003
    case 4:
      currentGoalForLevel = goalForLevel0004
    case 5:
      currentGoalForLevel = goalForLevel0005
    case 6:
      currentGoalForLevel = goalForLevel0006
    case 7:
      currentGoalForLevel = goalForLevel0007
    case 8:
      currentGoalForLevel = goalForLevel0008
    case 9:
      currentGoalForLevel = goalForLevel0009
    case 10:
      currentGoalForLevel = goalForLevel0010
    case 11:
      currentGoalForLevel = goalForLevel0011
    case 12:
      currentGoalForLevel = goalForLevel0012
    case 13:
      currentGoalForLevel = goalForLevel0013
    case 14:
      currentGoalForLevel = goalForLevel0014
    case 15:
      currentGoalForLevel = goalForLevel0015
    case 16:
      currentGoalForLevel = goalForLevel0016
    case 17:
      currentGoalForLevel = goalForLevel0017
    case 18:
      currentGoalForLevel = goalForLevel0018
    case 19:
      currentGoalForLevel = goalForLevel0019
    case 20:
      currentGoalForLevel = goalForLevel0020
    case 21:
      currentGoalForLevel = goalForLevel0021
    case 22:
      currentGoalForLevel = goalForLevel0022
    case 23:
      currentGoalForLevel = goalForLevel0023
    case 24:
      currentGoalForLevel = goalForLevel0024
    case 25:
      currentGoalForLevel = goalForLevel0025
    case 26:
      currentGoalForLevel = goalForLevel0026
    case 27:
      currentGoalForLevel = goalForLevel0027
    case 28:
      currentGoalForLevel = goalForLevel0028
    case 29:
      currentGoalForLevel = goalForLevel0029
    case 30:
      currentGoalForLevel = goalForLevel0030
    case 31:
      currentGoalForLevel = goalForLevel0031
    case 32:
      currentGoalForLevel = goalForLevel0032
    case 33:
      currentGoalForLevel = goalForLevel0033
    default:
      break
    }
    
    missionTextLabel.string = "\(goalFaildTextPart1)" + String(currentGoalForLevel) + "\(goalFaildTextPart2)"
  }
  
  func okButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "GameOver");
    CCDirector.shared().replace(scene);
  }
  
  func replayLevelButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Gameplay");
    CCDirector.shared().replace(scene);
  }
  
}
