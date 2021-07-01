//
//  우수 마을 1949.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1949() {
//    var N = Int(readLine()!)!
//
//    var person = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var node = [[Int]](repeating: [Int](), count: N + 1)
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: 2), count: N + 1)
//    var visit = [Bool](repeating: false, count: N + 1)
//
//    for i in 0 ..< N-1 {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//
//        node[temp[0] - 1].append(temp[1] - 1)
//        node[temp[1] - 1].append(temp[0] - 1)
//    }
//
//    func DFS(pos: Int) {
//        if !visit[pos] {
//
//            visit[pos] = true
//            dp[pos][0] = 0
//            dp[pos][1] = person[pos]
//
//            for next in node[pos] {
//                if !visit[next] {
//                    DFS(pos: next)
//
//                    dp[pos][0] += max(dp[next][0], dp[next][1])
//                    dp[pos][1] += dp[next][0]
//                }
//            }
//
//        }
//    }
//
//    DFS(pos: 0)
//    print(max(dp[0][0], dp[0][1]))
//}
