//
//  SaveAndLoadImage.m
//  exercise201130619
//
//  Created by 赵云 on 13-6-21.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import "SaveAndLoadImage.h"

@implementation SaveAndLoadImage

-(void)saveImage:(NSString*)sender
{
    NSArray *patha=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory=[patha objectAtIndex:0];
    NSLog(@"%@",documentsDirectory);
    NSFileManager *fileManager=[NSFileManager defaultManager];
    
    NSString *LDSunaoDirectory=[documentsDirectory stringByAppendingPathComponent:@"LDSunaoImage"];
    [fileManager createDirectoryAtPath:LDSunaoDirectory withIntermediateDirectories:YES attributes:nil error:nil];
    
    
    LDSunaoPatha=[LDSunaoDirectory stringByAppendingPathComponent:@"001.jpg"];
    
    UIImage *image=[UIImage imageNamed:sender];
    
    [UIImageJPEGRepresentation(image, 1) writeToFile:LDSunaoPatha atomically:YES];
}

-(NSData*)loadImage:(NSString*)filePath
{
    NSData *dat=[NSData dataWithContentsOfFile:filePath];
    return dat;
}

-(NSString*)returnFilePath
{
    NSArray *patha=NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentsDirectory=[patha objectAtIndex:0];
    NSLog(@"%@",documentsDirectory);
    NSString *LDSunaoDirectory=[documentsDirectory stringByAppendingPathComponent:@"LDSunaoImage"];
    NSString *LDSunaoPathb=[LDSunaoDirectory stringByAppendingPathComponent:@"001.jpg"];
    return LDSunaoPathb;
}
@end
