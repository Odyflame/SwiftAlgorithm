//
//  특정한 최단 경로.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/26.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution1504() {
//
//    struct Point: Equatable {
//        var startPos: Int
//        var endPos: Int
//        var cost: Int
//    }
//
//    struct Node: Equatable {
//        var endpos: [Int: Int]
//    }
//
//    func DESC(a: Point, b: Point) -> Bool {
//        return a.cost < b.cost
//    }
//
//    let NE = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//    var dp = [[Int]](repeating: [Int](repeating: 9999999, count: NE[0] + 1), count: NE[0] + 1)
//    var road = [Node]()
//    road.reserveCapacity(NE[0] + 1)
//
//    for _ in 0 ..< NE[1] {
//        let temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//        road[temp[0]].endpos[temp[1]] = temp[2]
//        road[temp[1]].endpos[temp[0]] = temp[2]
//    }
//
//    var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    var priority_queue: PriorityQueue = PriorityQueue(sort: DESC, elements: [Point]())
//
//    while !priority_queue.isEmpty {
//        var tempPoint = priority_queue.dequeue()!
//
//        for endPos in road[tempPoint.startPos].endpos {
//            //dp[tempPoint][endPos.key] = min(dp[tempPoint][endPos.key], dp[tempPoint][endPos.] )
//        }
//
//    }
//
//    return
//}
