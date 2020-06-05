//
//  파도반 수열 9461.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution9461() {
    //guard let input = readLine()?.split(separator: " ").map(String.init) else { return }
    guard let testcase = readLine() else { return }
    
    var dp = [Int](repeating: 1, count: 105)
    
    for i in 4..<dp.count {
        dp[i] = dp[i-2] + dp[i-3]
    }
    
    for i in 0..<Int(testcase)! {
        guard let input = readLine() else {
            return
        }
        print(dp[Int(input)! - 1])
    }
}


