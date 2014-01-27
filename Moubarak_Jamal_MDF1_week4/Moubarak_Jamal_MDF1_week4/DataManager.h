//
//  DataManager.h
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import <Foundation/Foundation.h>

@interface DataManager : NSObject
{
    NSMutableString *currencyString;
}

+(DataManager*)sharedDataManager;

@property (nonatomic, strong)NSMutableString *currencyString;

@end