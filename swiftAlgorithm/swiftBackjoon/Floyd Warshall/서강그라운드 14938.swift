//
//  서강그라운드 14938.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/19.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution14938() {
//    
//    let NMR = readLine()!.split(separator: " ").map { Int($0)! }
//    var items = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var dp = [[Int]](repeating: [Int](repeating: 1000000000, count: NMR[0] + 1), count: NMR[0] + 1)
//    //var abls = [[(Int, Int)]](repeating: [(Int, Int)](), count: NMR[0] + 1)
//    
//    for _ in 0 ..< NMR[2] {
//        var abl = readLine()!.split(separator: " ").map { Int($0)! }
//        //abls[abl[0]].append((abl[1], abl[2]))
//        
//        dp[abl[0]][abl[1]] = abl[2]
//        dp[abl[1]][abl[0]] = abl[2]
//    }
//    
//    for k in 1 ... NMR[0] {
//        for i in 1 ... NMR[0] {
//            for j in 1 ... NMR[0] {
//                
//                dp[i][j] = dp[i][k] + dp[k][j] < dp[i][j] ? dp[i][k] + dp[k][j] : dp[i][k]
//                
//            }
//        }
//    }
//    
//    var answer = 0
//    
//    for i in 1 ... NMR[0] {
//        var sum = 0
//        for j in 1 ... NMR[0] {
//            if i == j {
//                sum += items[i - 1]
//            } else if dp[i][j] <= NMR[1] {
//                sum += items[j - 1]
//            }
//        }
//        answer = max(answer, sum)
//    }
//    
//    print(answer)
//}
