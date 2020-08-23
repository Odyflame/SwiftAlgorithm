//
//  Permutations.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func permute(_ nums: [Int]) -> [[Int]] {
    var nums = nums
    var answer = [[Int]]()
    
    permuteDFS(&nums, 0, &answer)
    return answer
}

func permuteDFS(_ nums: inout [Int], _ depth: Int, _ answer: inout [[Int]]) {
    if depth >= nums.count {
        answer.append(nums)
        return
    }
    
    for i in depth..<nums.count {
        nums.swapAt(depth, i)
        permuteDFS(&nums, depth + 1, &answer)
        nums.swapAt(depth, i)
    }
}
