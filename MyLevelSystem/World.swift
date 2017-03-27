//
//  World.swift
//  RebeloperLevelSystem
//
//  Created by rebeloper on 7/18/15.
//  Copyright (c) 2015 Apportable. All rights reserved.
//

class World: CCNode {
  
  var button0001, button0002, button0003, button0004, button0005, button0006, button0007, button0008, button0009, button0010, button0011, button0012, button0013, button0014, button0015, button0016, button0017, button0018, button0019, button0020, button0021, button0022, button0023, button0024, button0025, button0026, button0027, button0028, button0029, button0030, button0031, button0032, button0033: CCButton!
  
  var stars1ForButton0001, stars2ForButton0001, stars3ForButton0001, stars1ForButton0002, stars2ForButton0002, stars3ForButton0002, stars1ForButton0003, stars2ForButton0003, stars3ForButton0003, stars1ForButton0004, stars2ForButton0004, stars3ForButton0004, stars1ForButton0005, stars2ForButton0005, stars3ForButton0005, stars1ForButton0006, stars2ForButton0006, stars3ForButton0006, stars1ForButton0007, stars2ForButton0007, stars3ForButton0007, stars1ForButton0008, stars2ForButton0008, stars3ForButton0008, stars1ForButton0009, stars2ForButton0009, stars3ForButton0009, stars1ForButton0010, stars2ForButton0010, stars3ForButton0010, stars1ForButton0011, stars2ForButton0011, stars3ForButton0011, stars1ForButton0012, stars2ForButton0012, stars3ForButton0012, stars1ForButton0013, stars2ForButton0013, stars3ForButton0013, stars1ForButton0014, stars2ForButton0014, stars3ForButton0014, stars1ForButton0015, stars2ForButton0015, stars3ForButton0015, stars1ForButton0016, stars2ForButton0016, stars3ForButton0016, stars1ForButton0017, stars2ForButton0017, stars3ForButton0017, stars1ForButton0018, stars2ForButton0018, stars3ForButton0018, stars1ForButton0019, stars2ForButton0019, stars3ForButton0019, stars1ForButton0020, stars2ForButton0020, stars3ForButton0020, stars1ForButton0021, stars2ForButton0021, stars3ForButton0021, stars1ForButton0022, stars2ForButton0022, stars3ForButton0022, stars1ForButton0023, stars2ForButton0023, stars3ForButton0023, stars1ForButton0024, stars2ForButton0024, stars3ForButton0024, stars1ForButton0025, stars2ForButton0025, stars3ForButton0025, stars1ForButton0026, stars2ForButton0026, stars3ForButton0026, stars1ForButton0027, stars2ForButton0027, stars3ForButton0027, stars1ForButton0028, stars2ForButton0028, stars3ForButton0028, stars1ForButton0029, stars2ForButton0029, stars3ForButton0029, stars1ForButton0030, stars2ForButton0030, stars3ForButton0030, stars1ForButton0031, stars2ForButton0031, stars3ForButton0031, stars1ForButton0032, stars2ForButton0032, stars3ForButton0032, stars1ForButton0033, stars2ForButton0033, stars3ForButton0033: CCNode!
  
  //let missionSceneName = "MissionScene"
  
  
  func didLoadFromCCB() {
    print("World created.")
    
    RebeloperKitMini.sharedInstance.setupButtonsForFirstLaunch()
    setupButtons()
    
  }
  
