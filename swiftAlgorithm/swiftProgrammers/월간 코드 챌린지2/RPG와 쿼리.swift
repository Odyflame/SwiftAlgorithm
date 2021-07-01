//
//  RPG와 쿼리.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/28.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ z:Int, _ roads:[[Int]], _ queries:[Int64]) -> [Int64] {
    
    var dp = [Int64](repeating: 0, count: n + 1)
    var nodes = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)
    
    for road in roads {
        nodes[road[0]][road[1]] = road[2]
    }
    
    for i in 0 ..< queries.count {
        
    }
    
    return []
}
