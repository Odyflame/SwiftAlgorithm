//
//  텔레포트 16958.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution16958() {
//    var MT = readLine()!.split(separator: " ").map { Int($0)! }
//
//    struct Point {
//        var x = 0
//        var y = 0
//        var special = 0
//    }
//
//    var cities = [Point]()
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: MT[0]), count: MT[0])
//
//    for i in 0 ..< MT[0] {
//        let input = readLine()!.split(separator: " ").map { Int($0)! }
//        cities.append(Point(x: input[1], y: input[2], special: input[0]))
//    }
//
//    func getNearPoint(_ a: Int) -> Int {
//        var ret = -1
//        var minIdx = -1
//
//        for i in 0 ..< MT[0] {
//            if cities[i].special == 0 { continue }
//
//            if ret == -1 || ret > dp[a][i] {
//                ret = dp[a][i]
//                minIdx = i
//            }
//        }
//        return minIdx
//    }
//
//    func getDistance(_ a: Int, _ b: Int) -> Int {
//        var answer = dp[a][b]
//        if cities[a].special == 1 && cities[b].special == 1 {
//            answer = min(MT[1], answer)
//        }
//
//        var nearA = getNearPoint(a)
//        var nearB = getNearPoint(b)
//
//        if nearA != -1 && nearB != -1 {
//            answer = min(answer, dp[a][nearA] + MT[1] + dp[nearB][b])
//        }
//
//        return answer
//    }
//
//    for i in 0 ..< MT[0] {
//        for j in i + 1 ..< MT[0] {
//            dp[i][j] = abs( cities[i].x - cities[j].x) + abs(cities[i].y - cities[j].y)
//            dp[j][i] = dp[i][j]
//        }
//    }
//
//    let N = Int(readLine()!)!
//
//    for i in 0 ..< N {
//        let input = readLine()!.split(separator: " ").map { Int($0)! }
//        print(getDistance (input[0] - 1, input[1] - 1))
//    }
//}
