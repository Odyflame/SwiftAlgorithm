//
//  블록 이동하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ board:[[Int]]) -> Int {
//    
//    //typealias point = (x: Int, y: Int)
//    var N = board.count
//    
//    struct point: Hashable {
//        var x: Int
//        var y: Int
//        
//        static func == (lhs: point, rhs: point) -> Bool {
//            return lhs.x == rhs.x && lhs.y == rhs.y
//        }
//    }
//    
//    struct airplane: Hashable {
//        
//        var leftWing: point
//        var rightWing: point
//        var sum: Int
//        
//        static func == (lhs: airplane, rhs: airplane) -> Bool {
//            return lhs.leftWing == rhs.leftWing && lhs.rightWing == rhs.rightWing
//        }
//    }
//    
//    func checkRange(lhs: point, rhs: point) -> Bool {
//        return lhs.x >= 0 && lhs.y >= 0 && lhs.x < N && lhs.y < N && rhs.x >= 0 && rhs.y >= 0 && rhs.x < N && rhs.y < N && board[lhs.x][lhs.y] == 0 && board[rhs.x][rhs.y] == 0
//    }
//    
//    func checkWallRange(lhs: Int, rhs: Int) -> Bool {
//        return lhs >= 0 && lhs < N && rhs >= 0 && rhs < N
//    }
//    
//    var visit = [airplane: Bool]()
//    
//    var dx = [ (1, 1, 0, 0),(0, 1, 0, 1),(-1, 1, 0, 0),(0, 0, -1, -1),(0, -1, 0, -1),(0, 0, 1, -1) ]
//    var dy = [ (1,0), (0,0), (-1,0), (-1,1),(0,0),(1,1)]
//    
//    var ddx = [0,0,1,-1]
//    var ddy = [1,-1,0,0]
//    
//    var answer = 999999999
//    
//    var qu = [airplane]()
//    qu.append( airplane(leftWing: point(x: 0,y: 0), rightWing: point(x: 0,y: 1), sum: 0) )
//    visit[ airplane(leftWing: point(x: 0,y: 0), rightWing: point(x: 0,y: 1), sum: 0)] = true
//    
//    var index = 0
//    while index < qu.count {
//        var top = qu[index]
//        
//        if top.leftWing == point(x: N-1, y: N-1) || top.rightWing == point(x: N-1, y: N-1) {
//            print("여기는 왜 안와지는거지?")
//            answer = min(answer, top.sum)
//        } else {
//            
//            if top.leftWing.y == top.rightWing.y { // 세로일경우
//                
//                for i in 0 ..< 4 {
//                    var leftPoint = point(x: top.leftWing.x + ddx[i], y: top.leftWing.y + ddy[i])
//                    var rightPoint = point(x: top.rightWing.x + ddx[i], y: top.rightWing.y + ddy[i])
//                    
//                    if checkRange(lhs: leftPoint, rhs: rightPoint) && visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] == nil {
//                        visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] = true
//                        qu.append(airplane(leftWing: leftPoint, rightWing: rightPoint, sum: top.sum + 1))
//                    }
//                }
//                
//            } else { // 가로일경우
//                
//                for i in 0 ..< 6 {
//                    var leftPoint = point(x: top.leftWing.x + dx[i].0, y: top.leftWing.y + dx[i].1)
//                    var rightPoint = point(x: top.rightWing.x + dx[i].2, y: top.rightWing.y + dx[i].3)
//                    
//                    if i == 1 || i == 4 {
//                        if checkRange(lhs: leftPoint, rhs: rightPoint) && visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] == nil {
//                            visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] = true
//                            qu.append(airplane(leftWing: leftPoint, rightWing: rightPoint, sum: top.sum + 1))
//                        }
//                    } else {
//                        var wallPoint = point(x: top.leftWing.x + dy[i].0, y: top.leftWing.y + dy[i].1)
//                        
//                        if checkRange(lhs: leftPoint, rhs: rightPoint) && checkWallRange(lhs: wallPoint.x, rhs: wallPoint.y) && board[wallPoint.x][wallPoint.y] == 0 && visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] == nil {
//                            visit[airplane(leftWing: leftPoint, rightWing: rightPoint, sum: 0)] = true
//                            qu.append(airplane(leftWing: leftPoint, rightWing: rightPoint, sum: top.sum + 1))
//                        }
//                    }
//                    
//                }
//            }
//            
//        }
//        index += 1
//    }
//    
//    return answer
//}
