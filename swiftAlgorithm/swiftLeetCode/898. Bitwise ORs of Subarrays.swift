//
//  898. Bitwise ORs of Subarrays.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/03.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func subarrayBitwiseORs(_ arr: [Int]) -> Int {
    var answer = 0
    var set = [[Int]]()
    var visit = [Bool](repeating: false, count: arr.count)
    
    func DFS(depth: Int, sum: [Int]) {
        
        if depth == arr.count {
            if !sum.isEmpty {
                set.append(sum)
            }
            return
        }
        
        
        for i in depth ..< arr.count {
            if !visit[i] {
                visit[i] = true
                DFS(depth: depth + 1, sum: sum)
                var tempSum = sum
                tempSum.append(arr[i])
                DFS(depth: depth + 1, sum: tempSum)
                tempSum.removeLast()
                visit[i] = false
            }
        }
        
    }
    
    DFS(depth: 0, sum: [])
    
    print(set)
    return set.count - 1
}
