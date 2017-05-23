//
//  NSObject+Extension.h
//  archive
//
//  Created by hong on 17/5/23.
//  Copyright © 2017年 hong. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSObject (Extension)

-(void) decode:(NSCoder *) aCoder;
-(void) encode:(NSCoder *) enCoder;

@end
