//
//  77. Combinations.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//다시해보는게 좋을듯
func combine(_ n: Int, _ k: Int) -> [[Int]] {
    var answer = [[Int]]()
    var candidate = [Int]()
    
    func backtracking(_ answer: inout [[Int]], _ candidate: inout [Int], _ depth: Int, _ n: Int, _ k: Int) {
        if k == 0 {
            answer.append(candidate)
            return
        }
        
        if depth > n {
            return
        }
        
        for i in depth ... n {
            candidate.append(i)
            backtracking(&answer, &candidate, i + 1, n, k - 1)
            candidate.removeLast()
        }
    }
    
    backtracking(&answer, &candidate, 1, n, k)
   
    return answer
}
