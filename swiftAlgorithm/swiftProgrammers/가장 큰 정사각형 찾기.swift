//
//  가장 큰 정사각형 찾기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/01.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//다시 해볼것
//func solution(_ board:[[Int]]) -> Int
//{
//    var board = board
//    var dp = [[Int]](repeating: [Int](repeating: 0, count: 1001), count: 1001)
//    var answer = 0
//    
//    if board.count < 2 || board[0].count < 2{
//        for i  in 0..<board.count {
//            for j in 0..<board[0].count where board[i][j] == 1 {
//                answer = 1
//                break
//            }
//        }
//    } else {
//        for i in 1..<board.count {
//            for j in 1..<board[0].count where board[i][j] == 1 {
//                board[i][j] = min( board[i-1][j] , board[i][j-1], board[i-1][j-1] ) + 1
//                if board[i][j] > answer {
//                    answer = board[i][j]
//                }
//            }
//        }
//    }
//    
//    return Int(pow(CGFloat(answer), 2))
//}
