//
//  MissionScene.swift
//  RebeloperLevelSystem
//
//  Created by rebeloper on 7/20/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class MissionScene: CCNode {
  
  var missionTextLabel: CCLabelTTF!
  var currentGoalForLevel: Int!
  var currentTimeForLevel: Int!
  
  func didLoadFromCCB() {
    print("Mission Scene started.")
    
    switch UserDefaults.standard.integer(forKey: keyCurrentLevel) {
    case 1:
      currentGoalForLevel = goalForLevel0001
      currentTimeForLevel = timeForLevel0001
    case 2:
      currentGoalForLevel = goalForLevel0002
      currentTimeForLevel = timeForLevel0002
    case 3:
      currentGoalForLevel = goalForLevel0003
      currentTimeForLevel = timeForLevel0003
    case 4:
      currentGoalForLevel = goalForLevel0004
      currentTimeForLevel = timeForLevel0004
    case 5:
      currentGoalForLevel = goalForLevel0005
      currentTimeForLevel = timeForLevel0005
    case 6:
      currentGoalForLevel = goalForLevel0006
      currentTimeForLevel = timeForLevel0006
    case 7:
      currentGoalForLevel = goalForLevel0007
      currentTimeForLevel = timeForLevel0007
    case 8:
      currentGoalForLevel = goalForLevel0008
      currentTimeForLevel = timeForLevel0008
    case 9:
      currentGoalForLevel = goalForLevel0009
      currentTimeForLevel = timeForLevel0009
    case 10:
      currentGoalForLevel = goalForLevel0010
      currentTimeForLevel = timeForLevel0010
    case 11:
      currentGoalForLevel = goalForLevel0011
      currentTimeForLevel = timeForLevel0011
    case 12:
      currentGoalForLevel = goalForLevel0012
      currentTimeForLevel = timeForLevel0012
    case 13:
      currentGoalForLevel = goalForLevel0013
      currentTimeForLevel = timeForLevel0013
    case 14:
      currentGoalForLevel = goalForLevel0014
      currentTimeForLevel = timeForLevel0014
    case 15:
      currentGoalForLevel = goalForLevel0015
      currentTimeForLevel = timeForLevel0015
    case 16:
      currentGoalForLevel = goalForLevel0016
      currentTimeForLevel = timeForLevel0016
    case 17:
      currentGoalForLevel = goalForLevel0017
      currentTimeForLevel = timeForLevel0017
    case 18:
      currentGoalForLevel = goalForLevel0018
      currentTimeForLevel = timeForLevel0018
    case 19:
      currentGoalForLevel = goalForLevel0019
      currentTimeForLevel = timeForLevel0019
    case 20:
      currentGoalForLevel = goalForLevel0020
      currentTimeForLevel = timeForLevel0020
    case 21:
      currentGoalForLevel = goalForLevel0021
      currentTimeForLevel = timeForLevel0021
    case 22:
      currentGoalForLevel = goalForLevel0022
      currentTimeForLevel = timeForLevel0022
    case 23:
      currentGoalForLevel = goalForLevel0023
      currentTimeForLevel = timeForLevel0023
    case 24:
      currentGoalForLevel = goalForLevel0024
      currentTimeForLevel = timeForLevel0024
    case 25:
      currentGoalForLevel = goalForLevel0025
      currentTimeForLevel = timeForLevel0025
    case 26:
      currentGoalForLevel = goalForLevel0026
      currentTimeForLevel = timeForLevel0026
    case 27:
      currentGoalForLevel = goalForLevel0027
      currentTimeForLevel = timeForLevel0027
    case 28:
      currentGoalForLevel = goalForLevel0028
      currentTimeForLevel = timeForLevel0028
    case 29:
      currentGoalForLevel = goalForLevel0029
      currentTimeForLevel = timeForLevel0029
    case 30:
      currentGoalForLevel = goalForLevel0030
      currentTimeForLevel = timeForLevel0030
    case 31:
      currentGoalForLevel = goalForLevel0031
      currentTimeForLevel = timeForLevel0031
    case 32:
      currentGoalForLevel = goalForLevel0032
      currentTimeForLevel = timeForLevel0032
    case 33:
      currentGoalForLevel = goalForLevel0033
      currentTimeForLevel = timeForLevel0033
    default:
      break
    }
    
    missionTextLabel.string = "\(goalTextPart1)" + String(currentGoalForLevel) + "\(goalTextPart2)" + String(currentTimeForLevel) + " seconds."
  }
  
  func missionClosedButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "WorldContainer");
    CCDirector.shared().replace(scene);
  }
  
  func missionAcceptedButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Gameplay");
    CCDirector.shared().replace(scene);
  }
  
}
