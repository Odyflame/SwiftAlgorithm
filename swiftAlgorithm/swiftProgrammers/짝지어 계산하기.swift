//
//  짝지어 계산하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ s:String) -> Int{
    //시간초과가 뜨는데 왜 뜨는지 모르겠다. 스택을 사용한 알고리즘이란 것은 동일
//    var answer:Int = 0
//
//    var stack = [String.Element]()
//
//    var s = Array(s)
//
//    while !s.isEmpty {
//        var temp = s.removeFirst()
//
//        if stack.isEmpty {
//            stack.append(temp)
//        } else {
//            if stack.last == temp {
//                stack.removeLast()
//            } else {
//                stack.append(temp)
//            }
//        }
//
//    }
//
//    if !stack.isEmpty {
//        return answer
//    } else {
//        return answer + 1
//    }
    
    // 역시 시간초과 개편되면서 시간초과가 뜨는듯하다/
//    var s = Array(s)
//    var stack = [String.Element]()
//
//    for i in s {
//
//        if stack.isEmpty || stack.last != i{
//            stack.append(i)
//        } else {
//            stack.removeLast()
//        }
//
//    }
//
//    if !stack.isEmpty {
//        return 1
//    } else {
//        return 0
//    }
    
//}
