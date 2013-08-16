//
//  DatePickerWithDateViewController.m
//  DatePickerWithDate
//
//  Created by Chakra on 24/05/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import "DatePickerWithDateViewController.h"

@implementation DatePickerWithDateViewController

@synthesize datePicker;

@synthesize datelabel;

- (void)dealloc
{
    [super dealloc];
    [datelabel release];
     [datePicker release];
    
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle


// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    datelabel = [[UILabel alloc] init]; 
    datelabel.frame = CGRectMake(10, 200, 300, 40);
    datelabel.backgroundColor = [UIColor clearColor];
    datelabel.textColor = [UIColor whiteColor];
    datelabel.font = [UIFont fontWithName:@"Verdana-Bold" size: 20.0];
    datelabel.textAlignment = UITextAlignmentCenter;
	
	
	NSDateFormatter *df = [[NSDateFormatter alloc] init];
    
	df.dateStyle = NSDateFormatterLongStyle;
    
	datelabel.text = [NSString stringWithFormat:@"%@",[df stringFromDate:[NSDate date]]];
    
	[df release];
    
	[self.view addSubview:datelabel];
    
	[datelabel release];
	
	
	datePicker = [[UIDatePicker alloc] initWithFrame:CGRectMake(0, 250, 325, 300)];
	datePicker.datePickerMode =UIDatePickerModeDateAndTime;
	datePicker.hidden = NO;
	datePicker.date = [NSDate date];
   
	[datePicker addTarget:self action:@selector(LabelChange:) forControlEvents:UIControlEventValueChanged];
    
	[self.view addSubview:datePicker];
    
    [datePicker release];
    
    
}

- (void)LabelChange:(id)sender
{
	NSDateFormatter *df = [[NSDateFormatter alloc] init];
    
   	df.dateStyle = NSDateFormatterFullStyle;
    
	datelabel.text = [NSString stringWithFormat:@"%@",[df stringFromDate:datePicker.date]];
    
    NSLog(@"date is %@",datelabel.text);
}


- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
