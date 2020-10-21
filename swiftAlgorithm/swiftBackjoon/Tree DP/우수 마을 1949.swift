//
//  우수 마을 1949.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution1949() {
    var N = Int(readLine()!)!
    
    var person = readLine()!.split(separator: " ").map { Int($0)! }
    
    var node = [[Int]](repeating: [Int](), count: N + 1)
    var dp = [[Int64]](repeating: [Int64](repeating: 1, count: N + 1), count: N + 1)
    var visit = [Bool](repeating: false, count: N + 1)
    person.append(0)
    
    for i in 0 ..< N-1 {
        var temp = readLine()!.split(separator: " ").map { Int($0)! }
        
        node[temp[0]].append(temp[1])
        node[temp[1]].append(temp[0])
    }
    
    func DFS(pos: Int) {
        if !visit[pos] {
            
            visit[pos] = true
            dp[pos][0] = 0
            dp[pos][1] = Int64(person[pos])
            
            for next in node[pos] {
                if !visit[next] {
                    DFS(pos: next)
                    
                    dp[pos][0] = dp[pos][0] + max(dp[next][0], dp[next][1])
                    dp[pos][1] = dp[pos][1] + dp[pos][0]
                }
            }
            
        }
    }
    
    DFS(pos: 1)
    print(max(dp[1][0], dp[1][1]))
}
