//
//  압축 1662.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/26.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution1662() {
//    var S = readLine()!
//
//    var s = Array(S)
//
//    var numbers = [Int]()
//
//    var ans = ""
//
//    for i in 0 ..< S.count {
//        if s[i] == ")" {
//
//            var len = 0
//            while numbers.last != -1 {
//
//                if numbers.last! >= 10 {
//                    len += numbers.last! - 10
//                } else {
//                    len += 1
//                }
//                numbers.popLast()
//            }
//
//            numbers.popLast()
//            len = numbers.last! * len
//            numbers.popLast()
//            numbers.append( len + 10)
//        } else {
//            if s[i] == "(" { numbers.append(-1) }
//            else { numbers.append( Int(String(s[i]))! )}
//        }
//    }
//
//    var answer = 0
//    while !numbers.isEmpty {
//        if numbers.last! >= 10 {
//            answer += numbers.last! - 10
//        } else {
//            answer += 1
//        }
//        numbers.removeLast()
//    }
//
//    print(answer)
//}
