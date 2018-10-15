//
//  AddTwoNums.swift
//  Arithmetic
//
//  Created by liugangyi on 2018/10/14.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Cocoa

/**
 
 You are given two non-empty linked lists representing two non-negative integers. The digits are stored in reverse order and each of their nodes contain a single digit. Add the two numbers and return it as a linked list.
 
 You may assume the two numbers do not contain any leading zero, except the number 0 itself.
 
 Example:
 
 Input: (2 -> 4 -> 3) + (5 -> 6 -> 4)
 Output: 7 -> 0 -> 8
 Explanation: 342 + 465 = 807.
 
 */

class AddTwoNums: NSObject {

    fileprivate func addTowNums(_ l1: ListNode, l2: ListNode) -> ListNode? {
        
        var preHead = ListNode(0), result = preHead
        var templ1: ListNode? = l1
        var templ2: ListNode? = l2
        var extra = 0
        while templ1 != nil || templ2 != nil || extra != 0 {
            let sum = (templ1 != nil ? (templ1?.val)! : 0) + (templ2 != nil ? (templ2?.val)! : 0) + extra
            extra = sum / 10
            preHead.next = ListNode(sum % 10)
            preHead = preHead.next!
            templ1 = templ1 != nil ? templ1?.next : templ1
            templ2 = templ2 != nil ? templ2?.next : templ2
        }
        
        return result.next
    }
    
    required override init() {
        
    }
    
    
    static func test() {
        
        var l1: ListNode? = ListNode(5)
        var l2: ListNode? = ListNode(7)
        let preHead1 = l1, preHead2 = l2
        
        
        for index in 1...3 {
            l1?.next = ListNode(index * 2)
            l1 = l1?.next
            l2?.next = ListNode(index)
            l2 = l2?.next
        }
        
        var result = self.init().addTowNums(preHead1!, l2: preHead2!)
        while result != nil {
            print(String((result?.val)!) + "->", terminator: "")
            result = result != nil ? result?.next : result
        }
        print("")
    }
    
}


fileprivate class ListNode {
    
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}


