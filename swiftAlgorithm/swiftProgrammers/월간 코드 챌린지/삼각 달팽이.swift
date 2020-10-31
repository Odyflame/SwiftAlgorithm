//
//  삼각 달팽이.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ n:Int) -> [Int] {
//    
//    var N = 0
//    for i in 1 ... n {
//        N += i
//    }
//    var arr = [Int](repeating: 0, count: N + 1)
//    
//    func DFS(depth: Int, pos: Int, value: Int, carry: Int) {
//        if depth <= 0 {
//            return
//        }
//        if depth == 1 {
//            arr[pos] = value
//            return
//        }
//        
//        var ans = value
//        var check = pos
//        var c = 0
//        
//        		
//        DFS(depth: depth - 3, pos: pos + carry * 4, value: ans, carry: carry + 1)
//    }
//    
//    DFS(depth: n, pos: 1, value: 1, carry: 1)
//    arr.removeFirst()
//    return arr
//}
