//
//  DatePickerWithDateViewController.h
//  DatePickerWithDate
//
//  Created by Chakra on 24/05/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DatePickerWithDateViewController : UIViewController {
    
    IBOutlet UIDatePicker *datePicker;
    IBOutlet UILabel *datelabel;
 
}

@property(nonatomic,retain) UIDatePicker *datePicker;
@property(nonatomic,retain) IBOutlet UILabel *datelabel;

@end
