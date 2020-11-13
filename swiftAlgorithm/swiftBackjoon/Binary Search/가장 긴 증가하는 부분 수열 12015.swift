//
//  가장 긴 증가하는 부분 수열 12015.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/20.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution12015() {
    
    var A = Int(readLine()!)!
    var arr = readLine()!.split(separator: " ").map { Int($0)! }
    
    var dp = [Int]()
    //dp.append( -1 )
    for i in 0 ..< A {
        
        if dp.isEmpty {
            dp.append(arr[i])
        }
        else if dp.last! < arr[i] {
            
            var left = 0
            var right = dp.count - 1
            var mid = (left + right) / 2
            var flag =  false
            
            while left <= right {
                
                if dp[mid] < arr[i] {
                    left = mid + 1
                } else if dp[mid] == arr[i] {
                    flag = true
                    break
                } else {
                    right = mid - 1
                }
                
                mid = (left + right ) / 2
            }
            
            if !flag {
                dp.insert(arr[i], at: mid + 1)
            }
            
        }
        
    }
    
    print(dp.count)
}
