//
//  CurrencyCustomClass.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "CurrencyCustomClass.h"

@implementation CurrencyCustomClass
@synthesize symbol, bid, last;

-(id)initWithName: (NSString*)rateSymbol rateBid:(NSString*)rateBid rateLast:(NSString*)rateLast
{
    if ((self = [super init]))
    {
        symbol = rateSymbol;
        bid = rateBid;
        last = rateLast;
    }
    return self;
}

@end