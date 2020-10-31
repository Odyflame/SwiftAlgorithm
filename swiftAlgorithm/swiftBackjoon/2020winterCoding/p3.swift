//
//  3.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/31.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ v:[[Int]]) -> [Int] {
//
//    var visit = [[Bool]](repeating: [Bool](repeating: false, count: v.count), count: v.count)
//
//    var dx = [0,0,1,-1]
//    var dy = [1,-1,0,0]
//
//    func Range(x: Int, y: Int) -> Bool {
//        return x >= 0 && y >= 0 && x < v.count && y < v.count
//    }
//
//    func DFS(x: Int, y: Int, check: Int) -> Int {
//
//        if visit[x][y] { return 0 }
//
//        var queue = [(Int, Int)]()
//        queue.append(( x, y ))
//
//        var ans = 1
//        visit[x][y] = true
//
//        while !queue.isEmpty {
//            var temp = queue.removeFirst()
//
//            for i in 0 ..< 4 {
//
//                if Range(x: dx[i] + temp.0, y: dy[i] + temp.1) && v[dx[i] + temp.0][dy[i] + temp.1] == check && !visit[dx[i] + temp.0 ][dy[i] + temp.1] {
//                    ans += 1
//                    visit[dx[i] + temp.0 ][dy[i] + temp.1] = true
//                    queue.append(( dx[i] + temp.0, dy[i] + temp.1 ))
//                }
//
//            }
//        }
//
//        return ans
//    }
//
//    var a = 0
//    var b = 0
//    var c = 0
//
//    for i in 0 ..< v.count {
//        for j in 0 ..< v.count {
//            if v[i][j] == 0 { // 무인 경우
//
//                var temp = DFS(x: i, y: j, check: 0)
//
//                if temp > 0 {
//                    a += 1
//                }
//
//            } else if v[i][j] == 1 { // 고구마인 경우
//                var temp = DFS(x: i, y: j, check: 1)
//
//                if temp > 0 {
//                    b += 1
//                }
//            } else { // 감자인 경우
//                var temp = DFS(x: i, y: j, check: 2)
//
//                if temp > 0 {
//                    c += 1
//                }
//            }
//        }
//    }
//
//    return [a, b, c]
//}
