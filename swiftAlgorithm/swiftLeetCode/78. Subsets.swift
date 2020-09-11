//
//  78. Subsets.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func subsets(_ nums: [Int]) -> [[Int]] {
    var answer = [[Int]]()
    var ans = Set<[Int]>()
    
    var check = [Bool](repeating: false, count: nums.count)
    
    func recursive( depth: Int, value: Set<Int>) {
        if depth == nums.count {
            return
        }
        
        for i in depth..<nums.count {
            var temp = value
            temp.insert(nums[i])
            if !ans.contains(Array(temp).sorted()) {
                ans.insert(Array(temp).sorted())
                recursive(depth: depth + 1, value: temp)
            }
        }
        
    }
    
    recursive(depth: 0, value: [])
    
    ans.forEach { (value) in
        answer.append(value)
    }
    answer.append([])
    
    return answer
}
