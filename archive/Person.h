//
//  Person.h
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject <NSCoding>

// 归档接档  区分 私有 公有吗？ 私有公有 都可以归档接档，在外面可以通过kVC赋值 读取
// 如果不是字符串类型呢 ，分类型 归档接档。
// 私有的 更私有的？ 也一样，只是

@property (nonatomic ,copy) NSString *name;
@property (nonatomic ,copy) NSString *sex;
@property (nonatomic ,copy) NSString *phone;
#pragma double 类型
@property (nonatomic ,assign) double height;





@end
