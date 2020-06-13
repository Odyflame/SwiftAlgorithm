//
//  Divide Two Integer.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func divide(_ dividend: Int, _ divisor: Int) -> Int {
    
    var answer = dividend / divisor
    
    if answer > Int32.max {
        return Int(Int32.max)
    } else if answer < Int32.min {
        return Int(Int32.min)
    }
    
    return answer
}
