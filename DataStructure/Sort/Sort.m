//
//  Sort.m
//  DataStructure
//
//  Created by GOGO on 2019/9/10.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "Sort.h"

@implementation Sort

+ (NSArray *)bubbleSortWithArray:(NSArray *)array {
    if (array.count == 0) {
        return array;
    }
    NSMutableArray *arrM = array.mutableCopy;

    for (int i = 0; i < array.count - 1; i++) {
        BOOL flag = NO; // 提前结束标记
        for (int j = 0; j < array.count - i - 1; j++) {
            NSInteger value1 = [arrM[j] integerValue];
            NSInteger value2 = [arrM[j + 1] integerValue];
            if (value1 > value2) {
                [arrM exchangeObjectAtIndex:j withObjectAtIndex:j + 1];
                flag = YES;
            }
        }
        if (flag == NO) {
            break;      // 提前结束
        }
    }
    return arrM.copy;
}

+ (NSArray *)insertSortWithArray:(NSArray *)array {
    if (array.count == 0) {
        return array;
    }
    NSMutableArray *arrM = array.mutableCopy;

    for (int i = 1; i < arrM.count; i++) {
        NSInteger value = [arrM[i] integerValue];
        int j = i - 1;
        for (; j >= 0; j--) {
            if ([arrM[j] integerValue] > value) {
                arrM[j + 1] = arrM[j];
            } else {
                break;
            }
        }
        arrM[j + 1] = @(value);
    }
    return arrM.copy;
}

+ (NSArray *)selectSortWithArray:(NSArray *)array {
    if (array.count == 0) {
        return array;
    }

    NSMutableArray *aryM = array.mutableCopy;
    for (int i = 0; i < array.count; i++) {
        NSInteger minIndex = i;
        NSInteger minValue = [aryM[i] integerValue];
        for (int j = i + 1; j < aryM.count; j++) {
            NSInteger tmp = [aryM[j] integerValue];
            if (tmp < minValue) {
                minValue = tmp;
                minIndex = j;
            }
        }

        if (minIndex != i) {
            [aryM exchangeObjectAtIndex:minIndex withObjectAtIndex:i];
        }
    }
    return aryM.copy;
}

@end
