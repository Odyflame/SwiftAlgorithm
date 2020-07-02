//
//  행렬의 곱셈.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ arr1:[[Int]], _ arr2:[[Int]]) -> [[Int]] {
    var answer = [[Int]]()
    
    for i in 0..<arr1.count {
        
        var temp = [Int]()
        for k in 0..<arr2[0].count {
            var sum = 0
            
            for j in 0..<arr1[i].count {
                sum += arr1[i][j] * arr2[j][k]
            }
            
            temp.append(sum)
        }
        
        answer.append(temp)
    }
    
    return answer
}
