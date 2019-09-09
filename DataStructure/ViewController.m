//
//  ViewController.m
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "ViewController.h"
#import "LinkedList.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    LinkedList *list = [[LinkedList alloc] initWithValue:1];
    [list addNodeWithValue:2];
    [list addNodeWithValue:3];
    [list addNodeWithValue:4];
    [list addNodeWithValue:5];
    [list addNodeWithValue:6];
    NSLog(@"list        = %@", list);

//    // 单链表翻转
//    LinkedNode *reverseNode = [list reverseSingleLinkedList];
//    NSLog(@"reverseList = %@", reverseNode);

    // 环检测
    BOOL isCircle = [list checkCircle];
    NSLog(@"isCircle    = %@", @(isCircle));
}

@end
