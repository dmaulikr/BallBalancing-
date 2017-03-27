import Foundation

class MainScene: CCNode {
  
  var moreGamesButton:CCButton!
  var settingsButton: CCButton!
  
  func didLoadFromCCB() {
    print("MainScene loaded.")
    RebeloperKitMini.sharedInstance.showAdForPlacement(RKAdPlacement.mainMenu)
    
    if !useMoreGamesButton {
      moreGamesButton.visible = false
      settingsButton.position = ccp(settingsButton.position.x * 1.513, settingsButton.position.y)
    }
  }
  
  func playButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Gameplay");
    CCDirector.shared().replace(scene);
  }
  
  func settingsButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "Settings");
    CCDirector.shared().replace(scene);
  }
  
  func moreGamesButtonTapped() {
    RebeloperKitMini.sharedInstance.playTapSound()
    RebeloperKitMini.sharedInstance.showMoreGames()
  }
}
