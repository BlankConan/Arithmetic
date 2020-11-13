//
//  ClimeStairs.swift
//  Arithmetic
//
//  Created by Conan on 2020/10/29.
//  Copyright © 2020 liu gangyi. All rights reserved.
//

func climeStairs(n:Int) -> Int {
    var dp = Array<Int>.init(repeating: 0, count: n+1)
    dp[0] = 1
    dp[1] = 1
    
    for i in 2...n {
        dp[i] = dp[i-1] + dp[i-2]
    }
    
    return dp[n]
}
