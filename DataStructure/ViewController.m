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

    LinkedNode* node1 = [LinkedNode nodeWithValue:1];
    LinkedNode* node2 = [LinkedNode nodeWithValue:2];
    LinkedNode* node3 = [LinkedNode nodeWithValue:3];
    LinkedNode* node4 = [LinkedNode nodeWithValue:4];
    LinkedNode* node5 = [LinkedNode nodeWithValue:5];
    LinkedNode* node6 = [LinkedNode nodeWithValue:6];

    node1.next = node2;
    node2.next = node3;
    node3.next = node4;
    node4.next = node5;
    node5.next = node6;

    LinkedList *list = [[LinkedList alloc] initWithHead:node1];
    NSLog(@"list = %@", list);
}

@end
