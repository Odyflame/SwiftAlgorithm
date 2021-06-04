//
//  합승 택시 요금.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/30.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//
//    var nodes = [[Int]](repeating: [Int](repeating: 99999999999, count: n), count: n)
////    var dpA = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
////    var dpB = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
////    var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
//    var visit = [[Bool]](repeating: [Bool](repeating: false, count: n), count: n)
//
//    for fare in fares {
//        nodes[fare[0] - 1][fare[1] - 1] = fare[2]
//        nodes[fare[1] - 1][fare[0] - 1] = fare[2]
//    }
//    for i in 0 ..< n {
//        nodes[i][i] = 0
//    }
//
//    for k in 0 ..< n {
//        for i in 0 ..< n {
//            for j in 0 ..< n {
//                if i == j || i == k || k == j { continue }
//                nodes[i][j] = min(nodes[i][k] + nodes[k][j], nodes[i][j])
//            }
//        }
//    }
//
//    var answer = nodes[s-1][a - 1] + nodes[s-1][b - 1]
//
//    for i in 0 ..< n {
//        answer = min(nodes[s - 1][i] + nodes[i][b-1] + nodes[i][a-1], answer)
//    }
//
//    return answer
//}
