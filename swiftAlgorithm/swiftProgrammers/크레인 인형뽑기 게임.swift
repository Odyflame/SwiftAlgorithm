//
//  크레인 인형뽑기 게임.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ board:[[Int]], _ moves:[Int]) -> Int {
    
    var answer = 0
    
    var basket = [Int]()
    var tempBoard = board
    
    
    for i in moves {
        for j in 0 ..< tempBoard.count {
            
            if tempBoard[j][i] != 0 {
                
                if basket.last == tempBoard[j][i] {
                    basket.removeLast()
                    answer += 2
                } else {
                    basket.append(tempBoard[j][i])
                }
                tempBoard[j][i] = 0
                break
            }
        }
    }
    return answer
}
