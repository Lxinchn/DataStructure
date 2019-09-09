//
//  LinkedNode.m
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "LinkedNode.h"

@implementation LinkedNode

- (instancetype)initWithValue:(int)value {
    self = [super init];
    if (self) {
        _value = value;
    }
    return self;
}

+ (instancetype)nodeWithValue:(int)value {
    return [[self alloc] initWithValue:value];
}

@end
