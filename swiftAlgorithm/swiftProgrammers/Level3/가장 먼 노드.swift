//
//  가장 먼 노드.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    
    var answer = 0
    
    var dp = Array(repeating: 99999999, count: 20001)
    var check = Array(repeating: false, count: 20001)
    
    var edges = Array(repeating: [Int](), count: 20001)
    
    for i in edge {
        edges[i[0]].append(i[1])
        edges[i[1]].append(i[0])
    }
    
    var qu = [(Int, Int)]()
    qu.append(( 1, 0 )) // start point and cost
    dp[1] = 0
    
    while !qu.isEmpty {
        var temp = qu.removeFirst()
        
        for i in 0..<edges[temp.0].count {
            if dp[edges[temp.0][i]] > temp.1 + 1 { // 안지나갔거나 더 최솟값을 찾을 경우
                dp[edges[temp.0][i]] = temp.1 + 1
                qu.append( ( edges[temp.0][i], temp.1 + 1 ) )
            }
        }
        
    }
    
    var max = 0
    
    for i in 1 ... n {
        if dp[i] > max {
            max = dp[i]
            answer = 1
        } else if dp[i] == max {
            answer += 1
        }
    }
    
    return answer
}
