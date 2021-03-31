//
//  File.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/01.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//func solution11660() {
//    var NM = readLine()!.parse()
//    var map = [[Int]]()
//    //var dp = [[Int]](repeating: [Int](repeating: 0, count: NM[0]), count: NM[0])
//    
//    for _ in 0 ..< NM[0] {
//        var temp = readLine()!.parse()
//        map.append(temp)
//        
//    }
//    
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: NM[0] + 1), count: NM[0] + 1)
//    
//    for i in 0 ..< NM[0] {
//        for j in 0 ..< NM[0] {
//            dp[i + 1][j + 1] = map[i][j] + dp[i + 1][j] + dp[i][j + 1] - dp[i][j]
//        }
//    }
//    
//// 시간초과
////    for i in 0 ..< NM[0] {
////        for j in 0 ..< NM[0] - 1 {
////            dp[i][j + 1] += dp[i][j]
////        }
////        if i > 0 {
////            for j in 0 ..< NM[0] {
////                dp[i][j] += dp[i - 1][j]
////            }
////        }
////    }
//    
//    for _ in 0 ..< NM[1] {
//        var temp = readLine()!.parse()
//        
//        print( dp[temp[2]][temp[3]] - dp[temp[0] - 1][temp[3]] - dp[temp[2]][temp[1] - 1] + dp[temp[0] - 1][temp[1] - 1]  )
//    }
//}
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//}
