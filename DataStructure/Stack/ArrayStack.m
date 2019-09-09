//
//  ArrayStack.m
//  DataStructure
//
//  Created by GOGO on 2019/9/9.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "ArrayStack.h"

@interface ArrayStack ()

@property (nonatomic, strong) NSMutableArray *array;    // 数组
@property (nonatomic, assign) NSUInteger capacity;      // 栈容量
@property (nonatomic, assign) NSUInteger count;         // 栈中元素个数

@end

@implementation ArrayStack

- (instancetype)initWithCapacity:(NSUInteger)count {
    self = [super init];
    if (self) {
        _capacity = count;
        _array = [[NSMutableArray alloc] initWithCapacity:count];
        _count = 0;
    }
    return self;
}

- (BOOL)isEmpty {
    return _count == 0;
}

- (BOOL)isFull {
    return _count == _capacity;
}

- (NSUInteger)size {
    return _count;
}

- (BOOL)push:(id)obj {
    if (!obj) {
        return NO;
    }
    if (_count == _capacity) {
        return NO;
    }
    [_array addObject:obj];
    return YES;
}

- (id)pop {
    if (_count == 0) {
        return nil;
    }
    id obj = _array[_count - 1];
    _count--;
    [_array removeLastObject];
    return obj;
}

@end
