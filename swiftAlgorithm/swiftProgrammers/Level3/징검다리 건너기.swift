//
//  징검다리 건너기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/18.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation


func solution(_ stones:[Int], _ k:Int) -> Int {
    
    var left = 0, right = 200000000, mid = 0
    
    while left < right {
        mid = (left + right) / 2
        
        stones.map { stone in
            if stone - mid < 0 {
                return 0
            } else {
                return stone - mid
            }
        }
        
        
    }
    
    return 0
}
