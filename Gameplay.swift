//
//  Gameplay.swift
//  BalanceTheBall
//
//  Created by SANDOR NAGY on 05/10/15.
//  Copyright © 2015 Apportable. All rights reserved.
//

class Gameplay: CCNode, CCPhysicsCollisionDelegate {
  
  // drawing order enum
  enum DrawingOrder: Int
  {
    case drawingOrderGround = 0, drawingOrderHero, drawingOrderScore, drawingOrderCoin, drawingOrderPausedPanel
  }
  
  // code connection vars from SpriteBuilder
  var hero: CCNode!
  var hand: CCNode!
  var thePhysicsNode: CCPhysicsNode!
  var counterLabel: CCLabelBMFont!
  var scoreLabel: CCLabelTTF!
  
  var missionFaild = false
  
  var currentScore: Int = 0
  
  var isGameOver: Bool = false
  
  var pausedPanel: CCNode!
  var pauseButton: CCButton!
  var isPaused = false
  
  let screenSizeHeight = CCDirector.shared().viewSize().height
  let screenSizeWidth = CCDirector.shared().viewSize().width
  
  var currentTimeForLevel: Int!
  
  // gameplay logic vars
  var timer = Timer()
  var counter = 59
  var totalTime = 59 // needs to be set exactly to the 'counter'
  
  var coinsTimer = Timer()
  var coinsHideTimer = Timer()
  
  let motionKit = MotionKit()
  
  var coin: Tappable!
  
  override func onExit() {
    NotificationCenter.default.removeObserver(self, name: NSNotification.Name(rawValue: "addPoints"), object: nil)
  }
  
