//
//  체육복.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/18.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {
//    
//    var answer = 0
//    var arr = [Int](repeating: 1, count: 50)
//    
//    for i in lost {
//        arr[i] -= 1
//    }
//    for i in reserve {
//        arr[i] += 1
//    }
//    
//    for i in 1 ... n {
//        if arr[i] > 1 {
//            if i == 1 && arr[i + 1] == 0 {
//                arr[i + 1] += 1
//                arr[i] -= 1
//            }  else if i == n && arr[n-1] == 0 {
//                arr[n - 1] += 1
//                arr[n] -= 1
//            } else if i < n && i > 1 {
//                if arr[i - 1] == 0 {
//                    arr[i-1] += 1
//                    arr[i] -= 1
//                } else if arr[i + 1] == 0 {
//                    arr [i + 1] += 1
//                    arr[i] -= 1
//                }
//            }
//        }
//    }
//    
//    for i in 1 ... n {
//        if arr[i] > 0 {
//            answer += 1
//        }
//    }
//    
//    return answer
//}
