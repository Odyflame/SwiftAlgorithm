//
//  23. Merge k sorted Lists.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/29.
//  Copyright © 2021 odyflame. All rights reserved.
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
//class Solution {
//    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
//        guard !lists.isEmpty else {
//            return nil
//        }
//
//        return partition(lists, 0, lists.count - 1)
//    }
//
//    private func partition(_ lists: [ListNode?], _ start: Int, _ end: Int) -> ListNode? {
//        if start == end {
//            return lists[start]
//        }
//
//        if start < end {
//            let mid = (start + end) / 2
//            let list1 = partition(lists, start, mid)
//            let list2 = partition(lists, mid + 1, end)
//
//            return mergeTwoLists(list1, list2)
//        }
//
//        return nil
//    }
//
//    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//
////        guard l1 != nil else {
////            return l2
////        }
////
////        guard l2 != nil else {
////            return l1
////        }
////
////        //Checking what list has the smallest number
////        var (p1, p2) = l1!.val <= l2!.val ? (l1, l2) : (l2, l1)
////
////        var head = p1
////
////        while p2 != nil {
////            while p1!.val < p2!.val && p1?.next != nil && p1!.next!.val < p2!.val {
////                p1 = p1?.next
////            }
////
////            // This means last element of p1 is less than first p2 element.
////            // Let's join the lists without more verifications
////            if p1?.next == nil {
////                p1?.next = p2
////                break
////            }
////
////            var aux1 = p1?.next
////            var aux2 = p2?.next
////
////            p1?.next = p2
////            p2?.next = aux1
////            p1 = p2
////            p2 = aux2
////        }
////
////        return head
//
//        var l1 = l1
//        var l2 = l2
//
//        var head: ListNode? = ListNode()
//        var readHead = head
//
//        while l1 != nil && l2 != nil {
//            guard let l = l1 else { break }
//            guard let r = l2 else { break }
//
//            if l.val <= r.val {
//                head?.next = l
//                l1 = l.next
//            } else {
//                head?.next = r
//                l2 = r.next
//            }
//            head = head?.next
//        }
//
//        if l1 == nil {
//            head?.next = l2
//        }
//        if l2 == nil {
//            head?.next = l1
//        }
//
//        return readHead?.next
//    }
//
//
//}
