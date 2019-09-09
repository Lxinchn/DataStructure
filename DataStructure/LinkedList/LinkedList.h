//
//  LinkedList.h
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedList : NSObject

/** head */
@property (nonatomic, strong, readonly) LinkedNode *head;

/**
 创建
 */
- (instancetype)initWithHead:(LinkedNode *)head;
- (instancetype)initWithValue:(int)value;
- (void)addNodeWithValue:(int)value;

/**
 查询
 */
- (nullable LinkedNode *)nodeWithValue:(int)value;
- (nullable LinkedNode *)nodeAtIndex:(NSUInteger)index;

/**
 插入
 */
- (void)insertNodeWithValue:(int)value;
- (void)insertNode:(nonnull LinkedNode *)node;
- (void)insertNodeWithValue:(int)value afterNode:(nonnull LinkedNode *)node;
- (void)insertNode:(nonnull LinkedNode *)aNode afterNode:(nonnull LinkedNode *)node;
- (void)insertNodeWithValue:(int)value beforeNode:(nonnull LinkedNode *)node;
- (void)insertNode:(nonnull LinkedNode *)aNode beforeNode:(nonnull LinkedNode *)node;

/**
 删除
 */
- (void)deleteNodeWithValue:(int)value;
- (void)deleteNode:(nonnull LinkedNode *)node;

/**
 单链表翻转
 */
- (LinkedNode *)reverseSingleLinkedList;
/**
 环检测
 */
- (BOOL)checkCircle;

/**
 两个有序链表合并
 */
- (LinkedNode *)mergeSortLists:(LinkedNode *)bNode;

@end

NS_ASSUME_NONNULL_END
