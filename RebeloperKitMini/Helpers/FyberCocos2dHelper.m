//
//  FyberCocos2dHelper.m
//  FyberCocos2d
/*
 * Copyright (c) 2016 Rebeloper. All rights reserved.
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

#import "FyberCocos2dHelper.h"
#import "AppDelegate.h"

#define CUSTOM_CHUPAMOBILE_PARAMETER_KEY @"chupamobile"
#define CUSTOM_CHUPAMOBILE_PARAMETER_VALUE @"chupamobile"

@implementation FyberCocos2dHelper

@synthesize rootViewController;

#pragma mark -
#pragma mark Singleton Methods

+ (id)sharedManager {
  static FyberCocos2dHelper *sharedMyManager = nil;
  @synchronized(self) {
    if (sharedMyManager == nil)
      sharedMyManager = [[self alloc] init];
  }
  return sharedMyManager;
}

-(void) presentViewController:(UIViewController*)controller animated:(BOOL)animated {
  [rootViewController presentViewController:controller animated:animated completion:^{
    NSLog(@"[FyberCocos2dHelper] rootViewControllerInterFace presented");
  }];
}

#pragma mark Fyber Calls
- (void)requestAndShowInterstitial
{
  NSLog(@"[FyberCocos2dHelper] Requesting Interstitial ... Please wait ...");
  
  // Get the Interstitial Controller
  FYBInterstitialController *interstitialController = [FyberSDK interstitialController];
  
  // Set the delegate of the controller in order to be notified of the controller's state changes
  interstitialController.delegate = self;
  
  // Request an Interstitial
  FYBRequestParameters *parameters = [[FYBRequestParameters alloc] init];
  
  // Add an optional Placement ID or Custom Parameters to your request
  // parameters.placementId = @"PLACEMENT_ID";
  // [parameters addCustomParameterWithKey:@"param1Key" value:@"param1Value"];
  
  [interstitialController requestInterstitialWithParameters:parameters];
}

- (void)showInterstitial
{
  // Show the received interstitial
  NSLog(@"[FyberCocos2dHelper] Showing the received Interstitial");
  [[FyberSDK interstitialController] presentInterstitialFromViewController:rootViewController];
}

- (void)requestAndShowRewardedVideo
{
  NSLog(@"[FyberCocos2dHelper] Requesting Rewarded Video ... Please wait ...");
  
  // Get the Rewarded Video Controller
  FYBRewardedVideoController *rewardedVideoController = [FyberSDK rewardedVideoController];
  
  // Set the delegate of the controller in order to be notified of the controller's state changes
  rewardedVideoController.delegate = self;
  
  // Enable or disable a "toast" message shown to the user after the video is fully watched
  rewardedVideoController.shouldShowToastOnCompletion = YES;
  
  // Set the controller's virtualCurrencyClientDelegate to request virtual currency automatically requested after the user engagement
  rewardedVideoController.virtualCurrencyClientDelegate = self;
  
  // Request a Rewarded Video
  FYBRequestParameters *parameters = [[FYBRequestParameters alloc] init];
  
  // Add an optional Placement ID, Currency ID or Custom Parameters to your request
  // parameters.placementId = @"PLACEMENT_ID";
  // parameters.currencyId = @"CURRENCY_ID";
  
  // set Custom Chupamobile Parameter
  [parameters addCustomParameterWithKey:CUSTOM_CHUPAMOBILE_PARAMETER_KEY value:CUSTOM_CHUPAMOBILE_PARAMETER_VALUE];
  
  [rewardedVideoController requestVideoWithParameters:parameters];
}

- (void)showRewardedVideo
{
  // Play the received rewarded video
  NSLog(@"[FyberCocos2dHelper] Showing the received Rewarded Video");
  [[FyberSDK rewardedVideoController] presentRewardedVideoFromViewController:rootViewController];
}

- (void)showOfferWall
{
  NSLog(@"[FyberCocos2dHelper] Showing Offer Wall");
  
  // Create an instance of the FYBOfferWallViewController
  FYBOfferWallViewController *offerWallViewController = [[FYBOfferWallViewController alloc] init];
  
  // Show a close button while the Offer Wall is loading
  offerWallViewController.showCloseButtonOnLoad = YES;
  
  // Dismiss the Offer Wall when the user leaves your application
  offerWallViewController.shouldDismissOnRedirect = YES;
  
  // set Custom Chupamobile Parameter
  FYBRequestParameters *parameters = [[FYBRequestParameters alloc] init];
  [parameters addCustomParameters:@{CUSTOM_CHUPAMOBILE_PARAMETER_KEY: CUSTOM_CHUPAMOBILE_PARAMETER_VALUE}];
  
  // Show the Offer Wall
  [offerWallViewController presentFromViewController:rootViewController parameters:parameters animated:YES completion:^{
    // Code executed when the Offer Wall is presented
    NSLog(@"[FyberCocos2dHelper] Offer Wall presented");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"didPresentOfferWall" object:nil];
  } dismiss:^(NSError *error) {
    // Code executed when the Offer Wall is dismissed
    NSLog(@"[FyberCocos2dHelper] Offer Wall is dismissed");
    [[NSNotificationCenter defaultCenter] postNotificationName:@"didDismissOfferWall" object:nil];
  }];
  
}

- (void)sendDeltaOfCoinsRequest
{
  FYBVirtualCurrencyClient *virtualCurrencyClient = [FyberSDK virtualCurrencyClient];
  virtualCurrencyClient.delegate = self;
  [virtualCurrencyClient requestDeltaOfCoins];
}

#pragma mark FYBInterstitialControllerDelegate - Request Interstitial

- (void)interstitialControllerDidReceiveInterstitial:(FYBInterstitialController *)interstitialController
{
  NSLog(@"[FyberCocos2dHelper] Did receive Interstitial");
  [[FyberCocos2dHelper sharedManager] showInterstitial];
}

- (void)interstitialController:(FYBInterstitialController *)interstitialController didFailToReceiveInterstitialWithError:(NSError *)error
{
  NSLog(@"[FyberCocos2dHelper] Did not receive any Interstitials with error: %@", error);
}


#pragma mark FYBInterstitialControllerDelegate  - Show Interstitial

- (void)interstitialControllerDidPresentInterstitial:(FYBInterstitialController *)interstitialController
{
  NSLog(@"[FyberCocos2dHelper] Interstitial Presented");
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didPresentInterstitial" object:nil];
}

- (void)interstitialController:(FYBInterstitialController *)interstitialController didDismissInterstitialWithReason:(FYBInterstitialControllerDismissReason)reason
{
  NSLog(@"[FyberCocos2dHelper] Interstitial Dismissed");
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didDismissInterstitial" object:nil];
}

- (void)interstitialController:(FYBInterstitialController *)interstitialController didFailToPresentInterstitialWithError:(NSError *)error
{
  NSLog(@"[FyberCocos2dHelper] Interstitial Failed to Present with error: %@", error);
}


#pragma mark FYBRewardedVideoControllerDelegate - Request Video

- (void)rewardedVideoControllerDidReceiveVideo:(FYBRewardedVideoController *)rewardedVideoController
{
  NSLog(@"[FyberCocos2dHelper] Did receive Rewarded Video");
  [[FyberCocos2dHelper sharedManager] showRewardedVideo];
}

- (void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didFailToReceiveVideoWithError:(NSError *)error
{
  NSLog(@"[FyberCocos2dHelper] Did not receive any Rewarded Video with error: %@", error);
}


#pragma mark FYBRewardedVideoControllerDelegate - Show Video

- (void)rewardedVideoControllerDidStartVideo:(FYBRewardedVideoController *)rewardedVideoController
{
  NSLog(@"[FyberCocos2dHelper] Video Started");
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didStartRewardedVideo" object:nil];
}

- (void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didDismissVideoWithReason:(FYBRewardedVideoControllerDismissReason)reason
{
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didDismissRewardedVideo" object:nil];
  
  switch (reason) {
      
    case FYBRewardedVideoControllerDismissReasonError:
      // error during playing
      NSLog(@"[FyberCocos2dHelper] Rewarded Video Dismissed - error during playing");
      break;
    case FYBRewardedVideoControllerDismissReasonUserEngaged:
      // user was engaged
      NSLog(@"[FyberCocos2dHelper] Rewarded Video Dismissed - user was engaged");
      break;
    case FYBRewardedVideoControllerDismissReasonAborted:
      // user aborted video
      NSLog(@"[FyberCocos2dHelper] Rewarded Video Dismissed - user aborted video");
      break;
  }
}

- (void)rewardedVideoController:(FYBRewardedVideoController *)rewardedVideoController didFailToStartVideoWithError:(NSError *)error
{
  NSLog(@"[FyberCocos2dHelper] Rewarded Video Failed to Start with error: %@", error);
}


#pragma mark - FYBVirtualCurrencyClientDelegate

- (void)virtualCurrencyClient:(FYBVirtualCurrencyClient *)client didReceiveResponse:(FYBVirtualCurrencyResponse *)response
{
  [[NSUserDefaults standardUserDefaults] setInteger:@(response.deltaOfCoins).integerValue forKey:@"earnedCurrencyAmount"];
  [[NSUserDefaults standardUserDefaults] setObject:response.currencyName forKey:@"earnedCurrenyName"];
  [[NSUserDefaults standardUserDefaults] synchronize];
  
  NSLog(@"[FyberCocos2dHelper] Received %@ %@", @(response.deltaOfCoins), response.currencyName);
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didReceiveVirtualCurrency" object:nil];
}

- (void)virtualCurrencyClient:(FYBVirtualCurrencyClient *)client didFailWithError:(NSError *)error
{
  NSLog(@"[FyberCocos2dHelper] Failed to receive virtual currency with error: %@", error);
  [[NSNotificationCenter defaultCenter] postNotificationName:@"didFailToReceiveVirtualCurrency" object:nil];
}

#pragma mark - FYBLogger - Remove logs

- (void)removeAllFyberLoggers:(BOOL)yesNo
{
  if (yesNo) {
    FYBLogSetLevel(FYBLogLevelOff);
  }
}

@end