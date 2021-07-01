//
//  괄호 회전하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/27.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//
//func solution1(_ s:String) -> Int {
//    
//    var startIndex = 0
//    var srr = Array(s)
//    
//    if s.count % 2 == 0 {
//        return 0
//    }
//    
//    func checkStack(value: [Character]) -> Bool {
//        
//        var stack = ""
//        var flag = false
//        for i in 0 ..< value.count {
//            if value[i] == "{" || value[i] == "[" || value[i] == "(" {
//                stack.append(value[i])
//            } else if value[i] == "]" {
//                if stack.last == "[" {
//                    stack.removeLast()
//                } else {
//                    return false
//                }
//            }else if value[i] == "}" {
//                if stack.last == "{" {
//                    stack.removeLast()
//                } else {
//                    return false
//                }
//            }else if value[i] == ")" {
//                if stack.last == "(" {
//                    stack.removeLast()
//                } else {
//                    return false
//                }
//            }
//        }
//        
//        if stack.isEmpty {
//            return true
//        }
//        
//        return false
//    }
//    
//    var answer = 0
//    for i in 0 ..< srr.count {
//        
//        if checkStack(value: srr) {
//            answer += 1
//        }
//
//        var temp = srr.removeFirst()
//        srr.append(temp)
//    }
//    
//    return answer
//}
