//
//  Defaults.h
//  RebeloperKitMini
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

#ifndef RebeloperKitMini_Defaults_h
#define RebeloperKitMini_Defaults_h

#define isOrientationPortrait [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortrait || [[UIApplication sharedApplication] statusBarOrientation] == UIInterfaceOrientationPortraitUpsideDown

#define IS_IPHONE (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPhone)
#define IS_IPAD (UI_USER_INTERFACE_IDIOM() == UIUserInterfaceIdiomPad)
#define IS_WIDESCREEN ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )568 ) < DBL_EPSILON )
#define IS_IPHONE_5 ( IS_IPHONE && IS_WIDESCREEN )

#define IS_WIDESCREEN_6 ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )667 ) < DBL_EPSILON )
#define IS_IPHONE_6 ( IS_IPHONE && IS_WIDESCREEN_6 )

#define IS_WIDESCREEN_6_PLUS ( fabs( ( double )[ [ UIScreen mainScreen ] bounds ].size.height - ( double )736 ) < DBL_EPSILON )
#define IS_IPHONE_6_PLUS ( IS_IPHONE && IS_WIDESCREEN_6_PLUS )

//NSString* adMobBannerID;

//NSString *iAPCustomSecret;
//NSString *iAPNoAdsID;
static float const NO_ADS_PRICE = 0.99;

//NSString* gameCenterLeaderboardID;

//NSString* chartboostAppID;
//NSString* chartboostAppSignature;

//NSString* kamcordDeveloperKey;
//NSString* kamcordDeveloperSecret;
//NSString* kamcordGameName;

#endif
