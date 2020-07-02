//
//  점프와 순간이동.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int
{
    var ans:Int = 0
    var n = n
    while n > 0 {
        
        if n %2 == 0 {
            n /= 2
            continue
        } else {
            n -= 1
        }
        
        ans += 1
    }

    return ans
}
