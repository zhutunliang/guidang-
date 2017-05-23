//
//  ViewController.m
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#import "ViewController.h"
#import "Person.h"

@interface ViewController ()

@end

@implementation ViewController




- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
#pragma 将 既定类型的对象 归档 接档 ，遵循<NSCoding> 协议
//    NSString *name = @"张三";
    NSString *homePath = NSHomeDirectory();
   NSString *path =   [homePath stringByAppendingPathComponent:@"/Library/Caches/archive"];
//    [NSKeyedArchiver archiveRootObject:name toFile:path];
// [NSKeyedUnarchiver unarchiveObjectWithFile:path];
    
    
#pragma 将自定义类型规定 接档 手动遵循<NSCoding> 协议
    Person *p = [Person new];
    p.name = @"hello kitty";
    p.sex  = @"male";
    p.phone = @"123456";
    [p setValue:@"NUPT" forKey:@"school"];
    [p setValue:@"maths" forKey:@"major"];
    p.height = 123.4;
    NSLog(@"%@",p);
    NSString *path2 =   [homePath stringByAppendingPathComponent:@"/Library/Caches/archive2"];

    [NSKeyedArchiver archiveRootObject:p toFile:path2];
 Person *p2 =   [NSKeyedUnarchiver unarchiveObjectWithFile:path2];
    NSLog(@"%@",p2);
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
