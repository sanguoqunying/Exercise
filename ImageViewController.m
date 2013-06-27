//
//  ImageViewController.m
//  exercise201130619
//
//  Created by iFeng on 13-6-19.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "ImageViewController.h"
#import "BaseViewController.h"
#import "ViewController.h"
#import "SaveAndLoadImage.h"
@interface ImageViewController ()

@end

@implementation ImageViewController
@synthesize scrViewOne,imgViewOne,arrayOne;
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
    
    [self.view setFrame:CGRectMake(0, 0, 200, 200)];
    
    self.scrViewOne=[[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, 200, 200)];
    scrViewOne.delegate=self;
    scrViewOne.showsVerticalScrollIndicator=NO;
    scrViewOne.pagingEnabled=YES;
    scrViewOne.contentSize=CGSizeMake(200, 200*8);
    
    self.arrayOne=[NSMutableArray arrayWithObjects:@"001.jpg",@"002.jpg",@"003.jpg",@"004.jpg",@"005.jpg",@"006.jpg",@"007.jpg",@"008.jpg", nil];
    
    for (int i=0; i<8; i++) {
        
        self.imgViewOne=[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.imgViewOne setFrame:CGRectMake(0, 200*i, 200, 200)];
        [self.imgViewOne setImage:[UIImage imageNamed:[arrayOne objectAtIndex:i]] forState:UIControlStateNormal];
        self.imgViewOne.tag=i;
        [self.imgViewOne addTarget:self action:@selector(imgEvents:) forControlEvents:UIControlEventTouchUpInside];
        [scrViewOne addSubview:self.imgViewOne];

    }
    
    [self.view addSubview:self.scrViewOne];
    
    
}

-(void)imgEvents:(id)sender
{
    switch ([sender tag]) {
        case 0:
            NSLog(@"");
            BaseViewController *baseView=[[BaseViewController alloc] init];
            baseView.sender=[self.arrayOne objectAtIndex:0];
            
            SaveAndLoadImage *saveAndLoad=[[SaveAndLoadImage alloc] init];
            [saveAndLoad saveImage:[self.arrayOne objectAtIndex:0]];

            [baseView viewDidLoad];
            break;
        case 1:
            NSLog(@"");
            BaseViewController *baseViewb=[[BaseViewController alloc] init];
            baseViewb.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadb=[[SaveAndLoadImage alloc] init];
            [saveAndLoadb saveImage:[self.arrayOne objectAtIndex:1]];
            
            [baseViewb viewWillAppear:YES];
            break;
        case 2:
            NSLog(@"");
            BaseViewController *baseViewc=[[BaseViewController alloc] init];
            baseViewc.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadc=[[SaveAndLoadImage alloc] init];
            [saveAndLoadc saveImage:[self.arrayOne objectAtIndex:2]];
            
            [baseViewc viewWillAppear:YES];
            break;
        case 3:
            NSLog(@"");
            BaseViewController *baseViewd=[[BaseViewController alloc] init];
            baseViewd.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadd=[[SaveAndLoadImage alloc] init];
            [saveAndLoadd saveImage:[self.arrayOne objectAtIndex:3]];
            
            [baseViewd viewWillAppear:YES];
            break;
        case 4:
            NSLog(@"");
            BaseViewController *baseViewe=[[BaseViewController alloc] init];
            baseViewe.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoade=[[SaveAndLoadImage alloc] init];
            [saveAndLoade saveImage:[self.arrayOne objectAtIndex:4]];
            
            [baseViewe viewWillAppear:YES];
            break;
        case 5:
            NSLog(@"");
            BaseViewController *baseViewf=[[BaseViewController alloc] init];
            baseViewf.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadf=[[SaveAndLoadImage alloc] init];
            [saveAndLoadf saveImage:[self.arrayOne objectAtIndex:5]];
            
            [baseViewf viewWillAppear:YES];
            break;
        case 6:
            NSLog(@"");
            BaseViewController *baseViewg=[[BaseViewController alloc] init];
            baseViewg.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadg=[[SaveAndLoadImage alloc] init];
            [saveAndLoadg saveImage:[self.arrayOne objectAtIndex:6]];
            
            [baseViewg viewWillAppear:YES];
            break;
        case 7:
            NSLog(@"");
            BaseViewController *baseViewh=[[BaseViewController alloc] init];
            baseViewh.sender=[self.arrayOne objectAtIndex:1];
            
            SaveAndLoadImage *saveAndLoadh=[[SaveAndLoadImage alloc] init];
            [saveAndLoadh saveImage:[self.arrayOne objectAtIndex:7]];
            
            [baseViewh viewWillAppear:YES];
            break;
        default:
            break;
    }
}

-(void)dealloc
{
    [scrViewOne release];
    scrViewOne=nil;
    
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
