//
//  이중우선순위큐.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation
//
//func solution(_ operations:[String]) -> [Int] {
//    var answer = [Int]()
//    for operation in operations {
//        var temp = operation.components(separatedBy: " ")
//
//        if temp[0] == "I" {
//            answer.append(Int(temp[1])!)
//            answer = answer.sorted()
//        } else {
//            if temp[1] == "1" {
//                if !answer.isEmpty {
//                    answer.removeLast()
//                }
//            } else {
//                if !answer.isEmpty {
//                    answer.removeFirst()
//                }
//            }
//        }
//    }
//
//    if answer.isEmpty {
//        return [0, 0]
//    }
//
//    return [answer.first!, answer.last!]
//}
