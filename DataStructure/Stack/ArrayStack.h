//
//  ArrayStack.h
//  DataStructure
//
//  Created by GOGO on 2019/9/9.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

/**
 顺序栈
 */
@interface ArrayStack : NSObject

- (instancetype)initWithCapacity:(NSUInteger)count;

- (BOOL)isEmpty;
- (BOOL)isFull;

- (NSUInteger)size;

- (BOOL)push:(id)obj;
- (id)pop;

@end

NS_ASSUME_NONNULL_END
