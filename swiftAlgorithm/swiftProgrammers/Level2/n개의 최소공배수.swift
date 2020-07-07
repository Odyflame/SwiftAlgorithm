//
//  n개의 최소공배수.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ arr:[Int]) -> Int {
//    
//    func gcd(_ a: Int,_ b: Int) -> Int {
//        var a = a
//        var b = b
//        
//        while b != 0 {
//            var temp = a % b
//            a = b
//            b = temp
//        }
//        
//        return a
//    }
//    
//    func lcm (_ a: Int, _ b: Int) -> Int {
//        var temp = gcd(a, b )
//        return a * b / temp
//    }
//    
//    if arr.count == 1 {
//        return arr[0]
//    }
//    
//    var temp: Int = Int(arr[0])
//    
//    var arr = arr.sorted()
//    var answer = 1
//    
//    for i in arr {
//        answer = lcm(answer, i)
//    }
//    return answer
//}
