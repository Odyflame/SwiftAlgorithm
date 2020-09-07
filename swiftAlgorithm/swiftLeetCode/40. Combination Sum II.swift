//
//  40. Combination Sum II.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var answer: Set<[Int]> = Set<[Int]>()
    
    func recursive(_ candidiates: [Int],_ target: Int,_ index: Int,_ value: [Int], sum: Int) {
        
        if sum == target {
            answer.insert(value.sorted())
            return
        } else if sum > target {
            return
        }
        if index == candidates.count {
            return
        }
        
        recursive(candidates, target, index + 1, value, sum: sum)
        var value = value
        value.append(candidates[index])
        recursive(candidates, target, index + 1, value, sum: sum + candidates[index])
    }
    
    recursive(candidates, target, 0, [], sum: 0)
    
    return answer.map { $0 }
}
