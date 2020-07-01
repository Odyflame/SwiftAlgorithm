//
//  최댓값과 최솟값.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ s:String) -> String {
    var s = s
    
    let answer = s.components(separatedBy: [" "]).map { Int($0)! }.sorted(by: >)
    let user = "\(answer.first) \(answer.last)"
    
    return user
}
