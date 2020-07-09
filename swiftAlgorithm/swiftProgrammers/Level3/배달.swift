//
//  배달.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation
//func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
//    var answer = 0
//    struct Path {
//        var pointAndCost = [(Int, Int)]() // 도착점, 코스트
//        init(_ check: Int = 0) {
//
//        }
//    }
//    var myPaths = [Path](repeating: Path(), count: N + 1)
//
//    for d in road {
//        myPaths[d[0]].pointAndCost.append( (d[1], d[2] ) )
//        myPaths[d[1]].pointAndCost.append( (d[0], d[2] ) )
//    }
//
//    typealias myPosition = (point: Int, sum: Int)
//    var dp = [Int](repeating: 99999999, count: 51)
//
//    var qu = [myPosition]()
//    qu.append((1, 0 )) // 현재위치, 현재 코스트
//
//    dp[1] = 1
//    while !qu.isEmpty {
//        var temp = qu.removeFirst()
//
//        if temp.1 > dp[temp.0] {
//            continue
//        }
//        for i in myPaths[temp.0].pointAndCost {
//            if i.1 + temp.1 < dp[i.0] { // k
//                var tempPos = myPosition(i.0, i.1 + temp.1)
//                dp[i.0] = i.1 + temp.1
//                qu.append( tempPos )
//            }
//        }
//
//    }
//
//    for i in dp {
//        if i <= k {
//            answer += 1
//        }
//    }
//
//    return answer
//}

struct DjikstarElement: Comparable {
    let distance: Int
    let vertex: Int
    let preVertex: Int
    
    static func < (_ lhs: DjikstarElement, _ rhs: DjikstarElement) -> Bool {
        if lhs.distance != rhs.distance {
            return lhs.distance < rhs.distance
        }
        
        if lhs.vertex < rhs.vertex {
            return lhs.vertex < rhs.vertex
        }
        
        return lhs.preVertex < rhs.preVertex
    }
}

extension Array where Element == DjikstarElement {
    mutating func binaryInsert(_ element: Element) {
        var left = 0
        var right = count
        
        while left <= right {
            let mid = (left + right) / 2
            
            if self[mid] < element {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        self.insert(element, at: left)
    }
}

func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var graph: [[Int]] = Array(repeating: Array(repeating: 123456678, count: N), count: N)
    
    var dist = Array(repeating: 123456789, count: N)
    var heap: [ DjikstarElement] = []
    
    for r in road {
        if graph[r[0]-1][r[1]-1]>=r[2] {
            graph[r[0]-1][r[1]-1] = r[2]
            graph[r[1]-1][r[0]-1] = r[2]
        }
    }
    
    for i in 0..<N {
        heap.append(DjikstarElement(distance: 123456789, vertex: i, preVertex: -1))
    }
    
    dist[0] = 0
    heap[0] = DjikstarElement(distance: 0, vertex: 0, preVertex: -1)
    
    while !heap.isEmpty {
        let v = heap.removeFirst()
        
        if v.distance<=dist[v.vertex] {
            for i in 0..<N {
                let temp = Swift.min(dist[i], dist[v.vertex]+graph[v.vertex][i])
                
                if dist[i]>temp {
                    dist[i] = temp
                    heap.binaryInsert(DjikstarElement(distance: temp, vertex: i, preVertex: v.vertex))
                }
            }
        }
    }
    
    return dist.filter { $0 <= k }.count
}
