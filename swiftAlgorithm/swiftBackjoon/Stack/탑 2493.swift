//
//  탑 2493.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/07.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2493() {
//    var n = Int(readLine()!)!
//    var arr = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var stack = [(Int, Int)]() // 빌딩 순서, 빌딩 높이
//    var answer = [Int]()
//    
//    for i in 0 ..< arr.count {
//        if stack.isEmpty {
//            answer.append(0)
//            stack.append((i, arr[i]))
//        } else {
//            
//            while !stack.isEmpty && stack.last!.1 < arr[i] {
//                stack.removeLast()
//            }
//            
//            if stack.isEmpty {
//                stack.append((i, arr[i]))
//                answer.append(0)
//            } else {
//                answer.append(stack.last!.0 + 1)
//                stack.append((i, arr[i]))
//            }
//            
//        }
//    }
//    
//    var ans = ""
//    answer.forEach {
//        ans += "\($0) "
//    }
//    print(ans)
//}
