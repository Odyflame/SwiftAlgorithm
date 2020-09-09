//
//  36. Valid Sudoku.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var answer = true
    
    for i in board {
        var queue = [Character]()
        for j in i {
            if j == "." {
                continue
            }
            else if queue.contains(j) {
                return false
            } else {
                queue.append(j)
            }
        }
    }
    
    for i in 0 ..< board.count {
        var queue = [Character]()
        for j in 0 ..< board.count {
            if board[j][i] == "." {
                continue
            }
            else if queue.contains(board[j][i]) {
                return false
            } else {
                queue.append(board[j][i])
            }
        }
    }
    
    for i in stride(from: 0, to: 9, by: +3) {
        for j in stride(from: 0, to: 9, by: +3) {
            var queue = [Character]()
            for k in i ..< i + 3 {
                for h in j ..< j + 3 {
                    if board[k][h] == "." {
                        continue
                    }
                    else if queue.contains(board[k][h]) {
                        return false
                    } else {
                        queue.append(board[k][h])
                    }
                }
            }
        }
    }
        
    return answer
}
