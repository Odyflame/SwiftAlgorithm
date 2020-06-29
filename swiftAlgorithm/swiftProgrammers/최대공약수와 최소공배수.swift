//
//  최대공약수와 최소공배수.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/28.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution2(_ n:Int, _ m:Int) -> [Int] {
//    
//    var answer = [Int]()
//    
//    func gcd(_ n: Int, _ m: Int) -> Int{
//        var n = n
//        var m = m
//        var answer = 1
//        
//        while true {
//            var temp = m
//            m = n % temp
//            
//            if m == 0 {
//                answer = temp
//                break
//            }
//            n = temp
//        }
//        return answer
//    }
//    
//    func lcm(_ n: Int, _ m: Int) -> Int {
//        var ans = 0
//        
//        if n < m {
//            ans = gcd(m, n)
//        } else {
//            ans = gcd(n, m)
//        }
//        
//        return (n / ans) * (m / ans) * ans
//    }
//    
//    if n > m {
//        answer.append(gcd(n, m))
//        answer.append(lcm(n, m))
//        return answer
//    }else {
//        answer.append(gcd(m, n))
//        answer.append(lcm(m, n))
//        return answer
//    }
//}
