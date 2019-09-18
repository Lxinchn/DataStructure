//
//  ViewController.m
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "ViewController.h"
#import "LinkedList.h"
#import "Sort.h"            // 排序
#import "BinarySearch.h"    // 二分查找

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

//    LinkedList *list = [[LinkedList alloc] initWithValue:1];
//    [list addNodeWithValue:2];
//    [list addNodeWithValue:3];
//    [list addNodeWithValue:4];
//    [list addNodeWithValue:5];
//    [list addNodeWithValue:6];
//    NSLog(@"list        = %@", list);

//    // 单链表翻转
//    LinkedNode *reverseNode = [list reverseSingleLinkedList];
//    NSLog(@"reverseList = %@", reverseNode);

//    // 环检测
//    BOOL isCircle = [list checkCircle];
//    NSLog(@"isCircle    = %@", @(isCircle));

//    // 冒泡/插入/选择排序
//    NSMutableArray *array = [NSMutableArray arrayWithCapacity:100];
//    for (int i = 0; i < 100; i++) {
//        [array addObject:@(rand() % 100)];
//    }
//    NSArray *bubbleArray = [Sort bubbleSortWithArray:array];
//    NSArray *insertArray = [Sort insertSortWithArray:array];
//    NSArray *selectArray = [Sort selectSortWithArray:array];

//    // 二分查找
//    NSMutableArray *arr = [NSMutableArray arrayWithCapacity:100];
//    for (int i = 0; i < 100; i++) {
//        [arr addObject:[NSNumber numberWithInt:i]];
//    }
//    int target = [BinarySearch binarySearchWithArray:arr.copy target:77];
//    NSLog(@"target = %d", target);

    // 查找第一个值等于给定值的元素
    // 查找最后一个值等于给定值的元素
    NSArray *array = @[@1, @2, @4, @5, @6, @8, @8, @8, @11, @18];
    int target1 = [BinarySearch firstBinarySearchWithArray:array target:8];
    int target2 = [BinarySearch lastBinarySearchWithArray:array target:8];
    int target3 = [BinarySearch firstBiggerBinarySearchWithArray:array target:7];
    int target4 = [BinarySearch lastSmallerBinarySearchWithArray:array target:7];
    NSLog(@"target = %d", target1);
}

@end
