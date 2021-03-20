//
//  행렬 제곱.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/18.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution10830() {
//    var NM = readLine()!.split(separator: " ").map { Int($0)! }
//
//    var A = [[Int]]()
//    for i in 0 ..< NM[0] {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        A.append(temp)
//    }
//
//    var answer = A
//    for i in 1 ..< NM[1] {
//        var temp = A
//        for j in 0 ..< A.count {
//            for k in 0 ..< A.count {
//
//                var sum = 0
//                for l in 0 ..< A.count {
//                    sum += answer[j][l] * A[l][k]
//                    sum %= 1000
//                }
//                temp[j][k] = sum
//            }
//        }
//        answer = temp
//    }
//
//    for i in answer {
//        var ans = ""
//        i.forEach {
//            ans += "\($0 )"
//        }
//        print(ans)
//    }
//}
