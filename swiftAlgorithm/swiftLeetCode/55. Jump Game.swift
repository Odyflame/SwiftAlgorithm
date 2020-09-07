//
//  55. Jump Game.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/23.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func canJump(_ nums: [Int]) -> Bool {
    var answer = false
    var nums = nums
    
    var dest = nums.count - 1
    var cur = 0
    var furthest = 0
    
    while furthest >= cur {
        let reach = cur + nums[cur]
        if reach >= dest {
            return true
        }
        
        furthest = furthest > reach ? furthest : reach
        cur += 1
    }
    
    return answer
}

// 시간초과
//func canJumpDFS(index: Int, nums: inout [Int] ) -> Bool {
//
//    var answer = false
//    if index >= nums.count - 1 {
//        return true
//    }
//
//    for i in 0..<nums[index] {
//        answer = answer || canJumpDFS(index: index + i + 1, nums: &nums)
//    }
//
//    return answer
//}
