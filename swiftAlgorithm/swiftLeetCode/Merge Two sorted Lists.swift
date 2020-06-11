//
//  Merge Two sorted Lists.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}


func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    
    var member = [Int]()
    
    var ll1 = l1
    var ll2 = l2
    
    while true {
        if ll1 == nil && ll2 == nil {
            break
        }
        
        var lfirst = ll1 == nil ? nil : ll1?.val
        var lsecond = ll2 == nil ? nil : ll2?.val
        
        if lfirst != nil {
            member.append(lfirst!)
        }
        if lsecond != nil {
            member.append(lsecond!)
        }
        
        ll1 = ll1?.next == nil ? nil : ll1?.next
        ll2 = ll2?.next == nil ? nil : ll2?.next
    }
    
    var member2 = member.sorted()
    
    var answerList = member2.isEmpty ? nil : ListNode(member2[0])
    var finalAnswerList = answerList
    
    if member2.count > 0 {
     for index in 1 ..< member2.count {
        
        var templ = ListNode(member2[index])
        answerList!.next = templ
        answerList = answerList?.next!
        
    }
    }
    return finalAnswerList
}

