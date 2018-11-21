//
//  TwoSumProblem.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/10/12.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

class TwoSumSolution: NSObject {

    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var dic = [Int:Int]()
        for i in 0..<nums.count {
            let match = target - nums[i]
            if dic.keys.contains(match) {
                return [dic[match] ?? 0, i]
            }
            dic[nums[i]] = i
        }
        return [Int]()
    }
}
