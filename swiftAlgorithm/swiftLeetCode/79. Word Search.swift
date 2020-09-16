//
//  79. Word Search.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/11.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func exist(_ board: [[Character]], _ word: String) -> Bool {
    var answer = false
    
    func checkRange(x: Int, y: Int) -> Bool {
        return x > -1 && y > -1 && x < board.count && y < board[0].count
    }
    
    var check = [[Bool]](repeating: [Bool](repeating: false, count: board[0].count), count: board.count)
    
    func DFS(depth: Int, x: Int, y: Int, sum: String) -> Bool {
        var answer = false
        
        if sum == word {
            return true
        }
        
        if depth == word.count {
            return false
        }
        
        if checkRange(x: x + 1, y: y) && word.charAt(index: depth) == String(board[x + 1][y]) && !check[x + 1][y] {
            check[x + 1][y] = true
            answer = answer || DFS(depth: depth + 1, x: x + 1, y: y, sum: sum + String(board[x + 1][y]))
            check[x + 1][y] = false
        }
        if checkRange(x: x, y: y + 1) && word.charAt(index: depth) == String(board[x][y + 1]) && !check[x][y + 1] {
            check[x][y + 1] = true
            answer = answer || DFS(depth: depth + 1, x: x, y: y + 1, sum: sum + String(board[x][y + 1]))
            check[x][y + 1] = false
        }
        if checkRange(x: x - 1, y: y) && word.charAt(index: depth) == String(board[x - 1][y]) && !check[x - 1][y] {
            check[x - 1][y] = true
            answer = answer || DFS(depth: depth + 1, x: x - 1, y: y, sum: sum + String(board[x - 1][y]))
            check[x - 1][y] = false
        }
        if checkRange(x: x, y: y - 1) && word.charAt(index: depth) == String(board[x][y - 1]) && !check[x][y - 1] {
            check[x][y - 1] = true
            answer = answer || DFS(depth: depth + 1, x: x, y: y - 1, sum: sum + String(board[x ][y - 1]))
            check[x][y - 1] = false
        }
        
        return answer
    }
    
    for i in 0..<board.count {
        for j in 0..<board[0].count {
            if String(board[i][j]) == word.charAt(index: 0) {
                check[i][j] = true
                answer = answer || DFS(depth: 1, x: i, y: j, sum: String(board[i][j]))
                check[i][j] = false
            }
        }
    }
    
    return answer
}

extension String {
    func char(index: Int) -> String {
        let finalIndex = self.index(self.startIndex, offsetBy: index)
        return String(self[finalIndex])
    }
}
