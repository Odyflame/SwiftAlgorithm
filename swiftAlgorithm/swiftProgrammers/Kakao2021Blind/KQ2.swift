//
//  KQ2.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ orders:[String], _ course:[Int]) -> [String] {
//
//    var dic = [String: Int]()
//    for i in orders {
//        if let cnt = dic[i] {
//            dic[i] = cnt + 1
//        } else {
//            dic[i] = 1
//        }
//    }
//    
//    
//    for order in 0..<orders.count {
//        for i in order + 1 ..< orders.count {
//
//            let orderSet = Set(orders[i])
//            let porderSet = Set(orders[order])
//
//            if orderSet.intersection(porderSet).count > 1 {
//                var temp = String(Array(orderSet.intersection(porderSet)).sorted())
//                
//                if let cnt = dic[temp] {
//                    dic[temp] = cnt + 1
//                }
//                else {
//                    dic[temp] = 1
//                }
//                
//            }
//
//        }
//    }
//    
//    var orders = Array(Set(orders))
//
//    for order in 0..<orders.count {
//        for i in order + 1 ..< orders.count {
//
//            let orderSet = Set(orders[i])
//            let porderSet = Set(orders[order])
//
//            if orderSet.intersection(porderSet).count > 1 {
//                var temp = String(Array(orderSet.intersection(porderSet)).sorted())
//                
//                if let cnt = dic[temp] {
//                    dic[temp] = cnt + 1
//                }
//                else {
//                    dic[temp] = 1
//                }
//                
//            }
//
//        }
//    }
//
//    var answer = [String]()
//
//    for cour in course {
//
//        var tempAns = [String]()
//        for i in dic {
//
//            if i.value > 1 && i.key.count == cour {
//                tempAns.append(i.key)
//            }
//
//        }
//
//        answer.append(contentsOf: tempAns.sorted())
//    }
//
//    return answer
//}
