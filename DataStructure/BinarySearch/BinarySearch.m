//
//  BinarySearch.m
//  DataStructure
//
//  Created by Lxin on 2019/9/18.
//  Copyright © 2019 Lxin. All rights reserved.
//

#import "BinarySearch.h"

@implementation BinarySearch

/**
 二分查找算法:要求数组为有序数组!!!
 */
+ (int)binarySearchWithArray:(NSArray *)array target:(int)target {
    int low = 0;
    int high = (int)array.count - 1;
    while (low <= high) {
        // mid=low+((high-low)>>1)为位运算,性能优于mid=low+(high-low)/2,不用mid=(low+high)/2是防止溢出
        int middle = low + ((high - low)>>1);
        if ([array[middle] intValue] == target) {
            return middle;
        } else if ([array[middle] intValue] < target) {
            low = middle + 1;
        } else {
            high = middle - 1;
        }
    }
    return -1;
}

+ (int)firstBinarySearchWithArray:(NSArray *)array target:(int)target {
    int low = 0;
    int high = (int)array.count - 1;
    while (low <= high) {
        // mid=low+((high-low)>>1)为位运算,性能优于mid=low+(high-low)/2,不用mid=(low+high)/2是防止溢出
        int middle = low + ((high - low)>>1);
        if ([array[middle] intValue] < target) {
            low = middle + 1;
        } else if ([array[middle] intValue] > target) {
            high = middle - 1;
        } else if ([array[middle] intValue] == target) {
            if (middle == 0 || [array[middle - 1] intValue] != target) {
                return middle;
            } else {
                high = middle - 1;
            }
        }
    }
    return -1;
}

+ (int)lastBinarySearchWithArray:(NSArray *)array target:(int)target {
    int low = 0;
    int high = (int)array.count - 1;
    while (low <= high) {
        // mid=low+((high-low)>>1)为位运算,性能优于mid=low+(high-low)/2,不用mid=(low+high)/2是防止溢出
        int middle = low + ((high - low)>>1);
        if ([array[middle] intValue] < target) {
            low = middle + 1;
        } else if ([array[middle] intValue] > target) {
            high = middle - 1;
        } else if ([array[middle] intValue] == target) {
            if (middle == array.count - 1 || [array[middle + 1] intValue] != target) {
                return middle;
            } else {
                high = middle - 1;
            }
        }
    }
    return -1;
}

+ (int)firstBiggerBinarySearchWithArray:(NSArray *)array target:(int)target {
    int low = 0;
    int high = (int)array.count - 1;
    while (low <= high) {
        // mid=low+((high-low)>>1)为位运算,性能优于mid=low+(high-low)/2,不用mid=(low+high)/2是防止溢出
        int middle = low + ((high - low)>>1);
        if ([array[middle] intValue] >= target) {
            if (middle == 0 || [array[middle - 1] intValue] < target) {
                return middle;
            } else {
                high = middle - 1;
            }
        } else {
            low = middle + 1;
        }
    }
    return -1;
}

+ (int)lastSmallerBinarySearchWithArray:(NSArray *)array target:(int)target {
    int low = 0;
    int high = (int)array.count - 1;
    while (low <= high) {
        // mid=low+((high-low)>>1)为位运算,性能优于mid=low+(high-low)/2,不用mid=(low+high)/2是防止溢出
        int middle = low + ((high - low)>>1);
        if ([array[middle] intValue] <= target) {
            if (middle == array.count - 1 || [array[middle + 1] intValue] > target) {
                return middle;
            } else {
                low = middle + 1;
            }
        } else {
            high = middle - 1;
        }
    }
    return -1;
}

@end
