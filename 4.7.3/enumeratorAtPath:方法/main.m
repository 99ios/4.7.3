//
//  main.m
//  enumeratorAtPath:方法
//
//  Created by 李维佳 on 2017/3/28.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        NSFileManager *fm = [NSFileManager defaultManager];
        //变更当前目录到桌面Desktop
        NSArray * paths = NSSearchPathForDirectoriesInDomains (NSDesktopDirectory, NSUserDomainMask, YES);
        NSString * desktopPath = [paths objectAtIndex:0];
        [fm changeCurrentDirectoryPath:desktopPath];
        //使用enumeratorAtPath
        NSDirectoryEnumerator *dirEnum = [fm enumeratorAtPath:desktopPath];
        NSString *path;
        while ((path = [dirEnum nextObject]) != nil) {
            NSLog(@"%@",path);
        }
    }
    return 0;
}
