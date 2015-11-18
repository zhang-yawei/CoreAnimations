//
//  colorDescription.m
//  CoreAnimation
//
//  Created by zhang on 15/11/17.
//  Copyright © 2015年 zhangwei. All rights reserved.
//

#import "colorDescription.h"

@implementation colorDescription


-(instancetype)init
{
    if (self = [super init]) {
        _color = [UIColor colorWithRed:0 green:0 blue:1 alpha:1];
        _name = @"blue";
        
    }
    return self;
}

@end
