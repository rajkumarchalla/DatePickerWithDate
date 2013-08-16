//
//  DatePickerWithDateAppDelegate.h
//  DatePickerWithDate
//
//  Created by Chakra on 24/05/11.
//  Copyright 2011 Chakra Interactive Pvt Ltd. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DatePickerWithDateViewController;

@interface DatePickerWithDateAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet DatePickerWithDateViewController *viewController;

@end
