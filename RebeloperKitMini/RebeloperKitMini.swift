//
//  RebeloperKitMini.swift
//  RebeloperKitMini
//  1.0.1
//
/*
* Copyright (c) 2015 Rebeloper. All rights reserved.
*
*      http://www.rebeloper.com
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either expressed or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/

import Foundation

// workaround for 'stringByAppendingPathComponent'
extension String {
  func stringByAppendingPathComponent(_ path: String) -> String {
    
    let nsSt = self as NSString
    
    return nsSt.appendingPathComponent(path)
  }
}

extension Bundle {
  var releaseVersionNumber: String? {
    return self.infoDictionary?["CFBundleShortVersionString"] as? String
  }
  
  var buildVersionNumber: String? {
    return self.infoDictionary?["CFBundleVersion"] as? String
  }
}

enum RKAdPlacement: Int
{
  case mainMenu = 0, gameOver, mainMenuWithLevelSystem, missionCompleted
}

var adMobBannerID: AnyObject = "12345" as AnyObject
var chartboostAppID: AnyObject = "12345" as AnyObject
var chartboostAppSignature: AnyObject = "12345" as AnyObject
var supersonicAdsApplicationKey: AnyObject = "12345" as AnyObject
var fyberAppID: AnyObject = "12345" as AnyObject
var fyberSecurityToken: AnyObject = "12345" as AnyObject

var mainMenuAdNetwork: AnyObject = "12345" as AnyObject
var gameOverAdNetwork: AnyObject = "12345" as AnyObject
var mainMenuAdNetwork_LevelSystemOnly: AnyObject = "12345" as AnyObject
var missionCompletedAdNetwork_LevelSystemOnly: AnyObject = "12345" as AnyObject

var iAPCustomSecret: AnyObject = "12345" as AnyObject
var iAPNoAdsID: AnyObject = "12345" as AnyObject

var gameCenterLeaderboardID: AnyObject = "12345" as AnyObject

// MARK: == GameData.plist Keys ==
let AdMobBannerIDKey = "AdMobBannerID"
let ChartboostAppIDKey = "ChartboostAppID"
let ChartboostAppSignatureKey = "ChartboostAppSignature"
let SupersonicAdsApplicationKeyKey = "SupersonicAdsApplicationKey"
let FyberAppIDKey = "FyberAppID"
let FyberSecurityTokenKey = "FyberSecurityToken"
let AdFrequencyKey = "AdFrequency"
let MainMenuAdNetworkKey = "MainMenuAdNetwork"
let GameOverAdNetworkKey = "GameOverAdNetwork"
let MainMenuAdNetwork_LevelSystemOnlyKey = "MainMenuAdNetwork_LevelSystemOnly"
let MissionCompletedAdNetwork_LevelSystemOnlyKey = "MissionCompletedAdNetwork_LevelSystemOnly"
let RateAppIDKey = "RateAppID"
let RateDaysUntilPromptKey = "RateDaysUntilPrompt"
let RateUsesUntilPromptKey = "RateUsesUntilPrompt"
let RateRemindPeriodKey = "RateRemindPeriod"
let RatePromptTitleKey = "RatePromptTitle"
let RatePromptMessageKey = "RatePromptMessage"
let RatePromptCancelButtonKey = "RatePromptCancelButton"
let RatePromptRemindButtonKey = "RatePromptRemindButton"
let RatePromptRateButtonKey = "RatePromptRateButton"
let IAPCustomSecretKey = "IAPCustomSecret"
let IAPNoAdsIDKey = "IAPNoAdsID"
let GameCenterLeaderboardIDKey = "GameCenterLeaderboardID"

// MARK: == GameData.plist variables ==
var adFrequency: AnyObject = 1 as AnyObject
var rateAppID: AnyObject = "AppID" as AnyObject
var rateDaysUntilPrompt: AnyObject = 0.0 as AnyObject
var rateUsesUntilPrompt: AnyObject = 3 as AnyObject
var rateRemindPeriod: AnyObject = 1.0 as AnyObject
var ratePromptTitle: AnyObject = "Title" as AnyObject
var ratePromptMessage: AnyObject = "Message" as AnyObject
var ratePromptCancelButton: AnyObject = "No, thanks" as AnyObject
var ratePromptRemindButton: AnyObject = "Remind me later" as AnyObject
var ratePromptRateButton: AnyObject = "Rate" as AnyObject

// MARK: == Score Handling Keys ==
let BestScoreKey = "BestScore"
let IsBestScoreKey = "IsBestScore"
let CurrentScoreKey = "CurrentScore"

// MARK: == Ad Network Keys ==
let AdPlacementCountKey = "AdPlacementCount"

// MARK: == Music & Sounds Handling Keys ==
let MusicAndSoundStateKey = "MusicAndSoundState"

// MARK: == RKColor Enum ==

enum RKColorType: Int
{
  case turquoise = 0, emerald, peterRiver, amethyst, wetAsphalt, sunFlower, carrot, alizarin, clouds, concrete
}

let keyButton0001Locked = "button0001Locked"
let keyButton0002Locked = "button0002Locked"
let keyButton0003Locked = "button0003Locked"
let keyButton0004Locked = "button0004Locked"
let keyButton0005Locked = "button0005Locked"
let keyButton0006Locked = "button0006Locked"
let keyButton0007Locked = "button0007Locked"
let keyButton0008Locked = "button0008Locked"
let keyButton0009Locked = "button0009Locked"
let keyButton0010Locked = "button0010Locked"
let keyButton0011Locked = "button0011Locked"
let keyButton0012Locked = "button0012Locked"
let keyButton0013Locked = "button0013Locked"
let keyButton0014Locked = "button0014Locked"
let keyButton0015Locked = "button0015Locked"
let keyButton0016Locked = "button0016Locked"
let keyButton0017Locked = "button0017Locked"
let keyButton0018Locked = "button0018Locked"
let keyButton0019Locked = "button0019Locked"
let keyButton0020Locked = "button0020Locked"
let keyButton0021Locked = "button0021Locked"
let keyButton0022Locked = "button0022Locked"
let keyButton0023Locked = "button0023Locked"
let keyButton0024Locked = "button0024Locked"
let keyButton0025Locked = "button0025Locked"
let keyButton0026Locked = "button0026Locked"
let keyButton0027Locked = "button0027Locked"
let keyButton0028Locked = "button0028Locked"
let keyButton0029Locked = "button0029Locked"
let keyButton0030Locked = "button0030Locked"
let keyButton0031Locked = "button0031Locked"
let keyButton0032Locked = "button0032Locked"
let keyButton0033Locked = "button0033Locked"

let keyStarsForButton0001 = "starsForButton0001"
let keyStarsForButton0002 = "starsForButton0002"
let keyStarsForButton0003 = "starsForButton0003"
let keyStarsForButton0004 = "starsForButton0004"
let keyStarsForButton0005 = "starsForButton0005"
let keyStarsForButton0006 = "starsForButton0006"
let keyStarsForButton0007 = "starsForButton0007"
let keyStarsForButton0008 = "starsForButton0008"
let keyStarsForButton0009 = "starsForButton0009"
let keyStarsForButton0010 = "starsForButton0010"
let keyStarsForButton0011 = "starsForButton0011"
let keyStarsForButton0012 = "starsForButton0012"
let keyStarsForButton0013 = "starsForButton0013"
let keyStarsForButton0014 = "starsForButton0014"
let keyStarsForButton0015 = "starsForButton0015"
let keyStarsForButton0016 = "starsForButton0016"
let keyStarsForButton0017 = "starsForButton0017"
let keyStarsForButton0018 = "starsForButton0018"
let keyStarsForButton0019 = "starsForButton0019"
let keyStarsForButton0020 = "starsForButton0020"
let keyStarsForButton0021 = "starsForButton0021"
let keyStarsForButton0022 = "starsForButton0022"
let keyStarsForButton0023 = "starsForButton0023"
let keyStarsForButton0024 = "starsForButton0024"
let keyStarsForButton0025 = "starsForButton0025"
let keyStarsForButton0026 = "starsForButton0026"
let keyStarsForButton0027 = "starsForButton0027"
let keyStarsForButton0028 = "starsForButton0028"
let keyStarsForButton0029 = "starsForButton0029"
let keyStarsForButton0030 = "starsForButton0030"
let keyStarsForButton0031 = "starsForButton0031"
let keyStarsForButton0032 = "starsForButton0032"
let keyStarsForButton0033 = "starsForButton0033"

let keyCurrentStars = "currentStars"

let keyCurrentLevel = "currentLevel"

let keyCurrentTimePlayed = "currentTimePlayed"

@objc class RebeloperKitMini: NSObject {
  
  static let sharedInstance = RebeloperKitMini()
  
  fileprivate override init() {
    print("[RebeloperKitMini] RebeloperKitMini Singleton created.")
  }
  
  // MARK: == General Calls ==
  func showRatePrompt() {
    // this can be on a game end
    RateMyApp.sharedInstance.trackAppUsage()
  }
  
  func rateThisApp() {
    RateMyApp.sharedInstance.okButtonPressed()
    print("Rate button tapped. Going to the App Store. If your app is not yet on the App Store nothing will happen, but this is perfectly fine. The app will go to the app's page once it is live on the App Store.")
  }
  
  func buyRemoveAdsIAP() {
    StoreInventory.buyItem(withItemId: NO_ADS_ITEM_ID, andPayload: "noAds")
  }
  
  func restorePurchases() {
    SoomlaStore.getInstance().restoreTransactions()
  }
  
  func showMoreGames() {
    Chartboost.showMoreApps(CBLocationGameOver)
    Chartboost.cacheMoreApps(CBLocationGameOver)
  }
  
  // MARK: == Ad Network ==
  func setAdPlacementCount(_ currentScore: Int) {
    UserDefaults.standard.set(currentScore, forKey: AdPlacementCountKey)
    UserDefaults.standard.synchronize()
  }
  
  func adPlacementCount() -> Int {
    return UserDefaults.standard.integer(forKey: AdPlacementCountKey)
  }
  
  func showChartboostInterstitialAd() {
    print("[RebeloperKitMini] Showing Chartboost ad.")
    Chartboost.showInterstitial(CBLocationGameOver)
    Chartboost.cacheInterstitial(CBLocationGameOver)
  }
  
  func showSupersonicAdsInterstitialAd() {
    print("[RebeloperKitMini] Showing SupersonicAds Interstitial ad.")
    (RootViewControllerInterface.sharedManager() as AnyObject).showSupersonicAdsIS()
  }
  
  func showAdForPlacement(_ adPlacement: RKAdPlacement) {
    if !(StoreInventory.getItemBalance(NO_ADS_ITEM_ID) >= 1) {
      if (adPlacementCount() % Int(adFrequency as! NSNumber) == 0) {
        
        switch adPlacement {
        case RKAdPlacement.mainMenu:
          if UserDefaults.standard.string(forKey: "mainMenuAdNetworkKey") == "Chartboost" {
            if !Chartboost.hasInterstitial(CBLocationGameOver) {
              Chartboost.cacheInterstitial(CBLocationGameOver)
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                print("[RebeloperKitMini] No Chartboost Interstitial is available at the moment. Showing SupersonicAds Interstitial instead.")
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds and no Chartboost Interstitial is available at the moment. Not showing any ads this time.")
              }
            } else {
              print("[RebeloperKitMini] Chartboost Interstitial is available. Starting to show ad.")
              showChartboostInterstitialAd()
            }
          } else {
            if UserDefaults.standard.string(forKey: "mainMenuAdNetworkKey") == "Supersonic" {
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                print("[RebeloperKitMini] SupersonicAds Interstitial is available. Starting to show ad.")
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds Interstitial is available at the moment. Showing Chartboost Interstitial instead.")
                showChartboostInterstitialAd()
              }
            } else {
              if UserDefaults.standard.string(forKey: "mainMenuAdNetworkKey") == "Fyber" {
                print("[RebeloperKitMini] Requesting and Showing Fyber ad. If fill rate is 0 it will not be taken over by another ad network! You will have to manage the ad networks that are in your Fyber dashboard to achieve a good fill rate.")
                (FyberCocos2dHelper.sharedManager() as AnyObject).requestAndShowInterstitial()
              } else {
                print("[RebeloperKitMini] ERROR: Invalid Ad Network name. Please check your GameData.plist file for any typos. Available Ad Netowrk names are: 'Chartboost' , 'Supersonic' or 'Fyber'.")
              }
            }
          }
          
        case RKAdPlacement.gameOver:
          if UserDefaults.standard.string(forKey: "gameOverAdNetworkKey") == "Chartboost" {
            if !Chartboost.hasInterstitial(CBLocationGameOver) {
              Chartboost.cacheInterstitial(CBLocationGameOver)
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                print("[RebeloperKitMini] No Chartboost Interstitial is available at the moment. Showing SupersonicAds Interstitial instead.")
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds and no Chartboost Interstitial is available at the moment. Not showing any ads this time.")
              }
            } else {
              print("[RebeloperKitMini] Chartboost Interstitial is available. Starting to show ad.")
              showChartboostInterstitialAd()
            }
          } else {
            if UserDefaults.standard.string(forKey: "gameOverAdNetworkKey") == "Supersonic" {
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds Interstitial is available at the moment. Showing Chartboost Interstitial instead.")
                showChartboostInterstitialAd()
              }
            } else {
              if UserDefaults.standard.string(forKey: "gameOverAdNetworkKey") == "Fyber" {
                print("[RebeloperKitMini] Requesting and Showing Fyber ad. If fill rate is 0 it will not be taken over by another ad network! You will have to manage the ad networks that are in your Fyber dashboard to achieve a good fill rate.")
                (FyberCocos2dHelper.sharedManager() as AnyObject).requestAndShowInterstitial()
              } else {
                print("[RebeloperKitMini] ERROR: Invalid Ad Network name. Please check your GameData.plist file for any typos. Available Ad Netowrk names are: 'Chartboost' , 'Supersonic' or 'Fyber'.")
              }
            }
          }
          
        case RKAdPlacement.mainMenuWithLevelSystem:
          if UserDefaults.standard.string(forKey: "mainMenuAdNetwork_LevelSystemOnlyKey") == "Chartboost" {
            if !Chartboost.hasInterstitial(CBLocationGameOver) {
              Chartboost.cacheInterstitial(CBLocationGameOver)
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                print("[RebeloperKitMini] No Chartboost Interstitial is available at the moment. Showing SupersonicAds Interstitial instead.")
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds and no Chartboost Interstitial is available at the moment. Not showing any ads this time.")
              }
            } else {
              print("[RebeloperKitMini] Chartboost Interstitial is available. Starting to show ad.")
              showChartboostInterstitialAd()
            }
          } else {
            if UserDefaults.standard.string(forKey: "mainMenuAdNetwork_LevelSystemOnlyKey") == "Supersonic" {
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds Interstitial is available at the moment. Showing Chartboost Interstitial instead.")
                showChartboostInterstitialAd()
              }
            } else {
              if UserDefaults.standard.string(forKey: "mainMenuAdNetwork_LevelSystemOnlyKey") == "Fyber" {
                print("[RebeloperKitMini] Requesting and Showing Fyber ad. If fill rate is 0 it will not be taken over by another ad network! You will have to manage the ad networks that are in your Fyber dashboard to achieve a good fill rate.")
                (FyberCocos2dHelper.sharedManager() as AnyObject).requestAndShowInterstitial()
              } else {
                print("[RebeloperKitMini] ERROR: Invalid Ad Network name. Please check your GameData.plist file for any typos. Available Ad Netowrk names are: 'Chartboost' , 'Supersonic' or 'Fyber'.")
              }
            }
          }
          
        case RKAdPlacement.missionCompleted:
          if UserDefaults.standard.string(forKey: "missionCompletedAdNetwork_LevelSystemOnlyKey") == "Chartboost" {
            if !Chartboost.hasInterstitial(CBLocationGameOver) {
              Chartboost.cacheInterstitial(CBLocationGameOver)
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                print("[RebeloperKitMini] No Chartboost Interstitial is available at the moment. Showing SupersonicAds Interstitial instead.")
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds and no Chartboost Interstitial is available at the moment. Not showing any ads this time.")
              }
            } else {
              print("[RebeloperKitMini] Chartboost Interstitial is available. Starting to show ad.")
              showChartboostInterstitialAd()
            }
          } else {
            if UserDefaults.standard.string(forKey: "missionCompletedAdNetwork_LevelSystemOnlyKey") == "Supersonic" {
              if UserDefaults.standard.bool(forKey: "isSupersonicAdsISAvailable") {
                showSupersonicAdsInterstitialAd()
              } else {
                print("[RebeloperKitMini] No SupersonicAds Interstitial is available at the moment. Showing Chartboost Interstitial instead.")
                showChartboostInterstitialAd()
              }
            } else {
              if UserDefaults.standard.string(forKey: "missionCompletedAdNetwork_LevelSystemOnlyKey") == "Fyber" {
                print("[RebeloperKitMini] Requesting and Showing Fyber ad. If fill rate is 0 it will not be taken over by another ad network! You will have to manage the ad networks that are in your Fyber dashboard to achieve a good fill rate.")
                (FyberCocos2dHelper.sharedManager() as AnyObject).requestAndShowInterstitial()
              } else {
                print("[RebeloperKitMini] ERROR: Invalid Ad Network name. Please check your GameData.plist file for any typos. Available Ad Netowrk names are: 'Chartboost' , 'Supersonic' or 'Fyber'.")
              }
            }
          }
          
        //default:
          //print("uh oh - this shouldn't have happened")
        }
        
        
      } else {
        print("[RebeloperKitMini] Not showing ad because ad frequency is: \(adFrequency) and ad placement count is: \(adPlacementCount())")
      }
      var count = adPlacementCount()
      count += 1
      setAdPlacementCount(count)
    } else {
      print("[RebeloperKitMini] Not showing ad because the `No Ads IAP` has been purchased.")
    }
  }
  
  // MARK: == Score Handling ==
  func registerScore(_ score: Int) {
    if(score > bestScore()) {
      setBestScore(score)
    }
    setCurrentScore(score)
    
    print("[RebeloperKitMini] The best score is: \(bestScore())")
    print("[RebeloperKitMini] The current score is: \(currentScore())")
  }
  
  func setBestScore(_ bestScore: Int) {
    UserDefaults.standard.set(bestScore, forKey: BestScoreKey)
    UserDefaults.standard.set(true, forKey: IsBestScoreKey)
    UserDefaults.standard.synchronize()
  }
  
  func bestScore() -> Int {
    return UserDefaults.standard.integer(forKey: BestScoreKey)
  }
  
  func isBestScore() -> Bool {
    return UserDefaults.standard.bool(forKey: IsBestScoreKey)
  }
  
  func resetIsBestScore() {
    UserDefaults.standard.set(false, forKey: IsBestScoreKey)
  }
  
  func setCurrentScore(_ currentScore: Int) {
    UserDefaults.standard.set(currentScore, forKey: CurrentScoreKey)
    UserDefaults.standard.synchronize()
  }
  
  func currentScore() -> Int {
    return UserDefaults.standard.integer(forKey: CurrentScoreKey)
  }
  
  // MARK: == Music & Sounds Handling ==
  func registerMusicAndSoundState(_ onOrOff: Bool) {
    UserDefaults.standard.set(onOrOff, forKey: MusicAndSoundStateKey)
    UserDefaults.standard.synchronize()
    startOrStopBackgroundMusic()
  }
  
  func musicAndSoundState() -> Bool {
    return UserDefaults.standard.bool(forKey: MusicAndSoundStateKey)
  }
  
  func playBombSound() {
    if musicAndSoundState() {
      OALSimpleAudio.sharedInstance().playEffect("bomb.wav")
      OALSimpleAudio.sharedInstance().preloadEffect("bomb.wav")
    }
  }
  
  func playCoinSound() {
    if musicAndSoundState() {
      OALSimpleAudio.sharedInstance().playEffect("coin.wav")
      OALSimpleAudio.sharedInstance().preloadEffect("coin.wav")
    }
  }
  
  func playHitSound() {
    if musicAndSoundState() {
      OALSimpleAudio.sharedInstance().playEffect("hit.wav")
      OALSimpleAudio.sharedInstance().preloadEffect("hit.wav")
    }
  }
  
  func playTapSound() {
    if musicAndSoundState() {
      OALSimpleAudio.sharedInstance().playEffect("tap.wav")
      OALSimpleAudio.sharedInstance().preloadEffect("tap.wav")
    }
  }
  
  func playWoshSound() {
    if musicAndSoundState() {
      OALSimpleAudio.sharedInstance().playEffect("wosh.wav")
      OALSimpleAudio.sharedInstance().preloadEffect("wosh.wav")
    }
  }
  
  func startOrStopBackgroundMusic() {
    if musicAndSoundState() {
      playBackgroundMusic()
    } else {
      stopBackgroundMusic()
    }
  }
  
  func playBackgroundMusic() {
    OALSimpleAudio.sharedInstance().playBg("BackgroundMusic.mp3", loop: true)
  }
  
  func stopBackgroundMusic() {
    OALSimpleAudio.sharedInstance().stopBg()
  }
  
  // MARK: == Setup ==
  func startRebloperKitMini() {
    print("[RebeloperKitMini] Starting RebeloperKitMini.")
    //registerMusicAndSoundState(true)
    loadGameData()
    setupRateMyApp()
    setAdPlacementCount(1)
  }
  
  func setupRateMyApp() {
    let rate = RateMyApp.sharedInstance
    rate.appID = rateAppID as! String
    //rate.debugEnabled(true)
    rate.promptAfterDays = rateDaysUntilPrompt as! Double
    rate.promptAfterUses = rateUsesUntilPrompt as! Int
    rate.daysBeforeReminding = rateRemindPeriod as! Double
    rate.alertTitle = ratePromptTitle as! String
    rate.alertMessage = ratePromptMessage as! String
    rate.alertCancelTitle = ratePromptCancelButton as! String
    rate.alertRemindLaterTitle = ratePromptRemindButton as! String
    rate.alertOKTitle = ratePromptRateButton as! String
  }
  
  func loadGameData() {
    
    // getting path to GameData.plist
    let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true) as NSArray
    let documentsDirectory = paths[0] as! String
    let path = documentsDirectory.stringByAppendingPathComponent("GameData.plist")
    
    let fileManager = FileManager.default
    
    //check if file exists
    if(!fileManager.fileExists(atPath: path)) {
      // If it doesn't, copy it from the default file in the Bundle
      if let bundlePath = Bundle.main.path(forResource: "GameData", ofType: "plist") {
        
        let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath)
        print("[RebeloperKitMini] Bundle GameData.plist file is --> \(resultDictionary)")
        
        do {
          try fileManager.copyItem(atPath: bundlePath, toPath: path)
        } catch _ {
        }
        print("[RebeloperKitMini] Copying GameData.plist from the App Bundle to App Documents folder.")
      } else {
        print("[RebeloperKitMini] GameData.plist not found. Please, make sure it is part of the bundle.")
      }
    } else {
      print("[RebeloperKitMini] GameData.plist already exits at path.")
      // use this to delete file from documents directory
      //fileManager.removeItemAtPath(path, error: nil)
      
      let currentVersion: String? = Bundle.main.releaseVersionNumber as String!
      let currentSavedVersion: String? = UserDefaults.standard.object(forKey: "kCurrentReleaseVersionNumber") as? String
      
      if currentVersion == currentSavedVersion {
        print("[RebeloperKitMini] The version of the app is the same: Old version: \(currentSavedVersion), new version: \(currentVersion). GameData.plist may stay the same.")
      } else {
        print("[RebeloperKitMini] We have a new version of the app! Old version: \(currentSavedVersion), new version: \(currentVersion)! Replacing GameData.plist with new one.")
        
        do {
          try fileManager.removeItem(atPath: path)
        } catch _ {
        }
        print("[RebeloperKitMini] Deleting old GameData.plist from the App Documents folder.")
        let bundlePath = Bundle.main.path(forResource: "GameData", ofType: "plist")
        let resultDictionary = NSMutableDictionary(contentsOfFile: bundlePath!)
        print("[RebeloperKitMini] New Bundle GameData.plist file is --> \(resultDictionary)")
        
        do {
          try fileManager.copyItem(atPath: bundlePath!, toPath: path)
        } catch _ {
        }
        print("[RebeloperKitMini] Copying new GameData.plist from the App Bundle to App Documents folder.")
        
        // saving new version number
        UserDefaults.standard.set(currentVersion, forKey: "kCurrentReleaseVersionNumber")
        UserDefaults.standard.synchronize()
      }
      
    }
    
    let resultDictionary = NSMutableDictionary(contentsOfFile: path)
    print("[RebeloperKitMini] Loaded GameData.plist file is --> \(resultDictionary)")
    
    let myDict = NSDictionary(contentsOfFile: path)
    
    if let dict = myDict {
      //loading values
      adMobBannerID = dict.object(forKey: AdMobBannerIDKey)! as! NSString
      chartboostAppID = dict.object(forKey: ChartboostAppIDKey)! as! NSString
      chartboostAppSignature = dict.object(forKey: ChartboostAppSignatureKey)! as! NSString
      supersonicAdsApplicationKey = dict.object(forKey: SupersonicAdsApplicationKeyKey)! as! NSString
      fyberAppID = dict.object(forKey: FyberAppIDKey) as! NSString
      fyberSecurityToken = dict.object(forKey: FyberSecurityTokenKey) as! NSString
      adFrequency = dict.object(forKey: AdFrequencyKey)! as AnyObject
      mainMenuAdNetwork = dict.object(forKey: MainMenuAdNetworkKey)! as! NSString
      gameOverAdNetwork = dict.object(forKey: GameOverAdNetworkKey)! as! NSString
      mainMenuAdNetwork_LevelSystemOnly = dict.object(forKey: MainMenuAdNetwork_LevelSystemOnlyKey)! as! NSString
      missionCompletedAdNetwork_LevelSystemOnly = dict.object(forKey: MissionCompletedAdNetwork_LevelSystemOnlyKey)! as! NSString
      
      rateAppID = dict.object(forKey: RateAppIDKey)! as! NSString
      rateDaysUntilPrompt = dict.object(forKey: RateDaysUntilPromptKey)! as AnyObject
      rateUsesUntilPrompt = dict.object(forKey: RateUsesUntilPromptKey)! as AnyObject
      rateRemindPeriod = dict.object(forKey: RateRemindPeriodKey)! as AnyObject
      ratePromptTitle = dict.object(forKey: RatePromptTitleKey)! as AnyObject
      ratePromptMessage = dict.object(forKey: RatePromptMessageKey)! as AnyObject
      ratePromptCancelButton = dict.object(forKey: RatePromptCancelButtonKey)! as AnyObject
      ratePromptRemindButton = dict.object(forKey: RatePromptRemindButtonKey)! as AnyObject
      ratePromptRateButton = dict.object(forKey: RatePromptRateButtonKey)! as AnyObject
      
      iAPCustomSecret = dict.object(forKey: IAPCustomSecretKey)! as! NSString
      iAPNoAdsID = dict.object(forKey: IAPNoAdsIDKey)! as! NSString
      
      gameCenterLeaderboardID = dict.object(forKey: GameCenterLeaderboardIDKey)! as! NSString
      
      
      //...
      
      saveDataToNSUserDefaults()
      
    } else {
      print("[RebeloperKitMini] WARNING: Couldn't create dictionary from GameData.plist! Default values will be used!")
    }
  }
  
  func saveDataToNSUserDefaults() {
    UserDefaults.standard.set(adMobBannerID, forKey: "adMobBannerID")
    UserDefaults.standard.set(chartboostAppID, forKey: "chartboostAppID")
    UserDefaults.standard.set(chartboostAppSignature, forKey: "chartboostAppSignature")
    UserDefaults.standard.set(supersonicAdsApplicationKey, forKey: "supersonicAdsApplicationKey")
    UserDefaults.standard.set(fyberAppID, forKey: "fyberAppIDKey")
    UserDefaults.standard.set(fyberSecurityToken, forKey: "fyberSecurityTokenKey")
    UserDefaults.standard.set(mainMenuAdNetwork, forKey: "mainMenuAdNetworkKey")
    UserDefaults.standard.set(gameOverAdNetwork, forKey: "gameOverAdNetworkKey")
    UserDefaults.standard.set(mainMenuAdNetwork_LevelSystemOnly, forKey: "mainMenuAdNetwork_LevelSystemOnlyKey")
    UserDefaults.standard.set(missionCompletedAdNetwork_LevelSystemOnly, forKey: "missionCompletedAdNetwork_LevelSystemOnlyKey")
    
    UserDefaults.standard.set(iAPCustomSecret, forKey: "iAPCustomSecret")
    UserDefaults.standard.set(iAPNoAdsID, forKey: "iAPNoAdsID")
    
    //NSUserDefaults.standardUserDefaults().setObject(gameCenterLeaderboardID, forKey: "gameCenterLeaderboardID")
    
    UserDefaults.standard.synchronize()
  }
  
  //MARK: == Rebeloper Kit Colors - Flat ==
  func RKColor(_ rKColor: RKColorType) -> CCColor! {
    switch rKColor {
    case RKColorType.turquoise:
      return CCColor(red: 26/255.0, green: 188/255.0, blue: 156/255.0, alpha: 1.0)
    case RKColorType.emerald:
      return CCColor(red: 46/255.0, green: 204/255.0, blue: 113/255.0, alpha: 1.0)
    case RKColorType.peterRiver:
      return CCColor(red: 52/255.0, green: 152/255.0, blue: 219/255.0, alpha: 1.0)
    case RKColorType.amethyst:
      return CCColor(red: 155/255.0, green: 89/255.0, blue: 182/255.0, alpha: 1.0)
    case RKColorType.wetAsphalt:
      return CCColor(red: 52/255.0, green: 73/255.0, blue: 94/255.0, alpha: 1.0)
    case RKColorType.sunFlower:
      return CCColor(red: 241/255.0, green: 196/255.0, blue: 15/255.0, alpha: 1.0)
    case RKColorType.carrot:
      return CCColor(red: 230/255.0, green: 126/255.0, blue: 34/255.0, alpha: 1.0)
    case RKColorType.alizarin:
      return CCColor(red: 231/255.0, green: 76/255.0, blue: 60/255.0, alpha: 1.0)
    case RKColorType.clouds:
      return CCColor(red: 236/255.0, green: 240/255.0, blue: 241/255.0, alpha: 1.0)
    case RKColorType.concrete:
      return CCColor(red: 149/255.0, green: 165/255.0, blue: 166/255.0, alpha: 1.0)
    //default:
      //print("uh oh - this shouldn't have happened")
    }
  }
  
  //MARK: == Checking for Internet Connection ==
  func isConnectedToNetwork() -> Bool {
    
    if Reachability.forInternetConnection().currentReachabilityStatus() == NotReachable {
      return false
    } else {
      return true
    }
    
  }
  
  //MARK: == Show Game Center ==
  func showGameCenter() {
    (RootViewControllerInterface.sharedManager() as AnyObject).openGameCenterFromRootViewController()
  }
  
  //MARK: == Level System ==
  func setupButtonsForFirstLaunch() {
    if !UserDefaults.standard.bool(forKey: "theFirstLaunchOfWorld001") {
      
      UserDefaults.standard.set(0, forKey: keyCurrentLevel)
      
      UserDefaults.standard.set(false, forKey: keyButton0001Locked)
      UserDefaults.standard.set(true, forKey: keyButton0002Locked)
      UserDefaults.standard.set(true, forKey: keyButton0003Locked)
      UserDefaults.standard.set(true, forKey: keyButton0004Locked)
      UserDefaults.standard.set(true, forKey: keyButton0005Locked)
      UserDefaults.standard.set(true, forKey: keyButton0006Locked)
      UserDefaults.standard.set(true, forKey: keyButton0007Locked)
      UserDefaults.standard.set(true, forKey: keyButton0008Locked)
      UserDefaults.standard.set(true, forKey: keyButton0009Locked)
      UserDefaults.standard.set(true, forKey: keyButton0010Locked)
      UserDefaults.standard.set(true, forKey: keyButton0011Locked)
      UserDefaults.standard.set(true, forKey: keyButton0012Locked)
      UserDefaults.standard.set(true, forKey: keyButton0013Locked)
      UserDefaults.standard.set(true, forKey: keyButton0014Locked)
      UserDefaults.standard.set(true, forKey: keyButton0015Locked)
      UserDefaults.standard.set(true, forKey: keyButton0016Locked)
      UserDefaults.standard.set(true, forKey: keyButton0017Locked)
      UserDefaults.standard.set(true, forKey: keyButton0018Locked)
      UserDefaults.standard.set(true, forKey: keyButton0019Locked)
      UserDefaults.standard.set(true, forKey: keyButton0020Locked)
      UserDefaults.standard.set(true, forKey: keyButton0021Locked)
      UserDefaults.standard.set(true, forKey: keyButton0022Locked)
      UserDefaults.standard.set(true, forKey: keyButton0023Locked)
      UserDefaults.standard.set(true, forKey: keyButton0024Locked)
      UserDefaults.standard.set(true, forKey: keyButton0025Locked)
      UserDefaults.standard.set(true, forKey: keyButton0026Locked)
      UserDefaults.standard.set(true, forKey: keyButton0027Locked)
      UserDefaults.standard.set(true, forKey: keyButton0028Locked)
      UserDefaults.standard.set(true, forKey: keyButton0029Locked)
      UserDefaults.standard.set(true, forKey: keyButton0030Locked)
      UserDefaults.standard.set(true, forKey: keyButton0031Locked)
      UserDefaults.standard.set(true, forKey: keyButton0032Locked)
      UserDefaults.standard.set(true, forKey: keyButton0033Locked)
      
      UserDefaults.standard.set(0, forKey: keyStarsForButton0001)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0002)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0003)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0004)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0005)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0006)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0007)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0008)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0009)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0010)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0011)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0012)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0013)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0014)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0015)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0016)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0017)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0018)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0019)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0020)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0021)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0022)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0023)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0024)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0025)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0026)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0027)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0028)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0029)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0030)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0031)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0032)
      UserDefaults.standard.set(0, forKey: keyStarsForButton0033)
      
      // closing first launch
      UserDefaults.standard.set(true, forKey: "theFirstLaunchOfWorld001")
      UserDefaults.standard.synchronize()
    }
  }
  
  func winLevel(_ level: Int, withStarCount: Int) {
    switch level {
      
    case 1:
      UserDefaults.standard.set(false, forKey: keyButton0002Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0001)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0001)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0001)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 2:
      UserDefaults.standard.set(false, forKey: keyButton0003Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0002)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0002)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0002)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 3:
      UserDefaults.standard.set(false, forKey: keyButton0004Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0003)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0003)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0003)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 4:
      UserDefaults.standard.set(false, forKey: keyButton0005Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0004)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0004)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0004)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 5:
      UserDefaults.standard.set(false, forKey: keyButton0006Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0005)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0005)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0005)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 6:
      UserDefaults.standard.set(false, forKey: keyButton0007Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0006)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0006)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0006)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 7:
      UserDefaults.standard.set(false, forKey: keyButton0008Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0007)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0007)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0007)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 8:
      UserDefaults.standard.set(false, forKey: keyButton0009Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0008)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0008)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0008)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 9:
      UserDefaults.standard.set(false, forKey: keyButton0010Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0009)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0009)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0009)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 10:
      UserDefaults.standard.set(false, forKey: keyButton0011Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0010)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0010)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0010)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 11:
      UserDefaults.standard.set(false, forKey: keyButton0012Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0011)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0011)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0011)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 12:
      UserDefaults.standard.set(false, forKey: keyButton0013Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0012)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0012)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0012)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 13:
      UserDefaults.standard.set(false, forKey: keyButton0014Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0013)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0013)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0013)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 14:
      UserDefaults.standard.set(false, forKey: keyButton0015Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0014)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0014)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0014)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 15:
      UserDefaults.standard.set(false, forKey: keyButton0016Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0015)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0015)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0015)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 16:
      UserDefaults.standard.set(false, forKey: keyButton0017Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0016)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0016)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0016)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 17:
      UserDefaults.standard.set(false, forKey: keyButton0018Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0017)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0017)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0017)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 18:
      UserDefaults.standard.set(false, forKey: keyButton0019Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0018)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0018)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0018)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 19:
      UserDefaults.standard.set(false, forKey: keyButton0020Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0019)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0019)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0019)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 20:
      UserDefaults.standard.set(false, forKey: keyButton0021Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0020)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0020)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0020)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 21:
      UserDefaults.standard.set(false, forKey: keyButton0022Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0021)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0021)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0021)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 22:
      UserDefaults.standard.set(false, forKey: keyButton0023Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0022)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0022)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0022)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 23:
      UserDefaults.standard.set(false, forKey: keyButton0024Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0023)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0023)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0023)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 24:
      UserDefaults.standard.set(false, forKey: keyButton0025Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0024)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0024)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0024)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 25:
      UserDefaults.standard.set(false, forKey: keyButton0026Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0025)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0025)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0025)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 26:
      UserDefaults.standard.set(false, forKey: keyButton0027Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0026)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0026)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0026)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 27:
      UserDefaults.standard.set(false, forKey: keyButton0028Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0027)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0027)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0027)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 28:
      UserDefaults.standard.set(false, forKey: keyButton0029Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0028)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0028)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0028)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 29:
      UserDefaults.standard.set(false, forKey: keyButton0030Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0029)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0029)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0029)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 30:
      UserDefaults.standard.set(false, forKey: keyButton0031Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0030)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0030)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0030)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 31:
      UserDefaults.standard.set(false, forKey: keyButton0032Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0031)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0031)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0031)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 32:
      UserDefaults.standard.set(false, forKey: keyButton0033Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0032)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0032)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0032)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
    case 33:
      //NSUserDefaults.standardUserDefaults().setBool(false, forKey: keyButton0033Locked)
      switch withStarCount {
      case 1:
        UserDefaults.standard.set(1, forKey: keyStarsForButton0033)
      case 2:
        UserDefaults.standard.set(2, forKey: keyStarsForButton0033)
      case 3:
        UserDefaults.standard.set(3, forKey: keyStarsForButton0033)
      default:
        print("uh oh - this shouldn't have happened")
      }
      
      
    default:
      print("uh oh - this shouldn't have happened")
    }
    
    
  }
  
  func loseLevel(_ level: Int) {
    switch level {
    case 1:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0001)
    case 2:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0002)
    case 3:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0003)
    case 4:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0004)
    case 5:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0005)
    case 6:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0006)
    case 7:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0007)
    case 8:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0008)
    case 9:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0009)
    case 10:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0010)
    case 11:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0011)
    case 12:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0012)
    case 13:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0013)
    case 14:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0014)
    case 15:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0015)
    case 16:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0016)
    case 17:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0017)
    case 18:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0018)
    case 19:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0019)
    case 20:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0020)
    case 21:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0021)
    case 22:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0022)
    case 23:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0023)
    case 24:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0024)
    case 25:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0025)
    case 26:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0026)
    case 27:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0027)
    case 28:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0028)
    case 29:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0029)
    case 30:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0030)
    case 31:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0031)
    case 32:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0032)
    case 33:
      UserDefaults.standard.set(0, forKey: keyStarsForButton0033)
      
    default:
      print("uh oh - this shouldn't have happened")
    }
  }
}
