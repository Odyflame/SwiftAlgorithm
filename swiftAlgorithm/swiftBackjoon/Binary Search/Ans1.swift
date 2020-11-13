//
//  Ans1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


//func solution1(_ road: String,_ n : Int) -> Int {
//
//    var answer = 0
//
//    var water = road.split(separator: "1").map { Int($0.count) }
//    var road = road.split(separator: "0").map { Int($0.count) }
//
//    var visit = [Bool](repeating: false, count: road.count)
//
//    var mySet = Set<[Int]>()
//
//    func DFS(depth: Int, waters: [Int] ) {
//
//        if depth == 0 {
//
//            if mySet.contains(waters) {
//                return
//            }
//
//            var sum = 0
//
//            for i in 0 ..< waters.count {
//
//            }
//
//            for i in 0 ..< road.count {
//                if i == road.count - 1 {
//                    if sum == 0 {
//                        answer = max(answer, road[i])
//                    }
//                } else {
//                    if waters[i] == 0 {
//                        if sum == 0 {
//                            answer = max(answer, road[i] + road[i + 1])
//                            sum = road[i] + road[i + 1]
//                        } else {
//                            answer = max(answer, sum + road[i + 1])
//                            sum += road[i + 1]
//                        }
//                    } else {
//                        answer = max(answer, road[i])
//                        sum = 0
//                    }
//                }
//            }
//
//        }
//
//        var waters = waters
//
//        for i in 0 ..< waters.count {
//            if waters[i] > 0 {
//                waters[i] -= 1
//                DFS(depth: depth - 1, waters: waters)
//                waters[i] += 1
//            }
//        }
//    }
//
//    DFS(depth: n, waters: water)
//
//    return answer + n
//}
