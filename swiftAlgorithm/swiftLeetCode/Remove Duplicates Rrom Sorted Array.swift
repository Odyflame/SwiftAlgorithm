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
    
    if nums.count == 0 {
        return 0
    }
    
    var answer = 0
    
    for j in 1..<nums.count {
        if nums[answer] != nums[j] {
            answer += 1
            nums[answer] = nums[j]
        }
    }
    return answer + 1
}
