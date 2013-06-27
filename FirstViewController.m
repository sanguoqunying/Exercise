//
//  FirstViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "FirstViewController.h"
#import "SaveAndLoadImage.h"
@interface FirstViewController ()

@end

@implementation FirstViewController

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
    self.view.backgroundColor=[UIColor whiteColor];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    UILabel *labels=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, self.view.frame.size.height)];
    [labels setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels];
    [labels release];

    
    SaveAndLoadImage *saveAndLoad=[[SaveAndLoadImage alloc] init];
    UIImageView *imgViews=[[UIImageView alloc] initWithFrame:CGRectMake(200, 200, 200, 200)];
    imgViews.image=[UIImage imageWithData:[saveAndLoad loadImage:[saveAndLoad returnFilePath]]];
    [self.view addSubview:imgViews];
    [imgViews release];

	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
