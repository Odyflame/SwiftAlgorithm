//
//  기능개발.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/30.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ progresses:[Int], _ speeds:[Int]) -> [Int] {
    
    var answer = [Int]()
    var ans = [Int]()
    for i in 0..<progresses.count {
        if (100 - progresses[i]) % speeds[i] > 0 {
            ans.append( ((100 - progresses[i]) / speeds[i]) + 1)
        } else {
            ans.append( ((100 - progresses[i]) / speeds[i]))
        }
    }
    
    var maxNum = ans.first!
    var temp = 0
    
    for i in 0..<ans.count {
        if temp == 0 {
            maxNum = ans[i]
            temp += 1
        } else if maxNum < ans[i] {
            answer.append(temp)
            temp = 1
            maxNum = ans[i]
        } else {
            temp += 1
        }
    }
    
    if temp > 0 {
        answer.append(temp)
    }
    
    return answer
}
