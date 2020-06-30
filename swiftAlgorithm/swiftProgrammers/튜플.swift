//
//  튜플.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/30.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ s:String) -> [Int] {
//    var answer: [Int] = []
//    var s = s
//
//    var srr1 = s.components(separatedBy: ["{", "}"])
//
//    srr1.removeFirst()
//    srr1.removeFirst()
//    srr1.removeLast()
//    srr1.removeLast()
//
//    var srr2 = srr1.sorted() {
//        $0.count < $1.count
//    }
//
//    var mySet: [Int: Int] = [:]
//    var index = 0
//    for i in srr2 {
//        var maxNum = 0
//        if i != "," {
//            var arr = i.components(separatedBy: ",").map { Int($0) }
//            for j in arr {
//                if mySet[j!] == nil {
//                    mySet[j!] = arr.count
//                }
//            }
//            index += 1
//        }
//    }
//
//    return mySet.sorted { $0.1 < $1.1 }.map { $0.0 }
//    
//    
//    let answer1 = s.components(separatedBy: ["{","}"]).filter { $0 != "" && $0 != ","}.sorted(by: {
//           $0.count < $1.count
//       }).reduce([String]()) {
//           var result = $0
//           result.append(contentsOf: Set($1.components(separatedBy: ",")).subtracting(Set($0)))
//           return result
//       }
//       
//    
//    return answer.map { Int(String($0))! }
//    
//}
