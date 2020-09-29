//
//  회장뽑기 2660.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution2660() {
    var memberNum = Int(readLine()!)!
    
    var dp = [[Int]](repeating: [Int](repeating: 9999999, count: memberNum + 1), count: memberNum + 1)
    
    for i in 1...memberNum {
        dp[i][i]  = 0
    }
    
    while true {
        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
        
        if temp[0] == -1 && temp[1] == -1 {
            break
        }
        
        dp[temp[0]][temp[1]] = 1
        dp[temp[1]][temp[0]] = 1
    }
    
    for k in 1 ... memberNum {
        for i in 1 ... memberNum {
            for j in 1 ... memberNum {
                dp[i][j] = dp[i][j] > dp[i][k] + dp[k][j] ? dp[i][k] + dp[k][j] : dp[i][j]
            }
        }
    }
    
    var answer = 9999999
    var stack = [Int]()
    
    for i in 1 ... memberNum {
        
        var maxFriend = 0
        for j in 1 ... memberNum {
            maxFriend = max(maxFriend, dp[i][j])
        }
        
        if answer > maxFriend {
            
            answer = maxFriend
            stack.removeAll()
            stack.append(i)
            
        } else if answer == maxFriend {
            stack.append(i)
        }
        
    }
    
    print("\(answer)" + " " + "\(stack.count)")
    var ans = ""
    for i in stack {
        ans += "\(i) "
    }
    
    print(ans)
}


