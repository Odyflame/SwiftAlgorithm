//
//  크레인 인형뽑기 게임.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
//
//    var answer = 0
//
//    var basket = [Int]()
//    var board = board
//
//    for move in moves {
//        for j in 0 ..< board.count {
//            if board[j][move - 1] != 0 {
//                if basket.last == board[j][move - 1] {
//                    basket.removeLast()
//                    answer += 2
//                } else {
//                    basket.append(board[j][move - 1])
//                }
//                board[j][move - 1] = 0
//                break
//            }
//        }
//    }
//
//    return answer
//}
