//
//  SelectionSort.swift
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
 算法步骤：升序
 1. 找到最小的元素，放入第一位
 2. 从第二位开始，找到后面最小的元素，和其交换
 3. 依次执行
 
 */
class SelectionSort: NSObject {
    static func selectionSort(nums: [Int]) -> [Int] {
        var operationArr = nums
        for loopTime in 0..<nums.count-1 {
            var min = operationArr[loopTime], index = loopTime
            for num in loopTime+1..<operationArr.count {
                if operationArr[num] < min {
                    min = operationArr[num]
                    index = num
                }
            }
            if min != operationArr[loopTime] {
                operationArr.swapAt(loopTime, index)
            }
        }
        return operationArr
    }
}

extension SelectionSort: SortProtocol {
    static func startSort(nums: [Int]) -> [Int] {
        return selectionSort(nums: nums)
    }
    
}
