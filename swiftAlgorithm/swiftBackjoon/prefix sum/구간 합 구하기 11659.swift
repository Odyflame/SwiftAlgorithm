//
//  누적 합 구하기 11659.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/06.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution11659() {
//    
//    var NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var numbers = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var dp = [Int](repeating: 0, count: NM[0] + 1)
//    dp[1] = numbers[0]
//    
//    for i in 1 ..< numbers.count + 1 {
//        dp[i] = dp[i - 1] + numbers[i - 1]
//    }
//    
//    for i in 0 ..< NM[1] {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        
//        print(dp[temp[1]] - dp[temp[0] - 1])
//    }
//    
//}
