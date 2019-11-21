//
//  ArrayQueue.h
//  DataStructure
//
//  Created by GOGO on 2019/11/20.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/// 环形队列(顺序队列)
@interface ArrayQueue : NSObject

- (instancetype)initWithCapacity:(NSUInteger)count;

- (BOOL)enQueue:(id)obj;
- (id)deQueue;

@end

NS_ASSUME_NONNULL_END
