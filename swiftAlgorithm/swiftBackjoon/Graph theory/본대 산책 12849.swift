//
//  본대 산책 12849.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/08.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//// 다시 풀어봐야 한다
//// https://changicho.tistory.com/entry/%EB%B0%B1%EC%A4%8012849%EB%B3%B8%EB%8C%80-%EC%82%B0%EC%B1%85 참조한 코드
//func solution12849() {
//    
//    var D = Int(readLine()!)!
//    
//    var dp = [Int](repeating: 0, count: 8)
//    
//    
//    dp[0] = 1
//    
//    for _ in 0 ..< D {
//        var tempDP = [Int](repeating: 0, count: 8)
//        
//        tempDP[0] = dp[1] + dp[3]
//        tempDP[1] = dp[0] + dp[2] + dp[3]
//        tempDP[2] = dp[1] + dp[3] + dp[4] + dp[5]
//        tempDP[3] = dp[0] + dp[1] + dp[2] + dp[5]
//        tempDP[4] = dp[2] + dp[5] + dp[6]
//        tempDP[5] = dp[2] + dp[3] + dp[4] + dp[7]
//        tempDP[6] = dp[4] + dp[7]
//        tempDP[7] = dp[5] + dp[6]
//        
//        for i in 0 ..< dp.count {
//            dp[i] = tempDP[i] % 1000000007
//        }
//    }
//    
//    print(dp[0])
//}
