//
//  BubbleSort.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/20.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa


/**
 算法名称：冒泡排序
 时间复杂度：
 空间复杂度：
 稳定性：稳定
 算法步骤：
    1. 从开始比较相邻的元素，如果第一个比第二个大，就交换他们两个
    2. 对每一对相邻元素做同样的工作，除了每轮已经排序过的，也就是最后面的
    3. 重复1、2步骤
 
 */
class BubbleSort: NSObject {

   static func bubbleSort(nums: [Int]) -> [Int] {
        var sortedArr = nums
        for loopTime in 1...sortedArr.count-1  {
            // 如果没有交换过，说明都已排序完成
            var flag = true
            for index in 0...sortedArr.count - loopTime - 1 {
                if sortedArr[index] > sortedArr[index + 1] {
                    sortedArr.swapAt(index, index+1)
                    flag = false
                }
            }
            if flag {
                break
            }
        }
        return sortedArr
    }
}

extension BubbleSort: SortProtocol {
   static func startSort(nums: [Int]) -> [Int] {
        return bubbleSort(nums: nums)
    }
  
}