  func didLoadFromCCB() {
    NotificationCenter.default.addObserver(self, selector: #selector(Gameplay.addPointsToScore), name: NSNotification.Name(rawValue: "addPoints"), object: nil)
    
    AppController.deleteScreenshot()
    
    startAccelerometer()
    
    pausedPanel.visible = false
    
    // enabling touches
    isUserInteractionEnabled = true
    
    // collision delegate setup
    thePhysicsNode.collisionDelegate = self
    
    // hero setup
    hero = CCBReader.load("Hero")
    hero.position = ccp(screenSizeWidth * 0.5, screenSizeHeight * 0.6)
    thePhysicsNode.addChild(hero)
    hero.zOrder = DrawingOrder.drawingOrderHero.rawValue
    
    // hand setup
    hand = CCBReader.load("Hand")
    hand.position = ccp(screenSizeWidth * 0.5, screenSizeHeight * 0.0)
    thePhysicsNode.addChild(hand)
    hand.zOrder = DrawingOrder.drawingOrderHero.rawValue
    
    // coin setup
    coin = CCBReader.load("Tappable") as! Tappable
    coin.position = ccp(screenSizeWidth * 0.5, screenSizeHeight * 0.7)
    addChild(coin)
    coin.zOrder = DrawingOrder.drawingOrderCoin.rawValue
    
    scoreLabel.zOrder = DrawingOrder.drawingOrderScore.rawValue
    pauseButton.zOrder = DrawingOrder.drawingOrderScore.rawValue
    pausedPanel.zOrder = DrawingOrder.drawingOrderPausedPanel.rawValue
    
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      
      switch UserDefaults.standard.integer(forKey: keyCurrentLevel) {
      case 1:
        currentTimeForLevel = timeForLevel0001
      case 2:
        currentTimeForLevel = timeForLevel0002
      case 3:
        currentTimeForLevel = timeForLevel0003
      case 4:
        currentTimeForLevel = timeForLevel0004
      case 5:
        currentTimeForLevel = timeForLevel0005
      case 6:
        currentTimeForLevel = timeForLevel0006
      case 7:
        currentTimeForLevel = timeForLevel0007
      case 8:
        currentTimeForLevel = timeForLevel0008
      case 9:
        currentTimeForLevel = timeForLevel0009
      case 10:
        currentTimeForLevel = timeForLevel0010
      case 11:
        currentTimeForLevel = timeForLevel0011
      case 12:
        currentTimeForLevel = timeForLevel0012
      case 13:
        currentTimeForLevel = timeForLevel0013
      case 14:
        currentTimeForLevel = timeForLevel0014
      case 15:
        currentTimeForLevel = timeForLevel0015
      case 16:
        currentTimeForLevel = timeForLevel0016
      case 17:
        currentTimeForLevel = timeForLevel0017
      case 18:
        currentTimeForLevel = timeForLevel0018
      case 19:
        currentTimeForLevel = timeForLevel0019
      case 20:
        currentTimeForLevel = timeForLevel0020
      case 21:
        currentTimeForLevel = timeForLevel0021
      case 22:
        currentTimeForLevel = timeForLevel0022
      case 23:
        currentTimeForLevel = timeForLevel0023
      case 24:
        currentTimeForLevel = timeForLevel0024
      case 25:
        currentTimeForLevel = timeForLevel0025
      case 26:
        currentTimeForLevel = timeForLevel0026
      case 27:
        currentTimeForLevel = timeForLevel0027
      case 28:
        currentTimeForLevel = timeForLevel0028
      case 29:
        currentTimeForLevel = timeForLevel0029
      case 30:
        currentTimeForLevel = timeForLevel0030
      case 31:
        currentTimeForLevel = timeForLevel0031
      case 32:
        currentTimeForLevel = timeForLevel0032
      case 33:
        currentTimeForLevel = timeForLevel0033
      default:
        break
      }
      
      counter = currentTimeForLevel
      totalTime = currentTimeForLevel
    } else {
      counter = timeForGameWithoutTheLevelSystem
      totalTime = timeForGameWithoutTheLevelSystem
    }
    
    //var minutes = String(counter / 60)
    var seconds = String(counter%60)
    if counter%60 < 10 {
      seconds = "0" + String(counter%60)
    }
    counterLabel.setString(String(counter / 60) + ":" + seconds)
    timer = Timer.scheduledTimer(timeInterval: 1, target:self, selector: #selector(Gameplay.updateCounter), userInfo: nil, repeats: true)
    
    
    coin.visible = false
    coinsTimer = Timer.scheduledTimer(timeInterval: 4, target:self, selector: #selector(Gameplay.showCoin), userInfo: nil, repeats: true)
    
    
  }
  
  func showCoin() {
    
    if !isPaused {
      // creating a random x position from where the collectable will be dropped
      let rangeX = UInt32(screenSizeWidth - 40)
      
      var randomXPosition = CGFloat(arc4random_uniform(rangeX))
      if randomXPosition <= 40 {
        randomXPosition = randomXPosition + 40
      }
      // creating a random y position from where the collectable will be dropped
      let rangeY = UInt32(screenSizeWidth - 40)
      
      var randomYPosition = CGFloat(arc4random_uniform(rangeY))
      if randomYPosition <= 40 {
        randomYPosition = randomYPosition + 40
      }
      
      coin.position = ccp(randomXPosition, randomYPosition)
      
      coin.visible = true
      coinsHideTimer = Timer.scheduledTimer(timeInterval: 2, target:self, selector: #selector(Gameplay.hideCoin), userInfo: nil, repeats: false)
    }
    
  }
  
  func hideCoin() {
    coin.visible = false
    coinsHideTimer.invalidate()
  }
  
  // scene update
  override func update(_ delta: CCTime) {
    if isGameOver {
      return
    }
    
    if !isPaused {
      
      if self.hero.position.x <= 0 {
        timer.invalidate()
        coinsTimer.invalidate()
        coinsHideTimer.invalidate()
        missionFaild = true
        gameOver()
      }
      
      if self.hero.position.x >= self.screenSizeWidth {
        timer.invalidate()
        coinsTimer.invalidate()
        coinsHideTimer.invalidate()
        missionFaild = true
        gameOver()
      }
      
      if self.hero.position.y <= 0 {
        timer.invalidate()
        coinsTimer.invalidate()
        coinsHideTimer.invalidate()
        missionFaild = true
        gameOver()
      }
      
      if self.hand.position.y <= 0 {
        self.hand.position = CGPoint(x: self.hand.position.x,y: 0)
      }
      
      if self.hand.position.x <= 0 {
        self.hand.position = CGPoint(x: 0,y: 0)
      }
      
      if self.hand.position.x >= self.screenSizeWidth {
        self.hand.position = CGPoint(x: self.screenSizeWidth,y: 0)
      }
      
    }
    
  }
  
  func startAccelerometer() {
    motionKit.getAccelerometerValues(0.2){
      (x, y, z) in
      //Interval is in seconds. And now you have got the x, y and z values here
      
      let xValue: Double? = x
      
      if xValue != nil {
        let impulse: CGPoint = ccp(CGFloat(xValue! * 100), CGFloat(0.0))
        let move = CCActionMoveBy.action(withDuration: 0.2, position: impulse) as! CCActionMoveBy
        if !self.isPaused {
          self.hand.run(move)
        }
      }
      
    }
  }
  
  // time counter update
  func updateCounter() {
    
    if !isPaused {
      counter -= 1
      
      //var minutes = String(counter / 60)
      var seconds = String(counter%60)
      if counter%60 < 10 {
        seconds = "0" + String(counter%60)
      }
      counterLabel.setString(String(counter / 60) + ":" + seconds)
      
      if counter < 10 {
        RebeloperKitMini.sharedInstance.playTapSound()
      }
      
      if counter <= -1 {
        counterLabel.setString("0:00")
        timer.invalidate()
        coinsTimer.invalidate()
        coinsHideTimer.invalidate()
        missionFaild = true
        gameOver()
      }
    }
    
  }
  
  // pause logic
  func pauseButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    pausedPanel.visible = true
    isPaused = true
    thePhysicsNode.paused = true
    isUserInteractionEnabled = false
    pauseButton.enabled = false
    self.hero.paused = true
  }
  
  func resumeButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    pausedPanel.visible = false
    isPaused = false
    thePhysicsNode.paused = false
    isUserInteractionEnabled = true
    pauseButton.enabled = true
    self.hero.paused = false
  }
  
  func restartButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Gameplay")
    CCDirector.shared().replace(scene)
  }
  
