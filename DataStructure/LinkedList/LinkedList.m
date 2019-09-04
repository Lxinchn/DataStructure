//
//  LinkedList.m
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "LinkedList.h"

@interface LinkedList ()

@property (nonatomic, strong, readwrite) LinkedNode *head;

@end

@implementation LinkedList

- (instancetype)initWithHead:(LinkedNode *)head {
    self = [super init];
    if (self) {
        _head = head;
    }
    return self;
}

#pragma mark - Find

- (LinkedNode *)nodeWithValue:(int)value {
    LinkedNode *current = _head;
    while (current && current.value != value) {
        current = current.next;
    }
    return current;
}

- (LinkedNode *)nodeAtIndex:(NSUInteger)index {
    LinkedNode *current = _head;
    NSUInteger position = 0;
    while (current && position != index) {
        current = current.next;
        position++;
    }
    return current;
}

#pragma mark - Insert

- (void)insertNodeWithValue:(int)value {
    LinkedNode *node = [LinkedNode nodeWithValue:value];
    [self insertNode:node];
}

- (void)insertNode:(LinkedNode *)node {
    node.next = _head;
    _head = node;
}

- (void)insertNodeWithValue:(int)value afterNode:(LinkedNode *)node {
    LinkedNode *aNode = [LinkedNode nodeWithValue:value];
    [self insertNode:aNode afterNode:node];
}

- (void)insertNode:(LinkedNode *)aNode afterNode:(LinkedNode *)node {
    aNode.next = node.next;
    node.next = aNode;
}

- (void)insertNodeWithValue:(int)value beforeNode:(LinkedNode *)node {
    LinkedNode *aNode = [LinkedNode nodeWithValue:value];
    [self insertNode:aNode beforeNode:node];
}

- (void)insertNode:(LinkedNode *)aNode beforeNode:(LinkedNode *)node {
    LinkedNode *current = _head;
    while (current.next && current.next != node) {
        current = current.next;
    }
    if (current.next == nil) {
        return;
    }
    aNode.next = node;
    current.next = aNode;
}

#pragma mark - Delete

- (void)deleteNodeWithValue:(int)value {
    LinkedNode *node = [self nodeWithValue:value];
    if (node == nil) return;
    [self deleteNode:node];
}

- (void)deleteNode:(LinkedNode *)node {
    if (_head == nil) return;
    if (node.next) {
        node.value = node.next.value;
        node.next = node.next.next;
        return;
    }
    LinkedNode *current = _head;
    while (current.next && current.next != node) {
        current = current.next;
    }
    current.next = nil;
}

@end
