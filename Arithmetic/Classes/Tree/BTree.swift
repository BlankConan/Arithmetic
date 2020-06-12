//
//  BTree.swift
//  Arithmetic
//
//  Created by Cocoa on 2020/6/12.
//  Copyright © 2020 liu gangyi. All rights reserved.
//

import Cocoa

class BTree {
    let value: Int
    var lChild: BTree?
    var rChild: BTree?
    init(aValue:Int) {
        self.value = aValue
    }
    
    /*
                         1
                       /   \
                      2     3
                      \    / \
                      4   5   6
                     / \      /\
                    7   8    9  0
     */
    
    static func creatTree() -> BTree {
        let root = BTree(aValue: 1)
        let l2 = BTree(aValue: 2)
        let r2 = BTree(aValue: 3)
        root.lChild = l2
        root.rChild = r2
        
        let l2r = BTree(aValue: 4)
        
        let r2l = BTree(aValue: 5)
        let r2r = BTree(aValue: 6)
        l2.rChild = l2r
        
        r2.lChild = r2l
        r2.rChild = r2r
        
        let r2ll = BTree(aValue: 7)
        let r2lr = BTree(aValue: 8)
        
        l2r.lChild = r2ll
        l2r.rChild = r2lr
        
        let r2rl = BTree(aValue: 9)
        let r2rr = BTree(aValue: 0)
        
        r2r.lChild = r2rl
        r2r.rChild = r2rr
        
        return root;
    }
}

// MARK: 递归 前 中 后遍历 层序遍历
extension BTree {
    
    // 前
    static func recursionPreorderTraversal(root:BTree?) {
        if let node = root {
            print("\(node.value)")
            recursionPreorderTraversal(root: node.lChild)
            recursionPreorderTraversal(root: node.rChild)
        }
    }
    
    // 中
    static func recursionMiddleorderTraversal(root:BTree?) {
        if let node = root {
            recursionMiddleorderTraversal(root: node.lChild)
            print("\(node.value)")
            recursionMiddleorderTraversal(root: node.rChild)
        }
    }
    
    // 后
   static func recursionPostorderTraversal(root:BTree?) {
        if let node = root {
            recursionPostorderTraversal(root: node.lChild)
            recursionPostorderTraversal(root: node.rChild)
            print("\(node.value)")
        }
    }
    
    // 层序
    static func bfsTraversal(root:BTree?) {
        guard let r = root else { return }
        var nodes = [BTree]()
        nodes.append(r)
        while nodes.count > 0 {
            let node = nodes.first!
            print("\(node.value)")
            nodes.removeFirst()
            if let ln = node.lChild {
                nodes.append(ln)
            }
            if let rn = node.rChild {
                nodes.append(rn)
            }
        }
    }
}