  func exitButtonTapped() {
    var homeSceneName = "MainScene"
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      homeSceneName = "WorldContainer"
    }
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: homeSceneName);
    CCDirector.shared().replace(scene);
  }
  
  // adding points
  func addPointsToScore() {
    RebeloperKitMini.sharedInstance.playCoinSound()
    currentScore += 1
    scoreLabel.string = String(currentScore)
    checkIfGoalHasBeenReached()
  }
  
  func checkIfGoalHasBeenReached() {
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      
      var currentGoalForLevel: Int = 0
      
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
      
      if currentScore >= currentGoalForLevel {
        timer.invalidate()
        coinsTimer.invalidate()
        coinsHideTimer.invalidate()
        gameOver()
      }
    }
  }
  
  // stopping the game
  func gameOver() {
    
    if isGameOver {
      return
    }
    
    AppController.captureScreenshot()
    
    isGameOver = true
    RebeloperKitMini.sharedInstance.playHitSound()
    RebeloperKitMini.sharedInstance.registerScore(currentScore)
    
    GameCenterManager.shared().saveAndReportScore(Int32(currentScore), leaderboard: gameCenterLeaderboardID as! String, sortOrder: GameCenterSortOrderHighToLow)
    
    var gameOverSceneName = "GameOver"
    
    if UserDefaults.standard.bool(forKey: "kUseLevelSystem") {
      
      if missionFaild {
        gameOverSceneName = "MissionFaildScene"
        RebeloperKitMini.sharedInstance.loseLevel(UserDefaults.standard.integer(forKey: keyCurrentLevel))
      } else {
        if counter < totalTime {
          gameOverSceneName = "MissionCompletedScene"
          UserDefaults.standard.set(3, forKey: keyCurrentStars)
          RebeloperKitMini.sharedInstance.winLevel(UserDefaults.standard.integer(forKey: keyCurrentLevel), withStarCount: UserDefaults.standard.integer(forKey: keyCurrentStars))
        }
        
        if counter < 30 {
          gameOverSceneName = "MissionCompletedScene"
          UserDefaults.standard.set(2, forKey: keyCurrentStars)
          RebeloperKitMini.sharedInstance.winLevel(UserDefaults.standard.integer(forKey: keyCurrentLevel), withStarCount: UserDefaults.standard.integer(forKey: keyCurrentStars))
        }
        
        if counter < 20 {
          gameOverSceneName = "MissionCompletedScene"
          UserDefaults.standard.set(1, forKey: keyCurrentStars)
          RebeloperKitMini.sharedInstance.winLevel(UserDefaults.standard.integer(forKey: keyCurrentLevel), withStarCount: UserDefaults.standard.integer(forKey: keyCurrentStars))
        }
      }
      
    }
    
    // saving current game time
    let currentTimePlayed = totalTime - counter
    UserDefaults.standard.set(currentTimePlayed, forKey: keyCurrentTimePlayed)
    UserDefaults.standard.synchronize()
    
    let scene = CCBReader.load(asScene: gameOverSceneName);
    CCDirector.shared().replace(scene);
  }
  
}
