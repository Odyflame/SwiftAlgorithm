//
//  Find First and Last Position of Element in Sorted Array.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var Answer: [Int] = []
    var min = 9999999, max = 0
    for (index, value) in nums.enumerated() {
        if value == target {
            if min > index {
                min = index
            }
            if max < index {
                max = index
            }
        }
    }
    
    if min == 9999999 && max == 0 {
        return [-1,-1]
    }
    
    Answer = [min, max]
    
    return Answer
}
