//
//  53. Maximum Subarray.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var answer = -9999999
    
    var dp = [Int](repeating: 0, count: nums.count)
    
    if nums.count == 1 {
        return nums[0]
    }
    
    dp[0] = nums[0]
    answer = dp[0]
    for i in 0..<nums.count - 1 {
        dp[i + 1] = dp[i] + nums[i + 1] >= nums[i + 1] ? dp[i] + nums[i + 1] : nums[i + 1]
        
        answer = answer > dp[i + 1] ? answer : dp[i + 1]
    }
    
    return answer
}
