//
//  BaseViewController.h
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseViewController : UIViewController<UIPopoverControllerDelegate>
@property(retain,nonatomic) UIButton *imgViewOne;
@property(retain,nonatomic) UIButton *buttonOne;
@property(retain,nonatomic) UIPopoverController *poper;
@property(retain,nonatomic) NSString *sender;
@end
