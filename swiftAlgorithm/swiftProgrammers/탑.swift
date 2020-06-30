//
//  탑.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/30.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ heights:[Int]) -> [Int] {
    
    var answer = [Int]()
    var maxHeight: (Int,Int) = (0, 1)
    
    for i in 0 ..< heights.count {
        
        if i == 0 {
            answer.append(0)
        }
        else {
            for j in stride(from: i, to: -1, by: -1) {
                if heights[j] > heights[i] {
                    answer.append(j + 1)
                    break
                } else if j == 0{
                    answer.append(0)
                }
            }
        }
        
    }
    
    return answer
}
