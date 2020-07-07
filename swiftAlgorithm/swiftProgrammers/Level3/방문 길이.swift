//
//  방문 길이.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ dirs:String) -> Int {
//
//    var check = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 10)
//    var check2 = [((Int, Int), (Int, Int))]
//    var pos = ( 4, 4 )
//    var answer = 0
//
//    for (index, value) in dirs.enumerated() {
//        if value == "L" {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.1 -= 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else if value == "U" {
//             if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.0 -= 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else if value == "R" {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.1 += 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.0 += 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        }
//    }
//
//    return answer
//}


