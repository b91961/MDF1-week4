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
    NSString *ask;
    NSString *high;
    NSString *low;
    NSString *direction;
    NSString *last;

}

-(id)initWithName: (NSString*)rateSymbol rateBid:(NSString*)rateBid rateAsk:(NSString*)rateAsk rateHigh:(NSString*)rateHigh rateLow:(NSString*)rateLow rateDirection:(NSString*)rateDirection rateLast:(NSString*)rateLast;

@property (nonatomic, strong)NSString *symbol;
@property (nonatomic, strong)NSString *bid;
@property (nonatomic, strong)NSString *ask;
@property (nonatomic, strong)NSString *high;
@property (nonatomic, strong)NSString *low;
@property (nonatomic, strong)NSString *direction;
@property (nonatomic, strong)NSString *last;


@end