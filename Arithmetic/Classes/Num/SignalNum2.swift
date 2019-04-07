//
//  SignalNum2.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/22.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

class SignalNum2: NSObject {

    static func singleNumber(_ nums: [Int]) -> Int {
    
        let sumAll = nums.reduce(0) { (result, item) -> Int in
            result + item
        }
        let sumSignal = Set.init(nums).reduce(0) { (result, item) -> Int in
            result + item
        }
        
        return (sumSignal * 3 - sumAll) / 2
    }
    
    // 另一种方法
    static func another(_ nums: [Int]) -> Int {
        var a = 0, b = 0
        for num in nums {
            b = b ^ num & ~a
            a = a ^ num & ~b
        }
        return b
    }
}

