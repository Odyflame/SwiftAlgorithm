//
//  부분합 1806.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/20.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1806() {
//    let NS = readLine()!.split(separator: " ").map { Int($0)! }
//    var arr = readLine()!.split(separator: " ").map { Int($0)! }
//    
//    var left = 0
//    var right = 0
//    var sum = arr[0]
//    arr.append(0)
//    var answer = NS[0] + 1
//    
//    while left <= right && right < NS[0] {
//        
//        if sum < NS[1] {
//            
//            right += 1
//            sum += arr[right]
//            
//        } else if sum == NS[1] {
//            if answer > right - left + 1 {
//                answer = right - left + 1
//            }
//            right += 1
//            sum += arr[right]
//        }else {
//            
//            if answer > right - left + 1 {
//                answer = right - left + 1
//            }
//            
//            sum -= arr[left]
//            left += 1
//        }
//    }
//    
//    if answer > NS[0] {
//        print(0)
//    } else {
//        print(answer)
//    }
//}
