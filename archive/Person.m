//
//  Person.m
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#import "Person.h"
#import <objc/runtime.h>
#import "NSObject+Extension.h"

@interface Person ()

{
    NSString *major;
}
@property (nonatomic ,copy) NSString *school;



@end

@implementation Person


-(NSArray *) igorNames
{
    return @[@"major",@"_name"];
}

-(instancetype) initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super init]) {
//        _name  = [aDecoder decodeObjectForKey:@"name"];
//        _sex = [aDecoder decodeObjectForKey:@"ssss"];
//        _phone = [aDecoder decodeObjectForKey:@"phone"];
//        _school = [aDecoder decodeObjectForKey:@"school"];
//        _height = [aDecoder decodeDoubleForKey:@"height"];
        
        // runtime 解档
//        Class c = self.class;
//        while (c && c != [NSObject class]) {
//            unsigned int outCount = 0;
//            Ivar *ivars = class_copyIvarList(c, &outCount);
//            for (NSInteger i = 0 ; i <outCount; i ++) {
//                NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
//                // key ,_name ,_sex ,_height , major
//                if ([[self igorNames] containsObject:key]) {
//                    continue;
//                }
//                id value =    [aDecoder decodeObjectForKey:key];
//                [self setValue:value forKey:key];
//            }
//            free(ivars);
//            c  = [c superclass];
//        }
        [self  decode:aDecoder];
       
          }
    return self;
}

-(void) encodeWithCoder:(NSCoder *)aCoder
{
//    [aCoder encodeObject:_name forKey:@"name"];
//    [aCoder encodeObject:_sex forKey:@"ssss"];
//    [aCoder encodeObject:_phone forKey:@"phone"];
//    [aCoder encodeObject:_school forKey:@"school"];
//    [aCoder encodeDouble:_height forKey:@"height"];
    
    // runtime 归档
//    Class c = self.class;
//    while (c && c != [NSObject class]) {
//        unsigned int outCount = 0;
//        Ivar *ivars = class_copyIvarList(c, &outCount);
//        for (NSInteger i = 0 ; i <outCount; i ++) {
//            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
//            
//            if ([[self igorNames] containsObject:key]) {
//                continue;
//            }
//            id value = [self valueForKey:key];
//            [aCoder encodeObject:value forKey:key];
//        }
//        free(ivars);
//        c = [c superclass];
    [self  encode:aCoder];
//    }
    
    
}

@end
