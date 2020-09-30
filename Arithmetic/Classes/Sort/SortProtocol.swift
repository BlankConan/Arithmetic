//
//  SortProtocol.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/20.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

/**
1、稳定排序：如果 a 原本在 b 的前面，且 a == b，排序之后 a 仍然在 b 的前面，则为稳定排序。

2、非稳定排序：如果 a 原本在 b 的前面，且 a == b，排序之后 a 可能不在 b 的前面，则为非稳定排序。

3、原地排序：原地排序就是指在排序过程中不申请多余的存储空间，只利用原来存储待排数据的存储空间进行比较和交换的数据排序。

4、非原地排序：需要利用额外的数组来辅助排序。
 
 时间复杂度分析：
 最好情况、最坏情况、平均情况时间复杂度
 
 有序度是数组中具有有序关系的元素对的个数
 逆序度是数组中具有无序关系的元素对的个数；移动操作的次数总是固定的，就等于逆序度
 满有序度数组完全有序的情况下的有序度
*/


extension Array where Element == Int {
    
    /**
     冒泡排序
     1.时间复杂度
     2.空间复杂度
     3.是否原地排序
     4.是否稳定排序
     */
    func bubbleSort() -> Self {
        var a = self
        for i in 0..<a.count  {
            // 如果没有交换过，说明都已排序完成
            var flag = true
            for j in 0..<a.count - i - 1 {
                if a[j] > a[j + 1] {
                    let temp = a[j+1]
                    a[j+1] = a[j]
                    a[j] = temp
                    flag = false
                }
            }
            if flag { break }
        }
        return a
    }
    
    /**
    插入排序:数据分为两个区间，已排序区间和未排序区间
    1.时间复杂度
    2.空间复杂度
    3.是否原地排序
    4.是否稳定排序
    */
    func insertSort() -> Self {
        var a = self
        for var i in 1..<a.count {
            let temp = a[i]
            // 元素比较，并移位
            while i > 0 && temp < a[i-1] {
                a[i] = a[i-1]
                i -= 1
            }
            a[i] = temp
        }
        return a
    }
    
    /**
    选择排序:思路有点类似插入排序，也分已排序区间和未排序区间。
     但是选择排序每次会从未排序区间中找到最小的元素，将其放到已排序区间的末尾。
    1.时间复杂度
    2.空间复杂度
    3.是否原地排序
    4.是否稳定排序
    */
    func selectionSort() -> Self {
        var a = self
        for i in 0..<a.count {
            var minIndex = i, minValue = a[i], index = i+1
            
            for j in index..<a.count {
                if minValue > a[j] {
                    minIndex = j
                    minValue = a[j]
                }
            }
            // 交换最小的元素
            a.swapAt(i, minIndex)
        }
        return a
    }
    
    
    
}


