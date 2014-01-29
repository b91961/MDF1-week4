//
//  CurrencyCustomClass.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "CurrencyCustomClass.h"

@implementation CurrencyCustomClass
@synthesize symbol, bid, ask, high, low, direction, last;

-(id)initWithName: (NSString*)rateSymbol rateBid:(NSString*)rateBid rateAsk:(NSString*)rateAsk rateHigh:(NSString*)rateHigh rateLow:(NSString*)rateLow rateDirection:(NSString*)rateDirection rateLast:(NSString*)rateLast
{
    if ((self = [super init]))
    {
        symbol = rateSymbol;
        bid = rateBid;
        ask = rateAsk;
        high = rateHigh;
        low = rateLow;
        direction = rateDirection;
        last = rateLast;
    }
    return self;
}

@end