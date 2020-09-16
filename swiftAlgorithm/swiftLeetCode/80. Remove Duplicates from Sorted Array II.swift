//
//  Remove Duplicates Rrom Sorted Array.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//시간초과
//func removeDuplicates(_ nums: inout [Int]) -> Int {
//
//    var items = [Int]()
//
//    for member in nums {
//        if !items.contains(member) {
//            items.append(member)
//        }
//    }
//
//    nums = items
//    return items.count
//}

func removeDuplicates(_ nums: inout [Int]) -> Int {
    
    var idx = nums.count-1
    
    while idx > 1 {
        if nums[idx] == nums[idx-2] {
            nums.remove(at: idx)
        }
        idx -= 1
    }
    return nums.count
}
