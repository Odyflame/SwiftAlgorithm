//
//  배달.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation
func solution(_ N:Int, _ road:[[Int]], _ k:Int) -> Int {
    var answer = 0
    struct Path {
        var pointAndCost = [(Int, Int)]() // 도착점, 코스트
        init(_ check: Int = 0) {
            
        }
    }
    var myPaths = [Path](repeating: Path(), count: N + 1)
    
    for d in road {
        myPaths[d[0]].pointAndCost.append( (d[1], d[2] ) )
        myPaths[d[1]].pointAndCost.append( (d[0], d[2] ) )
    }
    
    typealias myPosition = (point: Int, sum: Int)
    var dp = [Int](repeating: 99999999, count: 51)
    
    var qu = [myPosition]()
    qu.append((1, 0 )) // 현재위치, 현재 코스트
    
    dp[1] = 1
    while !qu.isEmpty {
        var temp = qu.removeFirst()
        
        if temp.1 > dp[temp.0] {
            continue
        }
        for i in myPaths[temp.0].pointAndCost {
            if i.1 + temp.1 < dp[i.0] { // k
                var tempPos = myPosition(i.0, i.1 + temp.1)
                dp[i.0] = i.1 + temp.1
                qu.append( tempPos )
            }
        }
        
    }
    
    for i in dp {
        if i <= k {
            answer += 1
        }
    }
    
    return answer
}
