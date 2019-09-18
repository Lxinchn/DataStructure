//
//  BinarySearch.h
//  DataStructure
//
//  Created by Lxin on 2019/9/18.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface BinarySearch : NSObject
/// 二分查找
+ (int)binarySearchWithArray:(NSArray *)array target:(int)target;
/// 第一个等于给定值的元素
+ (int)firstBinarySearchWithArray:(NSArray *)array target:(int)target;
/// 最后一个等于给定值的元素
+ (int)lastBinarySearchWithArray:(NSArray *)array target:(int)target;
/// 查找第一个大于等于给定值的元素
+ (int)firstBiggerBinarySearchWithArray:(NSArray *)array target:(int)target;
/// 查找最后一个小于等于给定值的元素
+ (int)lastSmallerBinarySearchWithArray:(NSArray *)array target:(int)target;
@end

NS_ASSUME_NONNULL_END
