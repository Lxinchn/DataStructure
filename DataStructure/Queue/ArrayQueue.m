//
//  ArrayQueue.m
//  DataStructure
//
//  Created by GOGO on 2019/11/20.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "ArrayQueue.h"

@interface ArrayQueue ()

@property (nonatomic, strong) NSMutableArray *array;    // 数组
@property (nonatomic, assign) NSUInteger capacity;      // 队列容量
@property (nonatomic, assign) NSUInteger front;         // 队头
@property (nonatomic, assign) NSUInteger rear;          // 队尾

@end

@implementation ArrayQueue

- (instancetype)initWithCapacity:(NSUInteger)count {
    self = [super init];
    if (self) {
        _array = [[NSMutableArray alloc] initWithCapacity:count];
        _capacity = count;
        _front = 0;
        _rear = 0;
    }
    return self;
}

- (BOOL)enQueue:(id)obj {
    if ((_rear + 1) % _capacity == _front) {
        return NO;
    }
    _array[_rear] = obj;
    _rear = (_rear + 1) % _capacity;
    return YES;
}

- (id)deQueue {
    if (_front == _rear) {
        return nil;
    }
    id obj = _array[_front];
    _front = (_front + 1) % _capacity;
    return obj;
}

@end
