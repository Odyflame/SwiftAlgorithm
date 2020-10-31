//
//  p1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/31.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1(_ n:Int, _ delivery:[[Int]]) -> String {
//    
//    var dp = [String](repeating: "?", count: n)
//    
//    func sor(a: [Int], b: [Int]) -> Bool {
//        return a[2] >= b[2]
//    }
//    
//    var delivery = delivery
//    delivery.sort(by: sor)
//    
//    for value in delivery {
//        
//        if value[2] == 1 {
//            dp[value[0] - 1] = "O"
//            dp[value[1] - 1] = "O"
//        } else {
//            if dp[value[0] - 1] == "O" {
//                dp[value[1] - 1] = "X"
//            } else if dp[value[1] - 1] == "O" {
//                dp[value[0] - 1] = "X"
//            }
//        }
//        
//    }
//    
//    var answer = ""
//    for i in dp {
//        answer += i
//    }
//    
//    return answer
//}
