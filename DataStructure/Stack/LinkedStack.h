//
//  LinkedStack.h
//  DataStructure
//
//  Created by GOGO on 2019/9/9.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LinkedNode.h"

NS_ASSUME_NONNULL_BEGIN

@interface LinkedStack : NSObject

- (BOOL)isEmpty;
- (void)push:(int)value;
- (int)pop;

@end

NS_ASSUME_NONNULL_END
