//
//  73. Set Matrix Zeroes.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func setZeroes(_ matrix: inout [[Int]]) {
    
    var answer = [(Int,Int)]()
    
    for i in 0 ..< matrix.count {
        for j in 0 ..< matrix[0].count {
            if matrix[i][j] == 0 {
                answer.append((i, j))
            }
        }
    }
    
    for value in answer {
        for i in 0 ..< matrix.count {
            matrix[i][value.1] = 0
        }
        for i in 0 ..< matrix[0].count {
            matrix[value.0][i] = 0
        }
    }
    
}
