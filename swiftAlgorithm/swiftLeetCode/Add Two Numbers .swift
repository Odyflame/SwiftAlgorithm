//
//  Add Two Numbers .swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next;
        
    }
}

class Solution {
    static func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let headNode = ListNode(0)
        var p = l1, q = l2, curr = headNode
        var carry = 0
        
        while (p != nil || q != nil || carry != 0){
            
            let x = (p != nil) ? p!.val : 0
            let y = (q != nil) ? q!.val : 0
            
            let sum = x + y + carry
            carry = sum / 10
            curr.next = ListNode(sum % 10)
            curr = curr.next!
            if (p != nil) {
                p = p!.next
            }
            if (q != nil) {
                q = q!.next
            }
        }
        return headNode.next!
    }
}
