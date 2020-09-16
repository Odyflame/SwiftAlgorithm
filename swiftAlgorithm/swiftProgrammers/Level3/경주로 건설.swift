//
//  경주로 건설.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1(_ board:[[Int]]) -> Int {
//
//    struct point {
//        var x: Int
//        var y: Int
//        var pos: Int // 0 = up, 1 = down, 2 = left, 3 = right
//    }
//    let dx = [-1, 1, 0, 0]
//    let dy = [0, 0, -1, 1]
//
//    var dp = Array(repeating: Array(repeating: 9999999, count: 26), count: 26)
//
//    var qu = [(point, Int)]() // point, sum
//    qu.append( (point(x: 0,y: 0, pos: -1), 0 ) )
//
//    dp[0][0] = 0
//
//    func checkRange (_ x: Int, _ y: Int) -> Bool {
//        if x >= 0 && x < board.count && y >= 0 && y < board.count && board[x][y] == 0 {
//            return true
//        }
//        return false
//    }
//
//    while !qu.isEmpty {
//        let temp = qu.removeFirst()
//
//        if temp.0.x == 0 && temp.0.y == 6{
//            print(1)
//        }
//        for i in 0..<4 {
//            if checkRange(temp.0.x + dx[i], temp.0.y + dy[i]) {
//                if i == temp.0.pos || temp.0.pos == -1 {
//                    if dp[ temp.0.x + dx[i]][temp.0.y + dy[i]] >= temp.1 + 100 {
//                        dp[ temp.0.x + dx[i]][temp.0.y + dy[i]] = temp.1 + 100
//                        qu.append(( point(x: temp.0.x + dx[i], y: temp.0.y + dy[i], pos: i), temp.1 + 100) )
//                    }
//                } else {
//                    if  dp[ temp.0.x + dx[i]][temp.0.y + dy[i]] >= temp.1 + 100 + 500 {
//                        dp[ temp.0.x + dx[i]][temp.0.y + dy[i]] = temp.1 + 100 + 500
//                        qu.append(( point(x: temp.0.x + dx[i], y: temp.0.y + dy[i], pos: i), temp.1 + 100 + 500) )
//                    }
//                }
//            }
//        }
//
//    }
//
//    return dp[board.count - 1][board.count - 1]
//}
