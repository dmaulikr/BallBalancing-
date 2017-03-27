//
//  FyberCocos2dHelper.h
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

#import <Foundation/Foundation.h>

#import "FyberSDK.h"
#import "FYBLogger.h"

@interface FyberCocos2dHelper : NSObject <FYBInterstitialControllerDelegate, FYBRewardedVideoControllerDelegate, FYBVirtualCurrencyClientDelegate> {
  UIViewController *rootViewController;
}

@property (nonatomic, retain) UIViewController *rootViewController;

#pragma mark -
#pragma mark Singleton Methods

+ (id)sharedManager;

- (void) presentViewController:(UIViewController*)controller animated:(BOOL)animated;

- (void)requestAndShowInterstitial;
- (void)requestAndShowRewardedVideo;
- (void)showOfferWall;
- (void)sendDeltaOfCoinsRequest;
- (void)removeAllFyberLoggers:(BOOL)yesNo;

@end
