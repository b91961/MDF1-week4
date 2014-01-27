//
//  CurrencyCustomClass.h
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import <Foundation/Foundation.h>

@interface CurrencyCustomClass : NSObject
{
    NSString *symbol;
    NSString *bid;
    NSString *last;
}

-(id)initWithName: (NSString*)rateSymbol rateBid:(NSString*)rateBid rateLast:(NSString*)rateLast;

@property (nonatomic, strong)NSString *symbol;
@property (nonatomic, strong)NSString *bid;
@property (nonatomic, strong)NSString *last;

@end