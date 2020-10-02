//
//  스도쿠 2580.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/02.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution2580() {
    
    var sudoku = [[Int]](repeating: [Int](repeating: 0, count: 10), count: 10)
    var answer = [(Int, Int)]()
    
    var miniSudoku = [(Int, Int)]()
    
    for i in 1 ... 9 {
        var temp = readLine()!.components(separatedBy: [" "]).map { Int($0)!}
        for j in 1 ... temp.count {
            sudoku[i][j] = temp[j]
            if temp[j] == 0 {
                answer.append((i, j))
            }
        }
    }
    
    while !answer.isEmpty {
        let temp = answer.removeFirst()
        
        let x = (temp.0 / 3) * 3
        let y = (temp.1 / 3) * 3
        var tempArr = [Int](repeating: -1, count: 10)
        var check = false
        var tempPos: (Int, Int) = (-1, -1)
        
        for i in x ..< x + 2 {
            for j in y * 3 ..< y + 2 {
                if sudoku[i][j] > 0 {
                    tempArr[sudoku[i][j]] = 1
                } else {
                    if check {
                        tempPos = (-1, -1)
                        break
                    } else {
                        check = true
                        tempPos = (i, j)
                    }
                }
            }
        }
        
        if tempPos != (-1, -1) {
            for k in 1 ... tempArr.count {
                if tempArr[k] == 0 {
                    sudoku[temp.0][temp.1] = k
                    break
                }
            }
        }
        
        
    }
}
