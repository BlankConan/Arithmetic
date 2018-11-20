//
//  SelectionSort.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/20.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa


// 选择排序 
class SelectionSort: NSObject {
    static func selectionSort(nums: [Int]) -> [Int] {
        return [1]
    }
}

extension SelectionSort: SortProtocol {
    static func startSort(nums: [Int]) -> [Int] {
        return selectionSort(nums: nums)
    }
    
}
