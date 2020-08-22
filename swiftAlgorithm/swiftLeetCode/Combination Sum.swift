//
//  Combination Sum.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

var Answer = Set<[Int]>()
var Candidates = [Int]()
func combinationSumDfs(_ target: Int, _ candidates: [Int], _ sum: Int, _ index: Int) {
    if target == sum {
        Answer.insert(candidates)
    } else if target < sum {
        
    } else {
        for i in index ..< Candidates.count {
            var temp = candidates
            temp.append(Candidates[i])
            combinationSumDfs(target, temp, sum + Candidates[i], i)
        }
    }
}

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    
    Candidates = candidates
    
    for i in 0..<candidates.count {
        combinationSumDfs(target, [], 0, i)
    }
    var answer = Array(Answer)
    
    return answer
}
