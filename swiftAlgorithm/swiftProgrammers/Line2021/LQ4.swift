//
//  LQ4.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/13.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ maze:[[Int]]) -> Int {
//    
//    struct direction {
//        var dicx: Int! // 1, 2, 3, 4
//        var dicy: Int! // 3, 1, 4, 2
//        var xpos: Int!
//        var ypos: Int!
//    }
//    
//    var dx = [0,0,1,-1]
//    var dy = [1,-1,0,0]
//    
//    var queue = [(direction, Int)]()
//    let curpos = direction(dicx: 0, dicy: -1, xpos: 0, ypos: 0)
//    queue.append((curpos, 0 ))
//    
//    func checkRange(_ x: Int, _ y: Int) -> Bool {
//        return x > -1 && y > -1 && x < maze.count && y < maze[0].count
//    }
//    
//    func getDicrection(_ x: Int, _ y: Int) -> (Int, Int) { //오른쪽으로 돌기
//        if x == 1 && y == 0 {
//            return (0, -1)
//        } else if x == -1 && y == 0 {
//            return (0, 1)
//        }
//        else if x == 0 && y == 1 {
//            return (1, 0)
//        }
//        else {
//            return (-1, 0)
//        }
//    }
//    
//    while !queue.isEmpty {
//        
//        var temp = queue.first!
//        queue.removeFirst()
//        
//        if temp.0.xpos == maze.count - 1 && temp.0.ypos == maze.count - 1 {
//            return temp.1
//        }
//        
//        if temp.0.dicx == 0 && temp.0.dicy == 1 {
//            //-1, 0
//            temp.0.dicx = -1
//            temp.0.dicy = 0
//            
//        }else if temp.0.dicx == 0 && temp.0.dicy == -1 {
//            //1, 0
//            temp.0.dicx = 1
//            temp.0.dicy = 0
//            
//        }
//        else if temp.0.dicx == -1 && temp.0.dicy == 0 {
//            // 0, -1
//            temp.0.dicx = 0
//            temp.0.dicy = -1
//        }
//        else if temp.0.dicx == 1 && temp.0.dicy == 0 {
//            // 0, 1
//            temp.0.dicx = 0
//            temp.0.dicy = 1
//        }
//        
//        while !checkRange(temp.0.xpos + temp.0.dicx, temp.0.ypos + temp.0.dicy) || maze[temp.0.xpos + temp.0.dicx][temp.0.ypos + temp.0.dicy] == 1 {
//            var tempDir = getDicrection( temp.0.dicx, temp.0.dicy)
//            temp.0.dicx = tempDir.0
//            temp.0.dicy = tempDir.1
//        }
//        
//        queue.append( ( direction(dicx: temp.0.dicx, dicy: temp.0.dicy, xpos: temp.0.xpos + temp.0.dicx, ypos: temp.0.ypos + temp.0.dicy), temp.1 + 1 ) )
//        
//    }
//    
//    return 0
//}
