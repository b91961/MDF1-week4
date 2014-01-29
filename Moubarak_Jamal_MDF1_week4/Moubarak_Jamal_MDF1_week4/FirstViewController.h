//
//  FirstViewController.h
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/23/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import <UIKit/UIKit.h>
#import "CurrencyCustomClass.h"
#import "DataManager.h"

@interface FirstViewController : UIViewController <NSURLConnectionDataDelegate, NSXMLParserDelegate, UITableViewDataSource, UITableViewDelegate>
{
    DataManager *stringFile;
    
    NSURLRequest *request;
    NSURL *url;
    NSURLConnection *connection;
    NSMutableData *requestData;
    NSMutableString *currencyString;
    NSMutableArray *rates;
    
    NSMutableString *symbol;
    NSMutableString *bid;
    NSMutableString *ask;
    NSMutableString *high;
    NSMutableString *low;
    NSMutableString *direction;
    NSMutableString *last;
    
    NSMutableString *currentElementValue;
    
    IBOutlet UIButton *editButton;
    IBOutlet UITableView *myTableView;
}

@property (weak, nonatomic) IBOutlet UITableView *_myTableView;

-(IBAction)onClick:(id)sender;
-(IBAction)onReload:(id)sender;

@end
