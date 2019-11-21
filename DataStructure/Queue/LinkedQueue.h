//
//  LinkedQueue.h
//  DataStructure
//
//  Created by GOGO on 2019/11/20.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedQueue : NSObject

- (instancetype)init;

- (BOOL)enQueue:(int)obj;
- (LinkedNode *)deQueue;

@end

NS_ASSUME_NONNULL_END
