//
//  Merge Two sorted Lists.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//public class ListNode {
//    public var val: Int
//    public var next: ListNode?
//    public init() { self.val = 0; self.next = nil; }
//    public init(_ val: Int) { self.val = val; self.next = nil; }
//    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
//}
//
//
//func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
//    if l1 == nil {
//        return l2
//    }
//    
//    if l2 == nil {
//        return l1
//    }
//    
//    var l1 = l1
//    var l2 = l2
//    
//    var head: ListNode? = ListNode()
//    
//    while l1 != nil && l2 != nil {
//        if (l1?.val)! < (l2?.val)! {
//            head?.next = l1
//            l1 = l1?.next
//        } else if (l1?.val)! > (l2?.val)! {
//            head?.next = l2
//            l2 = l2?.next
//        }
//        head = head?.next
//    }
//    
//    return head

//var l1 = l1
//var l2 = l2
//
//var head: ListNode? = ListNode()
//var readHead = head
//
//while l1 != nil && l2 != nil {
//    guard let l = l1 else { break }
//    guard let r = l2 else { break }
//
//    if l.val <= r.val {
//        head?.next = l
//        l1 = l.next
//    } else {
//        head?.next = r
//        l2 = r.next
//    }
//    head = head?.next
//}
//
//if l1 == nil {
//    head?.next = l2
//}
//if l2 == nil {
//    head?.next = l1
//}
//
//return readHead?.next
//}
//
