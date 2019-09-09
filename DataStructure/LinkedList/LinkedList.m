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
@property (nonatomic, strong, readwrite) LinkedNode *trail;

@end

@implementation LinkedList

#pragma mark - Create

- (instancetype)initWithHead:(LinkedNode *)head {
    self = [super init];
    if (self) {
        _head = head;
        _trail = head;
    }
    return self;
}

- (instancetype)initWithValue:(int)value {
    self = [super init];
    if (self) {
        LinkedNode *node = [LinkedNode nodeWithValue:value];
        _head = node;
        _trail = node;
    }
    return self;
}

- (void)addNodeWithValue:(int)value {
    LinkedNode *node = [LinkedNode nodeWithValue:value];
    _trail.next = node;
    _trail = _trail.next;
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

#pragma mark - 链表Function

- (LinkedNode *)reverseSingleLinkedList {
    LinkedNode *prevNode, *currentNode, *reverseNode;
    currentNode = _head;
    while (currentNode) {
        LinkedNode *nextNode = currentNode.next;
        if (nextNode == nil) {
            reverseNode = currentNode;
        }
        currentNode.next = prevNode;
        prevNode = currentNode;
        currentNode = nextNode;
    }
    return reverseNode;
}

- (BOOL)checkCircle {
    if (_head == nil) return NO;
    LinkedNode *fastNode = _head.next;
    LinkedNode *slowNode = _head;
    while (fastNode != nil && fastNode.next != nil) {
        fastNode = fastNode.next.next;
        slowNode = slowNode.next;
        if (fastNode == slowNode) return YES;
    }
    return NO;
}

- (LinkedNode *)mergeSortLists:(LinkedNode *)bNode {
    LinkedNode *aNode = _head;
    // 利用哨兵结点简化实现难度
    LinkedNode *newNode = [LinkedNode nodeWithValue:0];
    LinkedNode *current = newNode;
    while (aNode != nil && bNode != nil) {
        int aValue = aNode.value;
        int bValue = bNode.value;
        if (aValue <= bValue) {
            current.next = aNode;
            aNode = aNode.next;
        } else {
            current.next = bNode;
            bNode = bNode.next;
        }
        current = current.next;
    }
    if (aNode != nil) current.next = aNode;
    if (bNode != nil) current.next = bNode;
    return newNode.next;
}

@end
