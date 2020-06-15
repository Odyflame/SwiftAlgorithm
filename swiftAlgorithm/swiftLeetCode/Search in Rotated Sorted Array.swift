//
//  Search in Rotated Sorted Array.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/15.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func search(_ nums: [Int], _ target: Int) -> Int {
    
    var nums2 = nums
    var answer = 0
    
    if nums.isEmpty {
        return -1
    }
    
    repeat {
        
        if nums2[0] == target {
            return answer
        }
        answer += 1
        
        var temp = nums2.removeFirst()
        nums2.append(temp)
        
    } while (nums2 != nums)
    
    return -1
}
