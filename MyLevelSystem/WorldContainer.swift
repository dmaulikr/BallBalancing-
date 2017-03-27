//
//  WorldContainer001.swift
//  RebeloperLevelSystem
//
//  Created by rebeloper on 7/18/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class WorldContainer: CCNode {
  
  var moreGamesButton:CCButton!
  
  func didLoadFromCCB() {
    RebeloperKitMini.sharedInstance.showAdForPlacement(RKAdPlacement.mainMenuWithLevelSystem)
    
    if !useMoreGamesButton {
      moreGamesButton.visible = false
    }
  }
  
  func settingsButtonTapped() {
    print("Settings button tapped.")
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Settings");
    CCDirector.shared().replace(scene);
  }
  
  func moreGamesButtonTapped() {
    print("More Games button tapped.")
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.showMoreGames()
  }
  
}
