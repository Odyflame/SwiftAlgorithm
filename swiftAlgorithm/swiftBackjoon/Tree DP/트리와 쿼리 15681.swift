//
//  트리와 쿼리 15681.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

//func solution15681() {
//
//    var NRQ = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var node = [[Int]](repeating: [Int](), count: NRQ[0] + 1)
//    var dp = [Int](repeating: 1, count: NRQ[0] + 1)
//    var visit = [Bool](repeating: false, count: NRQ[0] + 1)
//
//    for i in 0 ..< NRQ[0] - 1 {
//        var UV = readLine()!.split(separator: " ").map { Int($0)! }
//
//        node[UV[0]].append(UV[1])
//        node[UV[1]].append(UV[0])
//    }
//
//    func DFS(pos: Int) -> Int {
//
//        if visit[pos] { return dp[pos] }
//        visit[pos] = true
//
//        for next in node[pos] {
//
//            if !visit[next] {
//                dp[pos] = dp[pos] + DFS(pos: next)
//            }
//        }
//
//        return dp[pos]
//    }
//
//    DFS(pos: NRQ[1])
//
//    for i in 0 ..< NRQ[2] {
//        var temp = Int(readLine()!)!
//        print(dp[temp])
//    }
//}
