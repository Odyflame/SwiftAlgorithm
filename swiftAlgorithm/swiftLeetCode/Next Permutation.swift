//
//  Next Permutation.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func nextPermutation(_ nums: inout [Int]) {
    guard nums.count > 1 else { return }
    
    let lastIndex = nums.count - 1
    var targetIndex = -1
    outer: for i in 0..<lastIndex {
        if nums[lastIndex - i - 1] < nums[lastIndex - i] {
            targetIndex = lastIndex - i - 1
            
            for j in 0..<lastIndex - targetIndex {
                if nums[targetIndex] < nums[lastIndex - j] {
                    nums.swapAt(targetIndex, lastIndex - j)
                    break outer
                }
            }
            
        }
    }
    
    nums[targetIndex+1...lastIndex].reverse()
}
