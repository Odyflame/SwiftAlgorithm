//
//  펠린드롬 만들기 1695.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/13.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution1695() {
    let N = Int(readLine()!)!
    var dp = [[Int]](repeating: [Int](repeating: -1, count: N), count: N)
    
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    func DFS(start: Int, end: Int) -> Int {
        
        if start >= end {
            return 0
        }
        
        if dp[start][end] != -1 {
            return dp[start][end]
        }
        
        dp[start][end] = 0
        
        if arr[start] == arr[end] {
            dp[start][end] += DFS(start: start + 1, end: end - 1)
        } else {
            dp[start][end] += min(DFS(start: start + 1, end: end), DFS(start: start, end: end - 1)) + 1
        }
        
        return dp[start][end]
    }
    
    print(DFS(start: 0, end: N - 1))
    
}
