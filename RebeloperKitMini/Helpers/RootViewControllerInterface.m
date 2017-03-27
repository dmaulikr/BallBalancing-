//
//  RootViewControllerInterface.m
//  FlappyBlueprintTwo
/*
 * Copyright (c) 2014 Rebeloper. All rights reserved.
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

#import "RootViewControllerInterface.h"
#import "AppDelegate.h"

@implementation RootViewControllerInterface

@synthesize rootViewController;

#pragma mark -
#pragma mark Singleton Methods

+ (id)sharedManager {
  static RootViewControllerInterface *sharedMyManager = nil;
  @synchronized(self) {
    if (sharedMyManager == nil)
      sharedMyManager = [[self alloc] init];
  }
  return sharedMyManager;
}

-(void) presentViewController:(UIViewController*)controller animated:(BOOL)animated {
  [rootViewController presentViewController:controller animated:animated completion:^{
    NSLog(@"...rootViewControllerInterFace presented");
  }];
}

- (void) openGameCenterFromRootViewController {
  
  NSLog(@"Opening Game Center.");
  
  if ([[GameCenterManager sharedManager] checkGameCenterAvailability]) {
    [[GameCenterManager sharedManager] presentLeaderboardsOnViewController:rootViewController];
  } else {
    NSLog(@"Game Center is unavailable.");
    
    UIAlertController * alert=   [UIAlertController
                                  alertControllerWithTitle:@"Game Center is unavailable."
                                  message:@"Check your internet connection and/or log in from the Game Center app."
                                  preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction* ok = [UIAlertAction
                         actionWithTitle:@"OK"
                         style:UIAlertActionStyleDefault
                         handler:^(UIAlertAction * action)
                         {
                           [alert dismissViewControllerAnimated:YES completion:nil];
                           
                         }];
    
    [alert addAction:ok];
    
    [rootViewController presentViewController:alert animated:YES completion:nil];
  }
  
  //[[GameCenterManager sharedManager] presentLeaderboardsOnViewController:rootViewController];
  //[[GameCenterManager sharedManager] presentAchievementsOnViewController:rootViewController];
}

- (void) presentUIActivityViewController:(NSString *) message {
  
  // friendly reminder
  NSLog(@"IMPORTANT: The Mail Composer crashes in the Simulator! However it is working perfectly fine on a real device. Please, test it on your device.");
  
  // getting saved screenshot
  NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory,
                                                       NSUserDomainMask, YES);
  NSString *documentsDirectory = [paths objectAtIndex:0];
  NSString* path = [documentsDirectory stringByAppendingPathComponent:
                    @"screenshot.png" ];
  
  NSArray *objectsToShare = @[message];
  
  if (path != nil) {
    UIImage* image = [UIImage imageWithContentsOfFile:path];
    if (image != nil) {
      objectsToShare = @[message, image];
    }
  }
  
  UIActivityViewController *controller = [[UIActivityViewController alloc] initWithActivityItems:objectsToShare applicationActivities:nil];
  
  //if iPhone
  if (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone) {
    [rootViewController presentViewController:controller
                                     animated:YES
                                   completion:^{
                                     NSLog(@"UIActivityViewController presented.");
                                   }];
  }
  //if iPad
  else {
    // Change Rect to position Popover
    UIPopoverController *popup = [[UIPopoverController alloc] initWithContentViewController:controller];
    [popup presentPopoverFromRect:CGRectMake(rootViewController.view.frame.size.width/2, rootViewController.view.frame.size.height/4, 0, 0)inView:rootViewController.view permittedArrowDirections:UIPopoverArrowDirectionAny animated:YES];
  }
  
  controller.completionWithItemsHandler = ^(NSString *activityType, BOOL completed, NSArray *returnedItems, NSError *activityError) {
    dispatch_async(dispatch_get_main_queue(), ^{
      NSLog(@"Activity Status: %@", activityType);
      [AppController deleteScreenshot];
    });
    if (completed)
    {
      NSLog(@"The Activity: %@ was completed", activityType);
    }
    else
    {
      NSLog(@"The Activity: %@ was NOT completed", activityType);
    }
    
  };
}

- (void) showSupersonicAdsIS {
  [[Supersonic sharedInstance] showISWithViewController:rootViewController];
}

//------------------------------------------------------------------------------------------------------------//
//------- GameCenter Manager Delegate ------------------------------------------------------------------------//
//------------------------------------------------------------------------------------------------------------//
#pragma mark - GameCenter Manager Delegate

- (void)gameCenterManager:(GameCenterManager *)manager authenticateUser:(UIViewController *)gameCenterLoginController {
  /*
   [self presentViewController:gameCenterLoginController animated:YES completion:^{
   NSLog(@"Finished Presenting Authentication Controller");
   }];*/
  
  [[RootViewControllerInterface sharedManager] presentViewController:gameCenterLoginController animated:YES];
  NSLog(@"Finished Presenting Authentication Controller");
}

@end