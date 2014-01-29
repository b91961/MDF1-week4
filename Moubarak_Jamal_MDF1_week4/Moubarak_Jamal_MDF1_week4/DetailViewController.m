//
//  DetailViewController.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/24/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "DetailViewController.h"
#import "CustomCell.h"

@interface DetailViewController ()

@end

@implementation DetailViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];

	// Do any additional setup after loading the view.
}

- (void)viewWillAppear:(BOOL)animated
{
    NSString *bidString = [NSString stringWithFormat:@"Bid: %@", self.currentRates.bid];
    NSString *askString = [NSString stringWithFormat:@"Ask: %@", self.currentRates.ask];
    NSString *highString = [NSString stringWithFormat:@"High: %@", self.currentRates.high];
    NSString *lowString = [NSString stringWithFormat:@"Low: %@", self.currentRates.low];
    NSString *directionString = [NSString stringWithFormat:@"Direction: %@", self.currentRates.direction];
    NSString *lastString = [NSString stringWithFormat:@"Last Time: %@", self.currentRates.last];
    
    titleLabel.text = self.currentRates.symbol;
    secondaryLabel.text = bidString;
    information2Label.text = askString;
    information3Label.text = highString;
    information4Label.text = lowString;
    information5Label.text = directionString;
    information6Label.text = lastString;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end