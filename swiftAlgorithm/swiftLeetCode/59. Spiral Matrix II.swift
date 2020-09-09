//
//  59. Spiral Matrix II.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func generateMatrix(_ n: Int) -> [[Int]] {
    var answer = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
    
    var r1 = 0
    var r2 = n
    var c1 = 0
    var c2 = n
    var num = 1
    
    while r1 < r2 && c1 < c2  {
        
        for i in r1 ..< r2 {
            answer[c1][i] = num
            num += 1
        }
        
        for i in c1 + 1 ..< c2 {
            answer[i][r2-1] = num
            num += 1
        }
        
        if r1 < r2-1 && c1 < c2-1 {
            for i in stride(from: r2-2, to: r1, by: -1) {
                answer[c2 - 1][i] = num
                num += 1
            }
            
            for i in stride(from: c2-1, to: c1, by: -1) {
                answer[i][r1] = num
                num += 1
            }
        }
        
        r1 += 1
        r2 -= 1
        c1 += 1
        c2 -= 1
        
    }
    
    return answer
}
