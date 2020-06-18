//
//  약수의 합.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/18.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ n:Int) -> Int {
    
    var answer = 0
    if n == 0 { return answer }
    for i in 1 ... n {
        if n % i == 0 {
            answer += i
        }
    }
        
    return answer
}
