//
//  85. Maximal Rectangle.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func maximalRectangle(_ matrix: [[Character]]) -> Int {
    guard matrix.count > 0 && matrix[0].count > 0 else { return 0 }
    let M = matrix.count, N = matrix[0].count
    
    let matrix = [Array(repeating: 0, count: N)] + matrix.map { $0.map { ($0 == "1" ? 1 : 0) } }
    var dpH = Array(repeating: Array(repeating: 0, count: N), count: M+1)
    
    var dpL = dpH
    var dpR = dpH.map { $0.map { _ in N-1 } }
    
    var result = 0
    for i in 1...M {
        // get heights
        for j in 0..<N where matrix[i][j] == 1 {
            dpH[i][j] = dpH[i-1][j] + matrix[i][j]
        }
        
        // get left edges
        for j in 0..<N where matrix[i][j] == 1 {
            dpL[i][j] = (j == 0 || matrix[i][j-1] == 0) ? j : dpL[i][j-1]
        }
        for j in 0..<N where matrix[i][j] == 1 {
            dpL[i][j] = max(dpL[i][j], dpL[i-1][j])
        }
        
        // get right edges
        for j in (0..<N).reversed() where matrix[i][j] == 1 {
            dpR[i][j] = (j == N-1 || matrix[i][j+1] == 0) ? j : dpR[i][j+1]
        }
        for j in (0..<N).reversed() where matrix[i][j] == 1 {
            dpR[i][j] = min(dpR[i][j], dpR[i-1][j])
        }
        
        // caculate
        for j in 0..<N where matrix[i][j] == 1 {
            let l = dpL[i][j], r = dpR[i][j], h = dpH[i][j]
            result = max(result, (r - l + 1) * h)
        }
    }
    
    // print(dpH.map { $0.map(String.init).joined(separator: " ") }.joined(separator: "\n"))
    // print("----")
    // print(dpL.map { $0.map(String.init).joined(separator: " ") }.joined(separator: "\n"))
    // print("----")
    // print(dpR.map { $0.map(String.init).joined(separator: " ") }.joined(separator: "\n"))
    
    return result
}
