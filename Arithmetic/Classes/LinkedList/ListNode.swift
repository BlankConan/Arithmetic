//
//  ListNode.swift
//  Arithmetic
//
//  Created by gang yi liu on 2019/7/29.
//  Copyright © 2019 liu gangyi. All rights reserved.
//

import Cocoa

class ListNode : NSObject {
    var val:Int?
    var next:ListNode?
    
    override init() {
        super.init()
    }
    
    init(_ val:Int) {
        self.val = val
        self.next = nil
    }
    
    
    ///  链表长度
    ///
    /// - Parameter head: 头节点
    /// - Returns: 长度
    func length(_ head:ListNode?) -> Int {
        
        var length = 0
        var next = head?.next
        while next != nil {
            length += 1
            next = head?.next
        }
        return length
    }
    
    /// 通过给定值创建链表
    ///
    /// - Parameter values: 值
    /// - Returns: 返回创建的链表
    func creatList(_ values:[Int]) -> ListNode? {
        guard values.count == 0 else {
            return nil
        }
        let head = ListNode();
        var tempNode = head;
        
        for value in values {
            let node = ListNode(value)
            tempNode.next = node
            tempNode = node
        }
        return head
    }
    
    // 插入 1.头插 2.尾插
    // 获取第n个节点
    // 删除第n个节点
    
    /// 打印链表
    ///
    /// - Parameter head: 头指针
    func log(_ head:ListNode) {
        var node = head.next
        while node != nil {
            print("%d", node!.val!)
            node = node?.next
        }
    }
    
}
