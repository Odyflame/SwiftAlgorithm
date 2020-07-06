//
//  보석 쇼핑.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ gems:[String]) -> [Int] {
//    
//    해당코드는 시간초과가 발생한다
//    var answer: (Int, Int) = (0, 99999999)
//    var sset = Set<String>()
//
//    gems.map { a -> String in
//        sset.insert(a)
//        return a
//    }
//
//    for i in 0 ..< gems.count {
//        var tempSet = Set<String>()
//
//        for j in i ..< gems.count {
//            tempSet.insert( gems[j] )
//            if tempSet.count == sset.count {
//
//                if answer.1 - answer.0 > j - i {
//                    answer = (i + 1, j + 1)
//                } else if answer.1 - answer.0 == j - i {
//                    answer = answer.0 < i + 1 ? answer : (i + 1, j + 1)
//                }
//
//                break
//            }
//        }
//
//    }
//
//    return [answer.0, answer.1]
//}
