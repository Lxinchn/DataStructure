//
//  LinkedListTest.m
//  DataStructureTests
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "LinkedNode.h"
#import "LinkedList.h"

@interface LinkedListTest : XCTestCase {
    LinkedList *_list;
    NSArray *_nodes;
}

@end

@implementation LinkedListTest

- (void)setUp {
    // Put setup code here. This method is called before the invocation of each test method in the class.
    [super setUp];

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

    _list = [[LinkedList alloc] init];
    _list.head = node1;
    _nodes = [NSArray arrayWithObjects:node1, node2, node3, node4, node5, node6, nil];
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testNodeWithValue {
    XCTAssertEqualObjects([_list nodeWithValue:1], _list.head);
    XCTAssertNil([_list nodeWithValue:10]);
}

- (void)testExample {
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests
}

//- (void)testPerformanceExample {
//    // This is an example of a performance test case.
//    [self measureBlock:^{
//        // Put the code you want to measure the time of here.
//    }];
//}

@end
