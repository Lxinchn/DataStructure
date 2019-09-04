//
//  LinkedNode.h
//  DataStructure
//
//  Created by GOGO on 2019/9/4.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LinkedNode : NSObject

@property (nonatomic, assign) int value;
@property (nonatomic, strong, nullable) LinkedNode *next;

- (instancetype)initWithValue:(int)value;
+ (instancetype)nodeWithValue:(int)value;

@end

NS_ASSUME_NONNULL_END
