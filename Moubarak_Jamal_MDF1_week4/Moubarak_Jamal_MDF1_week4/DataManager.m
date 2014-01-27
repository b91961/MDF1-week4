//
//  DataManager.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "DataManager.h"

@implementation DataManager

@synthesize currencyString;

static DataManager* _sharedDataManager = nil;

+(DataManager*)sharedDataManager
{
    if (!_sharedDataManager)
    {
        _sharedDataManager = [[self alloc] init];
    }
    return _sharedDataManager;
}

-(id)init
{
    if ((self = [super init]))
    {
        currencyString = [[NSMutableString alloc] init];
    }
    return self;
}

@end
