//
//  Archive.h
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#ifndef Archive_h
#define Archive_h


#define Encode(aCoder)\
Class c = self.class;\
while (c && c != [NSObject class]) {\
    unsigned int outCount = 0;\
    Ivar *ivars = class_copyIvarList(c, &outCount);\
    for (NSInteger i = 0 ; i <outCount; i ++) {\
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];\
        if ([self respondsToSelector:@selector(igorNames)]) {\
            if ([[self performSelector:@selector(igorNames)] containsObject:key]) {\
                continue;\
            }\
        }\
        id value = [self valueForKey:key];\
        [aCoder encodeObject:value forKey:key];\
    }\
    free(ivars);\
    c = [c superclass];\
}


#define DeCode(aCoder)\
Class c = self.class;\
while (c && c != [NSObject class]) {\
    unsigned int outCount = 0;\
    Ivar *ivars = class_copyIvarList(c, &outCount);\
    for (NSInteger i = 0 ; i <outCount; i ++) {\
        NSString *key = [NSString stringWithUTF8String:ivar_getName(ivars[i])];\
        if ([self respondsToSelector:@selector(igorNames)]) {\
            if ([[self performSelector:@selector(igorNames)] containsObject:key]) {\
                continue;\
            }\
        }\
        id value =    [aCoder decodeObjectForKey:key];\
        [self setValue:value forKey:key];\
    }\
    free(ivars);\
    c  = [c superclass];\
}

#endif /* Archive_h */
