//
//  ListNode.swift
//  iOSReview
//
//  Created by songzhou on 2018/8/12.
//  Copyright © 2018年 songzhou. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class List {
    var head: ListNode?
    var tail: ListNode?
    
    // 尾插法
    func appendToTail(_ val: Int) {
        if tail == nil {
            tail = ListNode(val)
            head = tail
        } else {
            tail!.next = ListNode(val)
            tail = tail!.next
        }
    }
    
    func appendToHead(_ val: Int) {
        if head == nil {
            head = ListNode(val)
            tail = head
        } else {
            let temp = ListNode(val)
            temp.next = head
            head = temp
        }
    }
}

func partition(_ head: ListNode?, _ x: Int) -> ListNode? {
    /// dummy 节点
    let prevDummy = ListNode(0), postDummy = ListNode(0)
    var prev = prevDummy, post = postDummy
    
    var node = head
    
    /// 尾插法处理左边和右边
    while node != nil {
        if node!.val < x {
            prev.next = node
            prev = node!
        } else {
            post.next = node
            post = node!
        }
        
        node = node!.next
    }
    
    /// 防止成环
    post.next = nil
    /// 左右拼接
    prev.next = postDummy.next
    
    return prevDummy.next
}

func listTest() {
    let root = List();
    [1, 5, 3, 2, 4, 2].forEach { (e) in
        root.appendToTail(e)
    }
    
    printList(root.head)
    print("======")
    printList(partition(root.head, 3))
    
}

fileprivate func printList(_ root: ListNode?) {
    var node = root
    while node != nil {
        print(node!.val)
        node = node?.next
    }
}
