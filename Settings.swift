//
//  Settings.swift
//  CollectingKoo
//
//  Created by rebeloper on 3/13/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class Settings: CCNode {
  
  var soundOnOffButton: CCButton!
  var moreGamesButton:CCButton!
  var restorePurchasesButton: CCButton!
  var removeAdsButton: CCButton!
  var attributionCopyrightLabel: CCLabelTTF!
  
  func didLoadFromCCB() {
    if RebeloperKitMini.sharedInstance.musicAndSoundState() {
      soundOnOffButton.selected = false
    } else {
      soundOnOffButton.selected = true
    }
    
    if !useMoreGamesButton {
      moreGamesButton.visible = false
      restorePurchasesButton.position = ccp(restorePurchasesButton.position.x * 0.66, restorePurchasesButton.position.y)
      removeAdsButton.position = ccp(removeAdsButton.position.x * 0.825, removeAdsButton.position.y)
    }
    
    attributionCopyrightLabel.string = attributionCopyrightText
    
  }
  
  func rateButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.rateThisApp()
  }
  
  func toggleSoundOnOffButtonTapped(_ sender: CCButton)
  {
    RebeloperKitMini.sharedInstance.playTapSound()
    if sender.selected
    {
      print("Sound is OFF")
      RebeloperKitMini.sharedInstance.registerMusicAndSoundState(false)
    }
    else
    {
      print("Sound is ON")
      RebeloperKitMini.sharedInstance.registerMusicAndSoundState(true)
    }
  }
  
  func gameCenterButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.showGameCenter()
  }
  
  func moreGamesButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.showMoreGames()
  }
  
  func restorePurchasesButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.restorePurchases()
  }
  
  func removeAdsButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.buyRemoveAdsIAP()
  }
  
  func settingsBackButtonTapped() {
    var homeSceneName = "MainScene"
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      homeSceneName = "WorldContainer"
    }
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: homeSceneName);
    CCDirector.shared().replace(scene);
  }
}
