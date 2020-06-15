//
//  3sum closet.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/15.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func threeSumClosest(_ nums: [Int], _ target: Int) -> Int {
    
    var answer = 999999999
    
    var nums2 = nums.sorted()
    
    for i in 0 ..< nums2.count {
        
        var left = i + 1
        var right = nums.count - 1
        
        while left < right {
            
            var total = nums2[i] + nums2[left] + nums2[right]
            
            if total == target {
                answer = target
                return answer
            }
            else if total > target {
                right -= 1
            } else {
                left += 1
            }
            
            answer = abs(total - target) > abs(answer - target) ? answer: total
            
        }
    }
    return answer
}

