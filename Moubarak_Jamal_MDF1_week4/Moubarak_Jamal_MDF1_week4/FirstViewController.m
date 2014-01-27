//
//  FirstViewController.m
//  Moubarak_Jamal_MDF1_week4
//
//  Created by Jamal Moubarak on 1/23/14.
//  Copyright (c) 2014 Jamal Moubarak. All rights reserved.
//  MDF1 project 4

#import "FirstViewController.h"
#import "DetailViewController.h"
#import "CustomCell.h"
#import "CurrencyCustomClass.h"

@interface FirstViewController ()

@end

@implementation FirstViewController

@synthesize _myTableView;

- (void)viewDidLoad
{
    //symbols = nil;
    
    rates = [[NSMutableArray alloc] init];
    
    url = [[NSURL alloc] initWithString:@"http://rates.fxcm.com/RatesXML"];
    
    request = [[NSURLRequest alloc] initWithURL:url];
    if (request != nil)
    {
        connection = [[NSURLConnection alloc] initWithRequest:request delegate:self];
        
        //create our mutableData object
        requestData = [NSMutableData data];
    }
    
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.

    //load my xml data in a string
    [DataManager sharedDataManager];
}

-(IBAction)onClick:(id)sender
{
    // put my tableView into edit mode.
    if ((_myTableView.editing = !_myTableView.isEditing))
    {
        // Change text on edit button when in editing mode to done.
        [editButton setTitle: @"Done" forState:UIControlStateNormal];
    }else
    {
        // Change text on edit button when done editing back to edit.
        [editButton setTitle: @"Edit" forState:UIControlStateNormal];
    }
}

- (void)connection:(NSURLConnection *)connection didReceiveData:(NSData *)data
{
    //check if we have valid data
    if (data != nil)
    {
        //add this data to our existing requestData
        [requestData appendData:data];
    }
}

//this function is called when we have all the data from the request
- (void)connectionDidFinishLoading:(NSURLConnection *)connection
{
    //clear old string of xml data
    currencyString = nil;
    
    NSString *requestString = [[NSString alloc] initWithData:requestData encoding: NSASCIIStringEncoding];
    DataManager *loadFile = [DataManager sharedDataManager];
    if (loadFile != nil)
    {
        currencyString = loadFile.currencyString;
        if (currencyString != nil)
        {
            [currencyString appendString:requestString];
        }
    }
    
    NSData *xmlData = [self GetFileDataFromFile:@"RatesXML.xml"];
    
    NSXMLParser *parser = [[NSXMLParser alloc] initWithData:xmlData];
    if (parser != nil)
    {
        [parser setDelegate:self];
        [parser parse];
    }
        
    NSLog(@"%@", requestString);
    
    [_myTableView reloadData];
    
}

- (void)parser:(NSXMLParser *)parser didStartElement:(NSString *)elementName namespaceURI:(NSString *)namespaceURI qualifiedName:(NSString *)qName attributes:(NSDictionary *)attributeDict
{
    //we are parsing the rates tag
    if ([elementName isEqualToString:@"Rate"])
    {
        NSString *symbol = [attributeDict valueForKey:@"Symbol"];
        NSString *bid = [attributeDict valueForKey:@"Bid"];
        NSString *last = [attributeDict valueForKey:@"Last"];
        
        NSInteger rateItems = [bid intValue];
        
        NSLog(@"Symbol: %@, Bid: %d, Last: %@", symbol, rateItems, last);
        
        CurrencyCustomClass *item = [[CurrencyCustomClass alloc] initWithName:symbol rateBid:bid rateLast:last];
        if (item != nil)
        {
            [rates addObject:item];
        }
    }
}

-(NSData*)GetFileDataFromFile:(NSString*)filename
{
    //clear any previous path
    NSString *filePath = nil;
    
    //create the file manager
    NSFileManager *fileManager = [NSFileManager defaultManager];
    //get the path to the application documents directory
    NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory = [paths objectAtIndex:0];
    filePath = [documentsDirectory stringByAppendingPathComponent:filename];
    
    if ([fileManager fileExistsAtPath:filePath])
    {
        return [NSData dataWithContentsOfFile:filePath];
    }
    //otherwise we return nothing
    return nil;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    // are we in delete mode?
    if (editingStyle == UITableViewCellEditingStyleDelete)
    {
        // remove the data from the data array.
        [rates removeObjectAtIndex:indexPath.row];
        
        // remove the line item from the tableView.
        [tableView deleteRowsAtIndexPaths: [NSArray arrayWithObject:indexPath] withRowAnimation:UITableViewRowAnimationAutomatic];
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    //set number of rows to the amount of objects in the array.
    return [rates count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CustomCell *cell = [tableView dequeueReusableCellWithIdentifier:@"MyCell"];
    if (cell != nil)
    {
        CurrencyCustomClass *currentRates = [rates objectAtIndex:indexPath.row];
        [cell refreshCellWithInfo:currentRates.symbol];
    }
    return cell;
}

// Go to Detail view.
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    DetailViewController *detailViewController = segue.destinationViewController;
    if (detailViewController != nil)
    {
        UITableViewCell *cell = (UITableViewCell*)sender;
        NSIndexPath *indexPath = [_myTableView indexPathForCell:cell];
        
        // get the string from the array based on the item in the table view we clicked on.
        CurrencyCustomClass *currentRates = [rates objectAtIndex:indexPath.row];
        
        detailViewController.currentRates = currentRates;
    }
}

// Unwind Button
-(IBAction)done:(UIStoryboardSegue*)segue
{
    
}

@end
