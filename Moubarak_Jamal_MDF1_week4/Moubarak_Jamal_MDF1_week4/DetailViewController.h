//
//  DetailViewController.h
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import <UIKit/UIKit.h>
#import "CurrencyCustomClass.h"

@interface DetailViewController : UIViewController
{
    IBOutlet UILabel *titleLabel;
    IBOutlet UILabel *secondaryLabel;
    IBOutlet UILabel *information2Label;
}

@property (nonatomic, strong)CurrencyCustomClass *currentRates;

@end