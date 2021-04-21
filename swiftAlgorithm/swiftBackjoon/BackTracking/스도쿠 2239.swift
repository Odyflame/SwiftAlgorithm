//
//  스도쿠 2230.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/20.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution2239() {
    
    var sdoku = [[Int]]()
    
    var rowVisit = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 9)
    var colomnVisit = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 9)
    var squereVisit = Array(repeating: Array(repeating: Array(repeating: false, count: 10), count: 3), count: 3)
    
    for i in 0 ..< 9 {
        let input = readLine()!.map{Int(String($0))!}
        
        for j in 0 ..< input.count {
            let num = input[j]
            if num > 0 {
                rowVisit[i][num] = true
                colomnVisit[j][num] = true
                squereVisit[i/3][j/3][num] = true
            }
        }
        
        sdoku.append(input)
    }

    func DFS(cnt: Int) {
        let r = cnt / 9, c = cnt % 9
        
        if cnt == 81 {
            for i in 0 ..< 9 {
                print( sdoku[i].map{ String($0)}.joined() )
            }
            
            return
        } else if sdoku[r][c] != 0 {
            DFS(cnt: cnt + 1)
        } else {
            for j in 1 ... 9 {
                
                if !rowVisit[r][j] && !colomnVisit[c][j] && !squereVisit[r/3][c/3][j] {
                    
                    rowVisit[r][j] = true
                    colomnVisit[c][j] = true
                    squereVisit[r/3][c/3][j] = true
                    sdoku[r][c] = j
                    DFS(cnt: cnt + 1)
                    sdoku[r][c] = 0
                    rowVisit[r][j] = false
                    colomnVisit[c][j] = false
                    squereVisit[r/3][c/3][j] = false
                    
                }
                
            }
        }
        
    }
    
    DFS(cnt: 0)
    
}

