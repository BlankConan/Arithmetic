//
//  main.swift
//  Arithmetic
//
//  Created by liu gangyi on 2018/7/19.
//  Copyright © 2018年 liu gangyi. All rights reserved.
//

import Foundation

let root = BTree.creatTree()
//BTree.bfsTraversal(root: root)
BTree.recursionPreorderTraversal(root: root)

let nums = [7,9,1,5,6,4].insertSort()
print(nums)
