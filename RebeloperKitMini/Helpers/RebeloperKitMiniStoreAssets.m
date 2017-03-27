//
//  JustAvoidThemStoreAssets.m
//  JustAvoidThem
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

#import "RebeloperKitMiniStoreAssets.h"
//#import "NonConsumableItem.h"
#import "VirtualGood.h"
#import "LifetimeVG.h"
#import "PurchaseWithMarket.h"
#import "MarketItem.h"
#import "Defaults.h"

// Non Consumables
NSString* const NO_ADS_ITEM_ID = @"no_ads";
//NSString* const NO_ADS_PRODUCT_ID = NO_ADS_IAP_ID;

@implementation RebeloperKitMiniStoreAssets

VirtualGood* NO_ADS;

+ (void)initialize {
    
    NO_ADS = [[LifetimeVG alloc] initWithName:@"No Ads" andDescription:@"No more ads." andItemId:NO_ADS_ITEM_ID andPurchaseType:[[PurchaseWithMarket alloc] initWithMarketItem:[[MarketItem alloc] initWithProductId:[[NSUserDefaults standardUserDefaults] objectForKey:@"iAPNoAdsID"] andConsumable:kConsumable andPrice:NO_ADS_PRICE]]];
}

- (int)getVersion {
    return 0;
}

- (NSArray*)virtualCurrencies{
    return nil;
}

- (NSArray*)virtualGoods{
    return @[NO_ADS];
}

- (NSArray*)virtualCurrencyPacks{
    return nil;
}

- (NSArray*)virtualCategories{
    return nil;
}

- (NSArray*)nonConsumableItems{
    return nil;
}

@end

