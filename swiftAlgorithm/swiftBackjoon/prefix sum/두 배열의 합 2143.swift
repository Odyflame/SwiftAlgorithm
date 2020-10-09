//
//  두 배열의 합 2143.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/06.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution2143() {
    let T = Int(readLine()!)!
    
    let n = Int(readLine()!)!
    var A = readLine()!.split(separator: " ").map { Int($0)! }
    
    let m = Int(readLine()!)!
    var B = readLine()!.split(separator: " ").map { Int($0)! }
    
    var ADP = [Int](repeating: 0, count: n + 1)
    var BDP = [Int](repeating: 0, count: m + 1)
    
    for i in 1 ..< n + 1 {
        ADP[i] = ADP[i - 1] + A[i - 1]
    }
    
    for i in 1 ..< m + 1 {
        BDP[i] = BDP[i - 1] + B[i - 1]
    }
    
    var Aleft = 1, Aright = 1
    var Bleft = 1, Bright = 1
    
    var answer = 0
    
    while Aleft <= Aright && Aleft < n + 1 {
        
        var sum = 0
        var tempSum = 0
        
        while Bleft <= Bright && Bleft < m + 1{
            
            sum = BDP[Bright] - BDP[Bleft - 1] + ADP[Aright] - ADP[Aleft - 1]
            if sum == T {
                tempSum += 1
                if Bright == m {
                    Bleft += 1
                } else {
                    Bright += 1
                }
            }
            else if sum > T {
                Bleft += 1
            } else {
                if Bright == m {
                    Bleft += 1
                } else {
                    Bright += 1
                }
            }
        }
        
        if tempSum == 0 {
            Aleft += 1
        } else {
            if Aright == n {
                Aleft += 1
            } else {
                Aright += 1
            }
            Aright += 1
            answer += tempSum
        }
    }
    
    print(answer)
}
