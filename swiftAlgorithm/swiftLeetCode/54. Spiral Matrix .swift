//
//  54. Spiral Matrix .swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func spiralOrder(_ matrix: [[Int]]) -> [Int] {
    var answer: [Int] = []
    
    guard matrix.count > 0 else {
        return answer
    }
    
    var r1 = 0, r2 = matrix.count
    var c1 = 0, c2 = matrix[0].count
    
    while r1 < r2 && c1 < c2 {
        for i in stride(from: c1, to: c2, by: 1) {
            answer.append(matrix[r1][i])
        }
        
        for i in stride(from: r1 + 1, to: r2, by: 1) {
            answer.append(matrix[i][c2 - 1])
        }
        
        if r1 < r2 - 1 && c1 < c2 - 1 {
            for i in stride(from: c2 - 2, to: c1, by: -1) {
                answer.append(matrix[r2 - 1][i])
            }
            for i in stride(from: r2 - 1, to: r1, by: -1) {
                answer.append(matrix[i][c1])
            }
        }
        
        r1 += 1
        r2 -= 1
        c1 += 1
        c2 -= 1
    }
    
    return answer
}