  func setupButtons() {
    
    button0001.enabled = false
    button0002.enabled = false
    button0003.enabled = false
    button0004.enabled = false
    button0005.enabled = false
    button0006.enabled = false
    button0007.enabled = false
    button0008.enabled = false
    button0009.enabled = false
    button0010.enabled = false
    button0011.enabled = false
    button0012.enabled = false
    button0013.enabled = false
    button0014.enabled = false
    button0015.enabled = false
    button0016.enabled = false
    button0017.enabled = false
    button0018.enabled = false
    button0019.enabled = false
    button0020.enabled = false
    button0021.enabled = false
    button0022.enabled = false
    button0023.enabled = false
    button0024.enabled = false
    button0025.enabled = false
    button0026.enabled = false
    button0027.enabled = false
    button0028.enabled = false
    button0029.enabled = false
    button0030.enabled = false
    button0031.enabled = false
    button0032.enabled = false
    button0033.enabled = false
    
    if !UserDefaults.standard.bool(forKey: keyButton0001Locked) {
      button0001.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0001) {
      case 0:
        stars1ForButton0001.visible = false
        stars2ForButton0001.visible = false
        stars3ForButton0001.visible = false
      case 1:
        stars1ForButton0001.visible = true
        stars2ForButton0001.visible = false
        stars3ForButton0001.visible = false
      case 2:
        stars1ForButton0001.visible = false
        stars2ForButton0001.visible = true
        stars3ForButton0001.visible = false
      case 3:
        stars1ForButton0001.visible = false
        stars2ForButton0001.visible = false
        stars3ForButton0001.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0002Locked) {
      button0002.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0002) {
      case 0:
        stars1ForButton0002.visible = false
        stars2ForButton0002.visible = false
        stars3ForButton0002.visible = false
      case 1:
        stars1ForButton0002.visible = true
        stars2ForButton0002.visible = false
        stars3ForButton0002.visible = false
      case 2:
        stars1ForButton0002.visible = false
        stars2ForButton0002.visible = true
        stars3ForButton0002.visible = false
      case 3:
        stars1ForButton0002.visible = false
        stars2ForButton0002.visible = false
        stars3ForButton0002.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0003Locked) {
      button0003.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0003) {
      case 0:
        stars1ForButton0003.visible = false
        stars2ForButton0003.visible = false
        stars3ForButton0003.visible = false
      case 1:
        stars1ForButton0003.visible = true
        stars2ForButton0003.visible = false
        stars3ForButton0003.visible = false
      case 2:
        stars1ForButton0003.visible = false
        stars2ForButton0003.visible = true
        stars3ForButton0003.visible = false
      case 3:
        stars1ForButton0003.visible = false
        stars2ForButton0003.visible = false
        stars3ForButton0003.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0004Locked) {
      button0004.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0004) {
      case 0:
        stars1ForButton0004.visible = false
        stars2ForButton0004.visible = false
        stars3ForButton0004.visible = false
      case 1:
        stars1ForButton0004.visible = true
        stars2ForButton0004.visible = false
        stars3ForButton0004.visible = false
      case 2:
        stars1ForButton0004.visible = false
        stars2ForButton0004.visible = true
        stars3ForButton0004.visible = false
      case 3:
        stars1ForButton0004.visible = false
        stars2ForButton0004.visible = false
        stars3ForButton0004.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0005Locked) {
      button0005.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0005) {
      case 0:
        stars1ForButton0005.visible = false
        stars2ForButton0005.visible = false
        stars3ForButton0005.visible = false
      case 1:
        stars1ForButton0005.visible = true
        stars2ForButton0005.visible = false
        stars3ForButton0005.visible = false
      case 2:
        stars1ForButton0005.visible = false
        stars2ForButton0005.visible = true
        stars3ForButton0005.visible = false
      case 3:
        stars1ForButton0005.visible = false
        stars2ForButton0005.visible = false
        stars3ForButton0005.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0006Locked) {
      button0006.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0006) {
      case 0:
        stars1ForButton0006.visible = false
        stars2ForButton0006.visible = false
        stars3ForButton0006.visible = false
      case 1:
        stars1ForButton0006.visible = true
        stars2ForButton0006.visible = false
        stars3ForButton0006.visible = false
      case 2:
        stars1ForButton0006.visible = false
        stars2ForButton0006.visible = true
        stars3ForButton0006.visible = false
      case 3:
        stars1ForButton0006.visible = false
        stars2ForButton0006.visible = false
        stars3ForButton0006.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0007Locked) {
      button0007.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0007) {
      case 1:
        stars1ForButton0007.visible = true
      case 2:
        stars2ForButton0007.visible = true
      case 3:
        stars3ForButton0007.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0008Locked) {
      button0008.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0008) {
      case 0:
        stars1ForButton0008.visible = false
        stars2ForButton0008.visible = false
        stars3ForButton0008.visible = false
      case 1:
        stars1ForButton0008.visible = true
        stars2ForButton0008.visible = false
        stars3ForButton0008.visible = false
      case 2:
        stars1ForButton0008.visible = false
        stars2ForButton0008.visible = true
        stars3ForButton0008.visible = false
      case 3:
        stars1ForButton0008.visible = false
        stars2ForButton0008.visible = false
        stars3ForButton0008.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0009Locked) {
      button0009.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0009) {
      case 0:
        stars1ForButton0009.visible = false
        stars2ForButton0009.visible = false
        stars3ForButton0009.visible = false
      case 1:
        stars1ForButton0009.visible = true
        stars2ForButton0009.visible = false
        stars3ForButton0009.visible = false
      case 2:
        stars1ForButton0009.visible = false
        stars2ForButton0009.visible = true
        stars3ForButton0009.visible = false
      case 3:
        stars1ForButton0009.visible = false
        stars2ForButton0009.visible = false
        stars3ForButton0009.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0010Locked) {
      button0010.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0010) {
      case 0:
        stars1ForButton0010.visible = false
        stars2ForButton0010.visible = false
        stars3ForButton0010.visible = false
      case 1:
        stars1ForButton0010.visible = true
        stars2ForButton0010.visible = false
        stars3ForButton0010.visible = false
      case 2:
        stars1ForButton0010.visible = false
        stars2ForButton0010.visible = true
        stars3ForButton0010.visible = false
      case 3:
        stars1ForButton0010.visible = false
        stars2ForButton0010.visible = false
        stars3ForButton0010.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0011Locked) {
      button0011.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0011) {
      case 0:
        stars1ForButton0011.visible = false
        stars2ForButton0011.visible = false
        stars3ForButton0011.visible = false
      case 1:
        stars1ForButton0011.visible = true
        stars2ForButton0011.visible = false
        stars3ForButton0011.visible = false
      case 2:
        stars1ForButton0011.visible = false
        stars2ForButton0011.visible = true
        stars3ForButton0011.visible = false
      case 3:
        stars1ForButton0011.visible = false
        stars2ForButton0011.visible = false
        stars3ForButton0011.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0012Locked) {
      button0012.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0012) {
      case 0:
        stars1ForButton0012.visible = false
        stars2ForButton0012.visible = false
        stars3ForButton0012.visible = false
      case 1:
        stars1ForButton0012.visible = true
        stars2ForButton0012.visible = false
        stars3ForButton0012.visible = false
      case 2:
        stars1ForButton0012.visible = false
        stars2ForButton0012.visible = true
        stars3ForButton0012.visible = false
      case 3:
        stars1ForButton0012.visible = false
        stars2ForButton0012.visible = false
        stars3ForButton0012.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0013Locked) {
      button0013.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0013) {
      case 0:
        stars1ForButton0013.visible = false
        stars2ForButton0013.visible = false
        stars3ForButton0013.visible = false
      case 1:
        stars1ForButton0013.visible = true
        stars2ForButton0013.visible = false
        stars3ForButton0013.visible = false
      case 2:
        stars1ForButton0013.visible = false
        stars2ForButton0013.visible = true
        stars3ForButton0013.visible = false
      case 3:
        stars1ForButton0013.visible = false
        stars2ForButton0013.visible = false
        stars3ForButton0013.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0014Locked) {
      button0014.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0014) {
      case 0:
        stars1ForButton0014.visible = false
        stars2ForButton0014.visible = false
        stars3ForButton0014.visible = false
      case 1:
        stars1ForButton0014.visible = true
        stars2ForButton0014.visible = false
        stars3ForButton0014.visible = false
      case 2:
        stars1ForButton0014.visible = false
        stars2ForButton0014.visible = true
        stars3ForButton0014.visible = false
      case 3:
        stars1ForButton0014.visible = false
        stars2ForButton0014.visible = false
        stars3ForButton0014.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0015Locked) {
      button0015.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0015) {
      case 0:
        stars1ForButton0015.visible = false
        stars2ForButton0015.visible = false
        stars3ForButton0015.visible = false
      case 1:
        stars1ForButton0015.visible = true
        stars2ForButton0015.visible = false
        stars3ForButton0015.visible = false
      case 2:
        stars1ForButton0015.visible = false
        stars2ForButton0015.visible = true
        stars3ForButton0015.visible = false
      case 3:
        stars1ForButton0015.visible = false
        stars2ForButton0015.visible = false
        stars3ForButton0015.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0016Locked) {
      button0016.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0016) {
      case 0:
        stars1ForButton0016.visible = false
        stars2ForButton0016.visible = false
        stars3ForButton0016.visible = false
      case 1:
        stars1ForButton0016.visible = true
        stars2ForButton0016.visible = false
        stars3ForButton0016.visible = false
      case 2:
        stars1ForButton0016.visible = false
        stars2ForButton0016.visible = true
        stars3ForButton0016.visible = false
      case 3:
        stars1ForButton0016.visible = false
        stars2ForButton0016.visible = false
        stars3ForButton0016.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0017Locked) {
      button0017.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0017) {
      case 0:
        stars1ForButton0017.visible = false
        stars2ForButton0017.visible = false
        stars3ForButton0017.visible = false
      case 1:
        stars1ForButton0017.visible = true
        stars2ForButton0017.visible = false
        stars3ForButton0017.visible = false
      case 2:
        stars1ForButton0017.visible = false
        stars2ForButton0017.visible = true
        stars3ForButton0017.visible = false
      case 3:
        stars1ForButton0017.visible = false
        stars2ForButton0017.visible = false
        stars3ForButton0017.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0018Locked) {
      button0018.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0018) {
      case 0:
        stars1ForButton0018.visible = false
        stars2ForButton0018.visible = false
        stars3ForButton0018.visible = false
      case 1:
        stars1ForButton0018.visible = true
        stars2ForButton0018.visible = false
        stars3ForButton0018.visible = false
      case 2:
        stars1ForButton0018.visible = false
        stars2ForButton0018.visible = true
        stars3ForButton0018.visible = false
      case 3:
        stars1ForButton0018.visible = false
        stars2ForButton0018.visible = false
        stars3ForButton0018.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0019Locked) {
      button0019.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0019) {
      case 0:
        stars1ForButton0019.visible = false
        stars2ForButton0019.visible = false
        stars3ForButton0019.visible = false
      case 1:
        stars1ForButton0019.visible = true
        stars2ForButton0019.visible = false
        stars3ForButton0019.visible = false
      case 2:
        stars1ForButton0019.visible = false
        stars2ForButton0019.visible = true
        stars3ForButton0019.visible = false
      case 3:
        stars1ForButton0019.visible = false
        stars2ForButton0019.visible = false
        stars3ForButton0019.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0020Locked) {
      button0020.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0020) {
      case 0:
        stars1ForButton0020.visible = false
        stars2ForButton0020.visible = false
        stars3ForButton0020.visible = false
      case 1:
        stars1ForButton0020.visible = true
        stars2ForButton0020.visible = false
        stars3ForButton0020.visible = false
      case 2:
        stars1ForButton0020.visible = false
        stars2ForButton0020.visible = true
        stars3ForButton0020.visible = false
      case 3:
        stars1ForButton0020.visible = false
        stars2ForButton0020.visible = false
        stars3ForButton0020.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0021Locked) {
      button0021.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0021) {
      case 0:
        stars1ForButton0021.visible = false
        stars2ForButton0021.visible = false
        stars3ForButton0021.visible = false
      case 1:
        stars1ForButton0021.visible = true
        stars2ForButton0021.visible = false
        stars3ForButton0021.visible = false
      case 2:
        stars1ForButton0021.visible = false
        stars2ForButton0021.visible = true
        stars3ForButton0021.visible = false
      case 3:
        stars1ForButton0021.visible = false
        stars2ForButton0021.visible = false
        stars3ForButton0021.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0022Locked) {
      button0022.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0022) {
      case 0:
        stars1ForButton0022.visible = false
        stars2ForButton0022.visible = false
        stars3ForButton0022.visible = false
      case 1:
        stars1ForButton0022.visible = true
        stars2ForButton0022.visible = false
        stars3ForButton0022.visible = false
      case 2:
        stars1ForButton0022.visible = false
        stars2ForButton0022.visible = true
        stars3ForButton0022.visible = false
      case 3:
        stars1ForButton0022.visible = false
        stars2ForButton0022.visible = false
        stars3ForButton0022.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0023Locked) {
      button0023.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0023) {
      case 0:
        stars1ForButton0023.visible = false
        stars2ForButton0023.visible = false
        stars3ForButton0023.visible = false
      case 1:
        stars1ForButton0023.visible = true
        stars2ForButton0023.visible = false
        stars3ForButton0023.visible = false
      case 2:
        stars1ForButton0023.visible = false
        stars2ForButton0023.visible = true
        stars3ForButton0023.visible = false
      case 3:
        stars1ForButton0023.visible = false
        stars2ForButton0023.visible = false
        stars3ForButton0023.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0024Locked) {
      button0024.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0024) {
      case 0:
        stars1ForButton0024.visible = false
        stars2ForButton0024.visible = false
        stars3ForButton0024.visible = false
      case 1:
        stars1ForButton0024.visible = true
        stars2ForButton0024.visible = false
        stars3ForButton0024.visible = false
      case 2:
        stars1ForButton0024.visible = false
        stars2ForButton0024.visible = true
        stars3ForButton0024.visible = false
      case 3:
        stars1ForButton0024.visible = false
        stars2ForButton0024.visible = false
        stars3ForButton0024.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0025Locked) {
      button0025.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0025) {
      case 0:
        stars1ForButton0025.visible = false
        stars2ForButton0025.visible = false
        stars3ForButton0025.visible = false
      case 1:
        stars1ForButton0025.visible = true
        stars2ForButton0025.visible = false
        stars3ForButton0025.visible = false
      case 2:
        stars1ForButton0025.visible = false
        stars2ForButton0025.visible = true
        stars3ForButton0025.visible = false
      case 3:
        stars1ForButton0025.visible = false
        stars2ForButton0025.visible = false
        stars3ForButton0025.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0026Locked) {
      button0026.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0026) {
      case 0:
        stars1ForButton0026.visible = false
        stars2ForButton0026.visible = false
        stars3ForButton0026.visible = false
      case 1:
        stars1ForButton0026.visible = true
        stars2ForButton0026.visible = false
        stars3ForButton0026.visible = false
      case 2:
        stars1ForButton0026.visible = false
        stars2ForButton0026.visible = true
        stars3ForButton0026.visible = false
      case 3:
        stars1ForButton0026.visible = false
        stars2ForButton0026.visible = false
        stars3ForButton0026.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0027Locked) {
      button0027.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0027) {
      case 0:
        stars1ForButton0027.visible = false
        stars2ForButton0027.visible = false
        stars3ForButton0027.visible = false
      case 1:
        stars1ForButton0027.visible = true
        stars2ForButton0027.visible = false
        stars3ForButton0027.visible = false
      case 2:
        stars1ForButton0027.visible = false
        stars2ForButton0027.visible = true
        stars3ForButton0027.visible = false
      case 3:
        stars1ForButton0027.visible = false
        stars2ForButton0027.visible = false
        stars3ForButton0027.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0028Locked) {
      button0028.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0028) {
      case 0:
        stars1ForButton0028.visible = false
        stars2ForButton0028.visible = false
        stars3ForButton0028.visible = false
      case 1:
        stars1ForButton0028.visible = true
        stars2ForButton0028.visible = false
        stars3ForButton0028.visible = false
      case 2:
        stars1ForButton0028.visible = false
        stars2ForButton0028.visible = true
        stars3ForButton0028.visible = false
      case 3:
        stars1ForButton0028.visible = false
        stars2ForButton0028.visible = false
        stars3ForButton0028.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0029Locked) {
      button0029.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0029) {
      case 0:
        stars1ForButton0029.visible = false
        stars2ForButton0029.visible = false
        stars3ForButton0029.visible = false
      case 1:
        stars1ForButton0029.visible = true
        stars2ForButton0029.visible = false
        stars3ForButton0029.visible = false
      case 2:
        stars1ForButton0029.visible = false
        stars2ForButton0029.visible = true
        stars3ForButton0029.visible = false
      case 3:
        stars1ForButton0029.visible = false
        stars2ForButton0029.visible = false
        stars3ForButton0029.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0030Locked) {
      button0030.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0030) {
      case 0:
        stars1ForButton0030.visible = false
        stars2ForButton0030.visible = false
        stars3ForButton0030.visible = false
      case 1:
        stars1ForButton0030.visible = true
        stars2ForButton0030.visible = false
        stars3ForButton0030.visible = false
      case 2:
        stars1ForButton0030.visible = false
        stars2ForButton0030.visible = true
        stars3ForButton0030.visible = false
      case 3:
        stars1ForButton0030.visible = false
        stars2ForButton0030.visible = false
        stars3ForButton0030.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0031Locked) {
      button0031.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0031) {
      case 0:
        stars1ForButton0031.visible = false
        stars2ForButton0031.visible = false
        stars3ForButton0031.visible = false
      case 1:
        stars1ForButton0031.visible = true
        stars2ForButton0031.visible = false
        stars3ForButton0031.visible = false
      case 2:
        stars1ForButton0031.visible = false
        stars2ForButton0031.visible = true
        stars3ForButton0031.visible = false
      case 3:
        stars1ForButton0031.visible = false
        stars2ForButton0031.visible = false
        stars3ForButton0031.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0032Locked) {
      button0032.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0032) {
      case 0:
        stars1ForButton0032.visible = false
        stars2ForButton0032.visible = false
        stars3ForButton0032.visible = false
      case 1:
        stars1ForButton0032.visible = true
        stars2ForButton0032.visible = false
        stars3ForButton0032.visible = false
      case 2:
        stars1ForButton0032.visible = false
        stars2ForButton0032.visible = true
        stars3ForButton0032.visible = false
      case 3:
        stars1ForButton0032.visible = false
        stars2ForButton0032.visible = false
        stars3ForButton0032.visible = true
      default:
        break
      }
    }
    
