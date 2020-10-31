//
//  3진법 뒤집기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/31.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int) -> Int {
//
//    var n = n
//    var arr = [Int](repeating: 0, count: n)
//    var idx = 0
//
//    while n > 0 {
//        var temp = n % 3
//        arr[idx] = temp
//        n /= 3
//        idx += 1
//    }
//
//    var answer = 0
//
//    for i in 0 ..< idx {
//        if arr[i] != 0 {
//            answer += arr[i] * Int(pow(3.0, Double(idx - i - 1)))
//        }
//    }
//
//    return answer
//}
