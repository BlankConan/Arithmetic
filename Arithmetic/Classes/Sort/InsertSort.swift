//
//  InsertSort.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/20.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

/**
 算法名称：选择排序
 时间复杂度：
 空间复杂度：
 稳定性：稳定
 原理：构建有序序列，对于未排序数据，在已排序序列中从后向前扫描，找到相应位置并插入。
 算法步骤：升序
 1. 将第一个元素当做有序序元素，第二个元素到最后一个元素当做未排序数据
 2. 从头到尾扫描未排序元素，将其插入有序元素的适当位置（正常情况下是倒着扫描有序元素）；
    如果待插入元素和有序元素相等，插到有序元素后面
 优化：插入的时候可以使用折半插入
 */


class InsertSort: NSObject {
    static func insertSorting(nums: [Int]) -> [Int] {
        var sortedArr = nums
        // 第index个元素到最后是未排序数据
        for index in 1..<sortedArr.count {
            // 将第 index 位置的数据插入到 index 之前的有序数据
//            normalInsert(s: &sortedArr, boundary: index)
            binary_insert(s: &sortedArr, boundary: index)
        }
        return sortedArr
    }
    
    /// 直接插入
    ///
    /// - Parameters:
    ///   - operationData: 有序数据+未排序数据
    ///   - index: 有序和无序的边界Index
    static func normalInsert(s: inout [Int], boundary: Int) {
        // 记录要插入的数据
        let insertData = s[boundary]
        var index = boundary
        while index > 0 && s[index - 1] > insertData {
            // 前一位的元素向后移动
            s[index] = s[index - 1]
            index -= 1
        }
        
        if index != boundary {
            s[index] = insertData
        }
    }
    
    /// 折半插入
    ///
    /// - Parameters:
    ///   - operationArr: 有序数据和未排序数据
    ///   - boundary: 有序和无序的边界
    static func binary_insert(s: inout [Int], boundary: Int) {
        let temp = s[boundary]
        var low = 0, middle = 0, hight = boundary - 1
        while low <= hight {
            middle = (low + hight) / 2
            if s[middle] > temp {
                hight = middle - 1
            } else {
                low = middle + 1
            }
        }
        var index = boundary
        while index > middle {
            s[index] = s[index-1]
            index -= 1
        }
        s[low] = temp
    }
    
    // 折半插入没搞明白
    // 为什么最后用的是 low 做赋值 temp，而不用 middle
    
}

extension InsertSort: SortProtocol {
    static func startSort(nums: [Int]) -> [Int] {
        return insertSorting(nums: nums)
    }
}
