//
//  알고스팟 1261.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/25.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1261() {
    
    struct Point: Equatable {
        var xpos: Int = 0
        var ypos: Int = 0
        var cost: Int = 0
    }
    
    var NM = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    var arr = [[Int]](repeating: [Int](repeating: 0, count: NM[0] + 1), count: NM[1] + 1)
    var dp =  [[Int]](repeating: [Int](repeating: 9999999, count: NM[0] + 1), count: NM[1] + 1)
    
    for i in  0 ..< NM[1] {
        arr[i] = readLine()!.components(separatedBy: " ").map { Int($0)! }
    }
    
    func DESC(a: Point, b: Point) -> Bool {
        return a.cost < b.cost
    }
    
    var priorityQueue = PriorityQueue(sort: DESC, elements: [Point]())
    
    dp[0][0] = 0
    
    priorityQueue.enqueue(Point(xpos: 0, ypos: 0, cost: 0))
    while !priorityQueue.isEmpty {
        var temp = priorityQueue.dequeue()!
        
        if arr[temp.xpos][temp.ypos] + temp.cost > dp[temp.xpos][temp.ypos] {
            
        }
        
        
    }
    
}
