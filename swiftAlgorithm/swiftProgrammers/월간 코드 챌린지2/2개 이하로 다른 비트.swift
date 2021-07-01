//
//  2개 이하로 다른 비트.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/28.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ numbers:[Int64]) -> [Int64] {
//
//    var answer = [Int64]()
//
//    for number in numbers {
//        if number % 2 == 0 {
//            answer.append(number + 1)
//        } else {
//            var bit: Int64 = 1
//            while (number & bit) == 0 {
//                bit *= 2
//            }
//            bit = bit / 2
//            answer.append(number + bit)
//        }
//    }
//
//    return answer
//}
