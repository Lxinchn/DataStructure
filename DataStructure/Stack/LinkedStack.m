//
//  LinkedStack.m
//  DataStructure
//
//  Created by GOGO on 2019/9/9.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "LinkedStack.h"

@interface LinkedStack ()

@property (nonatomic, strong) LinkedNode *top;

@end

@implementation LinkedStack

- (instancetype)init {
    self = [super init];
    if (self) {
        _top = nil;
    }
    return self;
}

- (BOOL)isEmpty {
    return _top == nil;
}

- (void)push:(int)value {
    LinkedNode *node = [LinkedNode nodeWithValue:value];
    node.next = _top;
    _top = node;
}

- (int)pop {
    if (_top == nil) {
        [NSException raise:NSRangeException format:@"The stack is empty."];
    }
    int value = _top.value;
    _top = _top.next;
    return value;
}

@end
