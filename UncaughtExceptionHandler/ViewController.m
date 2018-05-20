//
//  ViewController.m
//  UncaughtExceptionHandler
//
//  Created by 嘚嘚以嘚嘚 on 2018/5/20.
//  Copyright © 2018年 嘚嘚以嘚嘚. All rights reserved.
//

#import "ViewController.h"
#import "UncaughtExceptionHandler.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //    [self performSelector:@selector(string) withObject:nil afterDelay:2.0];

    //获取OCCrash里面所有文件
    NSString * _libPath  = [[NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES) objectAtIndex:0] stringByAppendingPathComponent:@"OCCrash"];
    
    NSFileManager *defaultManager = [NSFileManager defaultManager];
    [defaultManager contentsOfDirectoryAtPath:_libPath error:nil];
    NSLog(@"-----%@",     [defaultManager contentsOfDirectoryAtPath:_libPath error:nil]);
    
    //    sleep(3);
    //
    //删除所有文件
    NSFileManager *fileManager = [NSFileManager defaultManager];
    
    BOOL res=[fileManager removeItemAtPath:_libPath error:nil];
    
    NSLog(@"文件是否存在: %@",[fileManager isExecutableFileAtPath:_libPath]?@"YES":@"NO");
    NSLog(@"===-----%@",     [defaultManager contentsOfDirectoryAtPath:_libPath error:nil]);
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
