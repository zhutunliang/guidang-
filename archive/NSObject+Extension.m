//
//  NSObject+Extension.m
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#import "NSObject+Extension.h"
#import "Archive.h"
#import <objc/runtime.h>

/*
  runtime 归档 解档
 
 runtime 可以检索到任何一个属性 成员变量，取值 或 赋值。区别在于，在.m 以{}声明的成员变量的 key 不带_. 以@property 声明的属性 无论 私有 公有 ，都可以 将每个成员变量名转换为C字符串类型。
 获得某个类的所有成员变量（outCount 会返回成员变量的总数）
 
 即使基本数据类型，也用kvc方式 赋值 取值 。
 
 参数：
 1、哪个类
 2、放一个接收值的地址，用来存放属性的个数
 3、返回值：存放所有获取到的属性，通过下面两个方法可以调出名字和类型
 Ivar *class_copyIvarList(Class cls , unsigned int *outCount)
 class_copyIvarList 是一个指针，
 
 获得成员变量的名字
 const char *ivar_getName(Ivar v)
 获得成员变量的类型
 const char *ivar_getTypeEndcoding(Ivar v)

 
 注意，下面的代码我换了一个方法名（不然会覆盖系统原来的方法！），
 加了一个忽略属性方法是否被实现的判断，
 并加上了对父类属性的归解档循环。
 
 
 */

@implementation NSObject (Extension)

-(void) encode:(NSCoder *)aCoder
{
    Encode(aCoder);
//    Class c = self.class;
//    while (c && c != [NSObject class]) {
//        unsigned int outCount = 0;
//        Ivar *ivars = class_copyIvarList(c, &outCount);
//        for (NSInteger i = 0 ; i <outCount; i ++) {
//            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
//            
//            if ([self respondsToSelector:@selector(igorNames)]) {
//                if ([[self performSelector:@selector(igorNames)] containsObject:key]) {
//                    continue;
//                }
//            }
//            
//            id value = [self valueForKey:key];
//            [aCoder encodeObject:value forKey:key];
//        }
//        free(ivars);
//        c = [c superclass];
//    }

}


-(void) decode:(NSCoder *)aCoder
{
    DeCode(aCoder);
    
//    Class c = self.class;
//    while (c && c != [NSObject class]) {
//        unsigned int outCount = 0;
//        Ivar *ivars = class_copyIvarList(c, &outCount);
//        for (NSInteger i = 0 ; i <outCount; i ++) {
//            NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];
//            // key ,_name ,_sex ,_height , major
//            if ([self respondsToSelector:@selector(igorNames)]) {
//                if ([[self performSelector:@selector(igorNames)] containsObject:key]) {
//                    continue;
//                }
//            }
//            id value =    [aCoder decodeObjectForKey:key];
//            [self setValue:value forKey:key];
//        }
//        free(ivars);
//        c  = [c superclass];
//    }

    
}


@end
