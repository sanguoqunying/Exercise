//
//  ImageViewController.h
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ImageViewController : UIViewController<UIScrollViewDelegate>
@property(retain,nonatomic) UIScrollView *scrViewOne;
@property(retain,nonatomic) UIButton *imgViewOne;
@property(retain,nonatomic) NSMutableArray *arrayOne;
@end
