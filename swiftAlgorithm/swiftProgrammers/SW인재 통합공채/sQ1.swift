//
//  Q1.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/23.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
///*
// * Complete the 'isPrime' function below.
// *
// * The function is expected to return an INTEGER.
// * The function accepts LONG_INTEGER n as parameter.
// */
//
//func isPrime(n: Int) -> Int {
//    // Write your code here
//    //var INF = 100000000
//    var check = [Bool](repeating: false, count: n + 1)
//    var flag = false
//
//    for i in 2 ... n {
//
//        if !flag {
//            if !check[i] {
//            for j in stride(from: i + i, to: n + 1, by: i) {
//                check[j] = true
//                if j == n {
//                    flag = true
//                    break
//                }
//            }
//        }
//        } else {
//            break
//        }
//    }
//
//    if !check[n] {
//        return 1
//    } else {
//        for i in 2 ... n {
//            if check[i] {
//                return i
//            }
//        }
//    }
//
//    return 1
//}

import Foundation



/*
 * Complete the 'countPerms' function below.
 *
 * The function is expected to return an INTEGER.
 * The function accepts INTEGER n as parameter.
 */

func balancedSum(arr: [Int]) -> Int {
    // Write your code here
    var arr = arr
    
    var left = 0
    var end = arr.count - 1
    var right = arr.count - 2
    
    while left <= right {
        var sum = 0
        
        for i in stride(from: left, to: right, by: 1) {
            sum += arr[i]
        }
        
        if sum == arr[end] {
            return right + 1
        } else {
            left += 1
        }
    }
    
    return 0
}

//func countPerms(n: Int) -> Int {
//    // Write your code here
//
//    var m = "aeiou"
//    var check = 1000000007
//    var queue = [String]()
//
//    queue.append("a")
//    queue.append("e")
//    queue.append("i")
//    queue.append("o")
//    queue.append("u")
//
//    var answer = [String]()
//    while !queue.isEmpty {
//        var temp = queue.removeFirst()
//
//        if temp.count == n {
//            answer.append(temp)
//        } else {
//            if temp.last == "a" {
//            queue.append(temp+"e")
//        } else if temp.last == "e" {
//            queue.append(temp+"a")
//            queue.append(temp+"i")
//        } else if temp.last == "i" {
//            queue.append(temp+"a")
//            queue.append(temp+"e")
//            queue.append(temp+"o")
//            queue.append(temp+"u")
//        } else if temp.last == "o" {
//            queue.append(temp+"i")
//            queue.append(temp+"u")
//        } else if temp.last == "u" {
//            queue.append(temp+"a")
//        }
//        }
//    }
//
//    return answer.count % check
//}
