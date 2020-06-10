//
//  zigzag conversion.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func convert(_ s: String, _ numRows: Int) -> String {
    
    var answer = ""
    var sArray = Array(s)
    
    if numRows == 1 {
        return s
    }
    
    if s.count == 1 || s.count == 2{
        return s
    }
    
    var i = 0
    var goingDown = 1
    var vec = [String](repeating: "", count: numRows)
    
    for (index, _) in sArray.enumerated() {
        
        if i == 0 {
            goingDown = 1
        } else if i == numRows - 1 {
            goingDown = -1
        }
        
        vec[i] += String(sArray[index])
        i += goingDown
    }
    
    for member in vec {
        answer += member
    }
    
    return answer
}
