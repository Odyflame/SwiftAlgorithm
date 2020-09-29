//
//  최단경로 1753.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// 다익스트라 알고리즘
// 한 시작점에서 모든 도착점까지의 최단경로 구하기 알고리즘이다.
func solution1753() {
    var VE = readLine()!.components(separatedBy: " ").map { Int($0)! }
    
    var startPos = Int(readLine()!)!
    
    var dp = [[Int]](repeating: [Int](repeating: 9999999, count: VE[0] + 1), count: VE[0] + 1)
    
    for i in 0 ..< VE[1] {
        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        dp[temp[0]][temp[1]] = min(temp[2], dp[temp[0]][temp[1]])
    }
    
    
}
