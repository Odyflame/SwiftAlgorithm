//
//  블록 이동하기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/10.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ board:[[Int]]) -> Int {
//    
//    typealias point = (x: Int, y: Int)
//    
//    struct airplane {
//        var leftWing: point
//        var rightWing: point
//    }
//    
//    func checkRange(_ x: Int, _ y: Int) -> Bool {
//        if x >= 0 && x < board.count && y >= 0 && y < board.count {
//            return true
//        }
//        return false
//    }
//    
//    var dl = [ (1, 0 ), (-1, 0 ), (0, 1 ), (0, -1 ), (0, 0 ), (0, 0 ), (-1, 1 ), (1, 1 ) ]
//    var dr = [ (1, 0 ), (-1, 0 ), (0, 1 ), (0, -1 ), (-1, -1 ), (1, -1 ), (0, 0 ), (0, 0 ) ]
//    var dp = Array(repeating: Array(repeating: 9999999, count: 101), count: 101)
//    
//    var qu = [(airplane, Int)]()
//    qu.append( (airplane(leftWing: point(0,0), rightWing: point(0,1)), 0 ) )
//    dp[0][0] = 0
//    
//    while !qu.isEmpty {
//        var temp = qu.removeFirst()
//        
//        for i in 0..<8 {
//            if i < 4 {
//                if checkRange(<#T##x: Int##Int#>, <#T##y: Int##Int#>)
//            } else {
//                
//            }
//        }
//        
//    }
//    
//    return 0
//}
