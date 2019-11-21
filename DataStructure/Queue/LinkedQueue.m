//
//  LinkedQueue.m
//  DataStructure
//
//  Created by GOGO on 2019/11/20.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "LinkedQueue.h"

@interface LinkedQueue ()

@property (nonatomic, strong) LinkedNode *front;
@property (nonatomic, strong) LinkedNode *rear;
@property (nonatomic, assign) int count;

@end

@implementation LinkedQueue

- (instancetype)init {
    self = [super init];
    if (self) {
        _front = nil;
        _rear = nil;
        _count = 0;
    }
    return self;
}

- (BOOL)enQueue:(int)obj {
    if (_count == 0) {
        LinkedNode *node = [LinkedNode nodeWithValue:obj];
        _front = node;
        _rear = node;
    } else {
        LinkedNode *node = [LinkedNode nodeWithValue:obj];
        _rear.next = node;
        _rear = node;
    }
    _count++;
    return YES;
}

- (LinkedNode *)deQueue {
    _count--;
    if (_count <= 0) {
        _front = nil;
        _rear = nil;
        return nil;
    } else {
        LinkedNode *node = _front;
        _front = _front.next;
        return node;
    }
}

@end
