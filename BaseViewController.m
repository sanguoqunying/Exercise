//
//  BaseViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "BaseViewController.h"
#import "ImageViewController.h"
#import "SaveAndLoadImage.h"
@interface BaseViewController ()

@end

@implementation BaseViewController
@synthesize imgViewOne,buttonOne,poper,sender;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)viewWillAppear:(BOOL)animated
{
    imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imgViewOne setFrame:CGRectMake(70, 100, 200, 200)];
    
    
    SaveAndLoadImage *loadImages=[[SaveAndLoadImage alloc] init];
    [imgViewOne setImage:[UIImage imageWithData:[loadImages loadImage:[loadImages returnFilePath]]] forState:UIControlStateNormal];
    
    [imgViewOne addTarget:self action:@selector(imgEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgViewOne];

}

-(void)viewDidDisappear:(BOOL)animated
{
    [imgViewOne removeFromSuperview];
    
    UIButton *buttons=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttons setFrame:CGRectMake(70, 100, 200, 200)];
    
    
    SaveAndLoadImage *loadImages=[[SaveAndLoadImage alloc] init];
    [buttons setImage:[UIImage imageWithData:[loadImages loadImage:[loadImages returnFilePath]]] forState:UIControlStateNormal];
    
    [buttons addTarget:self action:@selector(imgEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttons];
    
    UILabel *labelb=[[UILabel alloc] initWithFrame:CGRectMake(370, 150, 100, 30)];
    [labelb setBackgroundColor:[UIColor blackColor]];
    NSLog(@"%@",self.sender);
    labelb.text=self.sender;
    [self.view addSubview:labelb];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.view setBackgroundColor:[UIColor redColor]];
    self.view.backgroundColor=[UIColor redColor];
    [self.view setFrame:CGRectMake(self.view.frame.size.width*0.2, 0, self.view.frame.size.width*1.2, self.view.frame.size.height)];
    UILabel *labels=[[UILabel alloc] initWithFrame:CGRectMake(0, 0, 5, self.view.frame.size.height)];
    [labels setBackgroundColor:[UIColor grayColor]];
    [self.view addSubview:labels];
    [labels release];
    
    buttonOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [buttonOne setFrame:CGRectMake(700, 30, 73, 43)];
    [buttonOne setTitle:@"返回" forState:UIControlStateNormal];
    [buttonOne addTarget:self action:@selector(buttonEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:buttonOne];
    
    imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imgViewOne setFrame:CGRectMake(70, 100, 200, 200)];


    SaveAndLoadImage *loadImages=[[SaveAndLoadImage alloc] init];
    [imgViewOne setImage:[UIImage imageWithData:[loadImages loadImage:[loadImages returnFilePath]]] forState:UIControlStateNormal];
   
    [imgViewOne addTarget:self action:@selector(imgEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgViewOne];
    
    UILabel *labelb=[[UILabel alloc] initWithFrame:CGRectMake(370, 150, 100, 30)];
    [labelb setBackgroundColor:[UIColor redColor]];
    NSLog(@"%@",self.sender);
    labelb.text=self.sender;
    [self.view addSubview:labelb];
    
    [self performSelectorInBackground:@selector(changeImage) withObject:nil];

       
}

-(void)changeImage
{
    imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imgViewOne setFrame:CGRectMake(70, 100, 200, 200)];
    
    
    SaveAndLoadImage *loadImages=[[SaveAndLoadImage alloc] init];
    [imgViewOne setImage:[UIImage imageWithData:[loadImages loadImage:[loadImages returnFilePath]]] forState:UIControlStateNormal];
    
    [imgViewOne addTarget:self action:@selector(imgEvent:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:imgViewOne];
    
    [self performSelectorOnMainThread:@selector(loadNewImage:) withObject:imgViewOne waitUntilDone:NO];

}

-(void)loadNewImage:(UIButton*)sender
{
    
}

-(void)buttonEvent:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)imgEvent:(id)sender
{
    ImageViewController *imgViews=[[ImageViewController alloc] init];
    poper=[[UIPopoverController alloc] initWithContentViewController:imgViews];
    poper.delegate=self;
    poper.popoverContentSize=CGSizeMake(200, 200);
    [poper presentPopoverFromRect:CGRectMake(50, 50, 220, 300) inView:self.view permittedArrowDirections:UIPopoverArrowDirectionLeft animated:YES];
    
    
    [imgViews release];
}


-(void)dealloc
{
    [poper release];
    poper=nil;

    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
