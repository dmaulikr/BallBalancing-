//
//  GameOver.swift
//  CollectingKoo
//
//  Created by rebeloper on 2/21/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class GameOver: CCNode {
  
  var currentScoreLabel: CCLabelTTF!
  var bestScoreLabel: CCLabelTTF!
  
  func didLoadFromCCB() {
    RebeloperKitMini.sharedInstance.showAdForPlacement(RKAdPlacement.gameOver)
    RebeloperKitMini.sharedInstance.showRatePrompt()
    currentScoreLabel.string = String(RebeloperKitMini.sharedInstance.currentScore())
    bestScoreLabel.string = String(RebeloperKitMini.sharedInstance.bestScore())
  }
  
  func replayButtonTapped() {
    AppController.deleteScreenshot()
    var gameplaySceneName = "Gameplay"
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      gameplaySceneName = "MissionScene"
    }
    
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: gameplaySceneName);
    CCDirector.shared().replace(scene);
  }
  
  func homeButtonTapped() {
    AppController.deleteScreenshot()
    var homeSceneName = "MainScene"
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      homeSceneName = "WorldContainer"
    }
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: homeSceneName);
    CCDirector.shared().replace(scene);
  }
  
  func shareButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let pointsEarned = RebeloperKitMini.sharedInstance.currentScore()
    
    let appName = Bundle.main.object(forInfoDictionaryKey: "CFBundleDisplayName") as! String
    
    (RootViewControllerInterface.sharedManager() as AnyObject).presentUIActivityViewController("Wow! I have just earned \(pointsEarned) points in '\(appName)'! Download '\(appName)' from the App Store now!")
  }
}
