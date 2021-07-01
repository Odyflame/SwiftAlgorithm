//
//  약수의 개수와 뺄셈.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/27.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ left:Int, _ right:Int) -> Int {
//    
//    var dp = [Int](repeating: 0, count: 1001)
//    
//    for i in 1 ... 1000 {
//        for j in 1 ... 1000 / i {
//            dp[i * j] += 1
//        }
//    }
//    
//    var answer = 0
//    
//    for i in left ... right {
//        if dp[i] % 2 == 0 {
//            answer += i
//        } else {
//            answer -= i
//        }
//    }
//    
//    return answer
//}
