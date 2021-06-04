////
////  다단계 칫솔 판매.swift
////  swiftAlgorithm
////
////  Created by apple on 2021/05/29.
////  Copyright © 2021 odyflame. All rights reserved.
////
//
//import Foundation
//
//class Node {
//    var name: String?
//    var sum: Int
//    var node: Node?
//    
//    init(_ name: String?, sum: Int = 0) {
//        self.name = name
//        self.sum = sum
//    }
//    
//    func add(_ sum: Int) {
//        guard sum > 1 else {
//            self.sum += sum
//            return
//        }
//        self.sum += sum - sum / 10
//        node?.add(sum/10)
//    }
//}
//
//func solution(_ enroll:[String], _ referral:[String], _ seller:[String], _ amount:[Int]) -> [Int] {
//    
//    var tree = [String: Node]()
//    
//    enroll.forEach { tree[$0] = Node($0) }
//    
//    for i in 0 ..< referral.count {
//        
//        guard referral[i] != "-" else { continue }
//        tree[enroll[i]]!.node = tree[referral[i]]!
//
//    }
//    
//    for i in 0 ..< seller.count {
//        tree[seller[i]]!.add(amount[i] * 100)
//    }
//    
//    return enroll.map { tree[$0]!.sum }
//}
//
