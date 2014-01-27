//
//  SecondViewController.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/23/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad
{
    //grab data from singleton
    xmlString = [DataManager sharedDataManager];
    
    //create a local string
    NSMutableString *localXmlString = xmlString.currencyString;
    
    //load local string into UITextView
    xmlRawData.text = localXmlString;
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
