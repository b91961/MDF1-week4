//
//  SecondViewController.h
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/23/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "CurrencyCustomClass.h"
#import "DataManager.h"

@interface SecondViewController : UIViewController <UITextViewDelegate>
{
    DataManager *xmlString;
    
    IBOutlet UITextView *xmlRawData;
}
@end
