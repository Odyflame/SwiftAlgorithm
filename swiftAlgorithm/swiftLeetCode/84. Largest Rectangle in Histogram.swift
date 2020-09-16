//
//  84. Largest Rectangle in Histogram.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// 다시해봐야하는것 정말 어려운 스택문제임
func largestRectangleArea(_ heights: [Int]) -> Int {
    
    var heights = heights
    heights.append(0)
    var stack: [Int] = [Int]()
    
    var answer = 0
    
    for i in 0 ..< heights.count {
        
        while !stack.isEmpty && heights[i] < heights[stack.last!] {
            let height = heights[stack.removeLast()]
            var width = i
            if !stack.isEmpty {
                width = i - stack.last! - 1
            }
            answer = max(answer, width*height)
        }
        
        stack.append(i)
    }
    
    return answer
}
