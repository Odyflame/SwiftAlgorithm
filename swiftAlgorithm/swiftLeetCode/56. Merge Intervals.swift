//
//  56. Merge Intervals.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/08/23.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func merge(_ intervals: [[Int]]) -> [[Int]] {
    var answer = [[Int]]()
    
    if intervals.count <= 1 {
        return intervals
    }
    
    var intervals = intervals.sorted {
        return $0[0] < $1[0]
    }
    
    var temp = intervals[0]
    
    for index in 0..<intervals.count - 1 {
        if temp[1] >= intervals[index + 1][0] {
            if temp[1] < intervals[index + 1][1] {
                temp = [temp[0], intervals[index + 1][1]]
            } else {
                temp = [temp[0], temp[1]]
            }
            
        } else {
            answer.append(temp)
            temp = intervals[index + 1]
        }
    }
    answer.append(temp)
    
    return answer
}
