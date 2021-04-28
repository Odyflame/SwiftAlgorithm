//
//  행렬 테두리 회전하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/27.
//  Copyright © 2021 odyflame. All rights reserved.
//
//import Foundation
//
//func solution(_ rows:Int, _ columns:Int, _ queries:[[Int]]) -> [Int] {
//
//    var answer = [Int]()
//    var squre = [[Int]]()
//
//    for i in 0 ..< rows {
//        let j = 1 + i*columns
//        var temp = [Int]()
//        for k in 0 ..< columns {
//            temp.append(j + k)
//        }
//        squre.append(temp)
//    }
//
//    for query in queries {
//        var x1 = query[0] - 1
//        var y1 = query[1] - 1
//        var x2 = query[2] - 1
//        var y2 = query[3] - 1
//        var ansMin = 9999
//        var tempSqure = squre
//
//        for i in x1 ..< x2  {
//            tempSqure[i + 1][y2] = squre[i][y2]
//            ansMin = min(ansMin, tempSqure[i + 1][y2])
//        }
//
//        for i in stride(from: y2, to: y1, by: -1) {
//            tempSqure[x1][i] = squre[x1][i - 1]
//            ansMin = min(ansMin, tempSqure[x1][i])
//        }
//
//        for i in y1 ..< y2 {
//            tempSqure[x2][i] = squre[x2][i + 1]
//            ansMin = min(ansMin, tempSqure[x2][i])
//        }
//
//        for i in x1 ..< x2 {
//            tempSqure[i][y1] = squre[i + 1][y1]
//            ansMin = min(ansMin, tempSqure[i][y1])
//        }
//        squre = tempSqure
//        answer.append(ansMin)
//    }
//
//    return answer
//}
