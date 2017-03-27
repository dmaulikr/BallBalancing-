//
//  Tappable.swift
//  BalanceTheBall
//
//  Created by SANDOR NAGY on 05/10/15.
//  Copyright © 2015 Apportable. All rights reserved.
//

class Tappable: CCSprite {
  
  func didLoadFromCCB() {
    
  }
  
  // on Enter
  override func onEnter() {
    // enabling touches
    isUserInteractionEnabled = true
  }
  
  // touch handler
  override func touchBegan(_ touch: CCTouch!, with event: CCTouchEvent!) {
    print("Coin tapped.")
    self.visible = false
    NotificationCenter.default.post(name: Notification.Name(rawValue: "addPoints"), object: nil)
  }
}