    if !UserDefaults.standard.bool(forKey: keyButton0033Locked) {
      button0033.enabled = true
      switch UserDefaults.standard.integer(forKey: keyStarsForButton0033) {
      case 0:
        stars1ForButton0033.visible = false
        stars2ForButton0033.visible = false
        stars3ForButton0033.visible = false
      case 1:
        stars1ForButton0033.visible = true
        stars2ForButton0033.visible = false
        stars3ForButton0033.visible = false
      case 2:
        stars1ForButton0033.visible = false
        stars2ForButton0033.visible = true
        stars3ForButton0033.visible = false
      case 3:
        stars1ForButton0033.visible = false
        stars2ForButton0033.visible = false
        stars3ForButton0033.visible = true
      default:
        break
      }
    }
  }
  
  func loadMissionScene() {
    RebeloperKitMini.sharedInstance.playTapSound()
    let scene = CCBReader.load(asScene: "MissionScene");
    CCDirector.shared().replace(scene);
  }
  
  func button0001Tapped() {
    print("Button0001 tapped.")
    UserDefaults.standard.set(1, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0002Tapped() {
    print("Button0002 tapped.")
    UserDefaults.standard.set(2, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0003Tapped() {
    print("Button0003 tapped.")
    UserDefaults.standard.set(3, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0004Tapped() {
    print("Button0004 tapped.")
    UserDefaults.standard.set(4, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0005Tapped() {
    print("Button0005 tapped.")
    UserDefaults.standard.set(5, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0006Tapped() {
    print("Button0006 tapped.")
    UserDefaults.standard.set(6, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0007Tapped() {
    print("Button0007 tapped.")
    UserDefaults.standard.set(7, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0008Tapped() {
    print("Button0008 tapped.")
    UserDefaults.standard.set(8, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0009Tapped() {
    print("Button0009 tapped.")
    UserDefaults.standard.set(9, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0010Tapped() {
    print("Button0010 tapped.")
    UserDefaults.standard.set(10, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0011Tapped() {
  print("Button0011 tapped.")
  UserDefaults.standard.set(11, forKey: keyCurrentLevel)
  loadMissionScene()
  }
  
  func button0012Tapped() {
    print("Button0012 tapped.")
    UserDefaults.standard.set(12, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0013Tapped() {
    print("Button0013 tapped.")
    UserDefaults.standard.set(13, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0014Tapped() {
    print("Button0014 tapped.")
    UserDefaults.standard.set(14, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0015Tapped() {
    print("Button0015 tapped.")
    UserDefaults.standard.set(15, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0016Tapped() {
    print("Button0016 tapped.")
    UserDefaults.standard.set(16, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0017Tapped() {
    print("Button0017 tapped.")
    UserDefaults.standard.set(17, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0018Tapped() {
    print("Button0018 tapped.")
    UserDefaults.standard.set(18, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0019Tapped() {
    print("Button0019 tapped.")
    UserDefaults.standard.set(19, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0020Tapped() {
    print("Button0010 tapped.")
    UserDefaults.standard.set(20, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0021Tapped() {
  print("Button0021 tapped.")
  UserDefaults.standard.set(21, forKey: keyCurrentLevel)
  loadMissionScene()
  }
  
  func button0022Tapped() {
    print("Button0022 tapped.")
    UserDefaults.standard.set(22, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0023Tapped() {
    print("Button0023 tapped.")
    UserDefaults.standard.set(23, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0024Tapped() {
    print("Button0024 tapped.")
    UserDefaults.standard.set(24, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0025Tapped() {
    print("Button0025 tapped.")
    UserDefaults.standard.set(25, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0026Tapped() {
    print("Button0026 tapped.")
    UserDefaults.standard.set(26, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0027Tapped() {
    print("Button0027 tapped.")
    UserDefaults.standard.set(27, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0028Tapped() {
    print("Button0028 tapped.")
    UserDefaults.standard.set(28, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0029Tapped() {
    print("Button0029 tapped.")
    UserDefaults.standard.set(29, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0030Tapped() {
    print("Button0030 tapped.")
    UserDefaults.standard.set(30, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0031Tapped() {
    print("Button0031 tapped.")
    UserDefaults.standard.set(31, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0032Tapped() {
    print("Button0032 tapped.")
    UserDefaults.standard.set(32, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
  func button0033Tapped() {
    print("Button0033 tapped.")
    UserDefaults.standard.set(33, forKey: keyCurrentLevel)
    loadMissionScene()
  }
  
}
