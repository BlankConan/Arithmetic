//
//  NumReverse.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/21.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

class NumReverse: NSObject {
    
    static func reverse(_ x: Int) -> Int {
        
        if x == 0 {return 0}
        
        var isBeyound = false
        var temp = x
        if temp < 0 {
            temp = -1 * temp
            isBeyound = true
        }
        
        var result: Int = 0
        while temp != 0 {
            let remainder = temp % 10
            result = result * 10 + remainder
            temp = temp / 10
        }
        if isBeyound {
            result *= -1
        }
        if result < Int32.min || result > Int32.max {return 0}
        return result
    }

}
