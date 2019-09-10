//
//  Sort.h
//  DataStructure
//
//  Created by GOGO on 2019/9/10.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sort : NSObject

/** 冒泡排序 */
+ (NSArray *)bubbleSortWithArray:(NSArray *)array;
/** 插入排序 */
+ (NSArray *)insertSortWithArray:(NSArray *)array;
/** 选择排序 */
+ (NSArray *)selectSortWithArray:(NSArray *)array;

@end

NS_ASSUME_NONNULL_END
