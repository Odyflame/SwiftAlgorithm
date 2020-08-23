//
//  Rotate Image.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func rotate(_ matrix: inout [[Int]]) {
    var answer = [[Int]](repeating: [], count: matrix.count)
    for i in 0..<matrix.count {
        for j in 0..<matrix[i].count {
            answer[i].append(matrix[matrix[i].count - j - 1][i])
        }
    }
    matrix = answer
}
