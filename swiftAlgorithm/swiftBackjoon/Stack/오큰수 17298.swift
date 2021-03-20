//
//  오큰수 17298.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/19.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

//시간초과 시발거
func solution17298() {
    var N = Int(readLine()!)!
    
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    var stack = arr.first!
    var NGE = [Int]()
    
    for i in 0 ..< arr.count - 1 {
        
        if stack > arr[i] {
            NGE.append(stack)
            continue
        }else {
            var flag = true
            for j in i + 1 ..< arr.count {
                if stack < arr[j] {
                    stack = arr[j]
                    NGE.append(stack)
                    flag = false
                    break
                }
            }
            if flag {
                NGE.append(-1)
                stack = arr[i + 1]
            }
        }
    }
    
    NGE.append(-1)
    
    print (NGE)
}
