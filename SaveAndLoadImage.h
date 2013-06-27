//
//  SaveAndLoadImage.h
//  exercise201130619
//
//  Created by 赵云 on 13-6-21.
//  Copyright (c) 2013年 赵云. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface SaveAndLoadImage : NSObject
{
    NSString *LDSunaoPatha;
}
-(void)saveImage:(NSString*)sender;
-(NSData*)loadImage:(NSString*)filePath;
-(NSString*)returnFilePath;
@end
