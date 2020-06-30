//
//  다트 게임.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ dartResult:String) -> Int {
//    
//    var answer = 0
//    
//    var srr = Array(dartResult)
//    var index = 0
//    
//    var num = 0
//    var stack = [Int]()
//    var nums = ["0" : 0, "1" : 1 , "2" :2 , "3" : 3, "4" : 4, "5" : 5, "6" : 6, "7" : 7, "8" : 8, "9" : 9]
//    
//    while !srr.isEmpty {
//        var temp = String(srr.removeFirst())
//        
//        if temp == "S" {
//            stack.append(num)
//        } else if temp == "D" {
//            num *= num
//            stack.append(num)
//        } else if temp == "T" {
//            num = num * num * num
//            stack.append(num)
//        } else if temp == "*" {
//            var t = stack.removeLast()
//            if !stack.isEmpty {
//                var u = stack.removeLast()
//                stack.append(u*2)
//            }
//            stack.append(t * 2)
//        } else if temp == "#" {
//            var t = stack.removeLast()
//            stack.append(t * -1)
//        } else {
//            if temp == "1" && srr.first == "0" {
//                srr.removeFirst()
//                num = 10
//            }
//            else {
//                num = nums[temp]!
//            }
//        }
//    }
//    
//    for i in stack {
//        answer += i
//    }
//    
//    return answer
//}
