//
//  배열 B의 값 16971.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/04.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution16970() {
//    
//    var NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var arr = [[Int]]()
//    var answer = 0
//    for i in 0 ..< NM[0] {
//        var input = readLine()!.split(separator: " ").map { Int($0)! }
//        arr.append(input)
//    }
//    
//    func calculateSum(a: [[Int]]) -> Int {
//        var sum = 0
//        for i in 0 ..< a.count - 1 {
//            for j in 0 ..< a[i].count - 1 {
//                sum += a[i][j] + a[i][j + 1] + a[i + 1][j] + a[i + 1][j + 1]
//            }
//        }
//        
//        return sum
//    }
//    
//    for i in 0 ..< NM[0] {
//        for j in i ..< NM[1] {
//            var tempArr = arr
//            tempArr.swapAt(i, j)
//            answer = max(calculateSum(a: tempArr), answer)
//            tempArr.swapAt(i, j)
//        }
//    }
//    
//    for j in 0 ..< NM[0] {
//        for k in j + 1 ..< NM[1] {
//            
//            var tempArr = arr
//            for i in 0 ..< NM[1] {
//                tempArr[i].swapAt(j, k)
//            }
//            answer = max(answer, calculateSum(a: tempArr))
//        }
//    }
//    
//    print(answer)
//}
