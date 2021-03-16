//
//  스티커 모으기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/11.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ sticker:[Int]) -> Int{
//    var answer = 0
//    
//    var dp = [Int](repeating: 0, count: sticker.count)
//    
//    if sticker.count == 1{
//        return sticker.first!
//    } else if sticker.count == 2{
//        return sticker.max()!
//    }
//    
//    dp[0] = sticker[0]
//    dp[1] = sticker[0]
//    for i in 0 ..< sticker.count - 3 {
//        dp[i+2] = max(dp[i + 1], dp[i] + sticker[i + 2])
//    }
//    var check = dp.max()!
//    
//    dp = [Int](repeating: 0, count: sticker.count)
//    
//    dp[0] = 0
//    dp[1] = sticker[1]
//    for i in 0 ..< sticker.count - 2 {
//        dp[i+2] = max(dp[i + 1], dp[i] + sticker[i + 2])
//    }
//    answer = max(check, dp.max()!)
//    
//    return answer
//}
