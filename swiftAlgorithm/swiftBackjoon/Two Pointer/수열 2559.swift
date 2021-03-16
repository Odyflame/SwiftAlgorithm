//
//  수열 2559.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/10.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution2559() {
    var NK = readLine()?.split(separator: " ").map { Int($0)! }
    var arr = readLine()?.split(separator: " ").map { Int($0)! }
    
    var template = [Int]()
    var sum = 0
    
    var answer = -10000000000
    
    var left = 0, right = 0
    for index in 0..<arr!.count {
        
        if right < NK![1] - 1 {
            // right가 NK[1]보다 작을경우
            sum += arr![right]
            right += 1
            
        } else if right == NK![1] - 1 {
            sum += arr![right]
            right += 1
            answer = answer > sum ? answer : sum
        } else if right <= arr!.count - 1 {
            //right가 끝까지 다 왔을경우
            
            sum = sum - arr![left] + arr![right]
            right += 1
            left += 1
            
            answer = answer > sum ? answer : sum
        } else {
            break
        }
    }
    
    print(answer)
}
