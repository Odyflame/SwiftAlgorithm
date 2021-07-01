//
//  올바른 괄호.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation


//프로그래머스에 제출하였지만 시간초과가 뜬다
//스택 문제로 쉬운 문제이나 왜 시간초과인지 모르겠다.
//
//func solution(_ s:String) -> Bool
//{
//    var srr = Array(s)
//    var temp = ""
//
//    for i in srr {
//        if temp.isEmpty {
//            temp += String(i)
//        } else {
//            if (temp.last == "(" && i == ")")  {
//                temp.removeLast()
//            } else {
//                temp += String(i)
//            }
//        }
//    }
//
//    if temp.isEmpty {
//        return true
//    }
//
//    return false
//}

//func solution(_ s:String) -> Bool {
//    var count = 0
//    
//    for i in s {
//        if i == "(" {
//            count += 1
//        } else {
//            count -= 1
//        }
//        if count < 0 {
//            break
//        }
//    }
//    
//    return count == 0 ? true: false
//}
