//
//  모두 0으로 만들기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/27.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ a:[Int], _ edges:[[Int]]) -> Int64 {
//
//    struct Point {
//        var value: Int64
//        var edge: [Int]
//    }
//
//    var nodes = [Point]()
//    var visited = [Bool](repeating: false, count: a.count)
//    var sum = 0
//    var answer: Int64 = 0
//
//    for i in a {
//        sum += i
//        nodes.append(Point(value: Int64(i), edge: []))
//    }
//
//    if sum != 0 {
//        return -1
//    }
//
//    for edge in edges {
//        nodes[edge[0]].edge.append(edge[1])
//        nodes[edge[1]].edge.append(edge[0])
//    }
//
//    dfs(value: 0)
//
//    func dfs(value: Int) -> Int64 {
//        visited[value] = true
//
//        for i in 0 ..< nodes[value].edge.count {
//            var next = nodes[value].edge[i]
//            if !visited[next] {
//                nodes[value].value += dfs(value: next)
//            }
//        }
//
//        answer += abs(nodes[value].value)
//
//        return nodes[value].value
//    }
//
//    return answer
//}
