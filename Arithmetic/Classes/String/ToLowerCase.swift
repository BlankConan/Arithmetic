//
//  ToLowerCase.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/11/22.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

class ToLowerCase: NSObject {
    func toLowerCase(_ str: String) -> String {
        
        
        return ""
    }
}

extension ToLowerCase {
    
    static func stringExample() {

//        let something = "something lirater"
//
//        for chart in something {
//            print(chart)
//        }
        
        // 字符变量
        let exampleA: Character = "1"
        print(exampleA)
        
        let characts: [Character] = ["1","2","3","4","5"]
        
        // char array -> string
        let chStr = String(characts)
        print(characts)
        print(chStr)
        
        // 获取某一个 char
        // index 的创建
        let firstIndex = chStr.startIndex
        let anyIndex = chStr.index(chStr.startIndex, offsetBy: 2)
        let firstC = chStr[firstIndex]
        let anyC = chStr[anyIndex]
        print("\(firstC) ----  \(anyC)")
        
        
        // string -> char array
        let cha: [Character] = Array(chStr)
        print(cha)
        
    }
    
    // 插入
    static func strInsert() {
        var welcome = "welcome"
        // 插入单个字符
        welcome.insert("!", at: welcome.endIndex)
        print(welcome)
        
        // 插入字符串
        welcome.insert(contentsOf: " to China", at: welcome.index(before: welcome.endIndex))
        print(welcome)
        
    }
    
    // 删除
    static func strDelete() {
        var welcome = "welcome to china"
        
        // 删除单个字符
        welcome.remove(at: welcome.startIndex)
        print(welcome)
        
        // s删除range字符
        let range = welcome.startIndex...welcome.index(welcome.startIndex, offsetBy: 6)
        welcome.removeSubrange(range)
        print(welcome)
        
    }
    
    // 字符串检索
    static func strSearch() {
        
        var str = "Hello Apple.Hello Swift"
        let rangeChar = str.range(of: "Apple")
        guard rangeChar == nil else {
            print(rangeChar!.isEmpty)
            return
        }
        
//        str.range(of: T##StringProtocol, options: <#T##String.CompareOptions#>, range: <#T##Range<String.Index>?#>, locale: <#T##Locale?#>)
        
    }
    
    
    // string.index 转 Int
    static func strIndexToInt() {
        let welcome = "aaaaa"
        let indexPosition = welcome.distance(from: welcome.startIndex, to: welcome.endIndex)
        print(indexPosition)
        
    }
    
}

