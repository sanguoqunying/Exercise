//
//  ButtonViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "ButtonViewController.h"
#import "BaseViewController.h"
@interface ButtonViewController ()

@end

@implementation ButtonViewController
@synthesize scrViewOne,buttonOne,baseView;
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.view.backgroundColor=[UIColor blackColor];
//    baseView=[[UIView alloc] initWithFrame:CGRectMake(0, 0, 1024*0.9, self.view.frame.size.height)];
//    self.view=baseView;
    
    
    scrViewOne=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width*0.2, self.view.frame.size.height)];
    scrViewOne.delegate=self;
    scrViewOne.indicatorStyle=UIScrollViewIndicatorStyleWhite;
    scrViewOne.showsVerticalScrollIndicator=NO;
    scrViewOne.contentSize=CGSizeMake(self.view.frame.size.width*0.2, self.view.frame.size.height*1.02);
    [self.view addSubview:scrViewOne];
    
    for (int i=0; i<5; i++) {
        buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [buttonOne setFrame:CGRectMake(35, 70+120*i, 73, 73)];
        buttonOne.tag=i;
        [buttonOne addTarget:self action:@selector(buttonOneEvent:) forControlEvents:UIControlEventTouchUpInside];
        [scrViewOne addSubview:buttonOne];
    }
    
    BaseViewController *firstview=[[BaseViewController alloc] init];
    [self.view addSubview:firstview.view];
    
}

-(void)buttonOneEvent:(id)sender
{
    BaseViewController *firstview=[[BaseViewController alloc] init];
    switch ([sender tag]) {
        case 0:
            [self.view addSubview:firstview.view];
            break;
            
        default:
            break;
    }
    
    
    
    [firstview release];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)dealloc
{
    
    [scrViewOne release];
    scrViewOne=nil;
//    [baseView release];
//    baseView=nil;
    [super dealloc];
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

@end
