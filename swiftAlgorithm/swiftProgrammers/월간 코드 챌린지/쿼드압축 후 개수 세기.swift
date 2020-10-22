//
//  쿼드압축 후 개수 세기.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/22.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution(_ arr:[[Int]]) -> [Int] {
//
//    var answer = [0, 0]
//
//    func DFS(xpos: Int, ypos: Int, depth: Int) {
//
//        if depth == 1 {
//            answer[arr[xpos][ypos]] += 1
//            return
//        }
//
//        var sum = 0
//        for i in xpos ..< xpos + depth {
//            for j in ypos ..< ypos + depth {
//                sum += arr[i][j]
//            }
//        }
//
//        if sum == 0 {
//            answer[0] += 1
//            return
//        } else if sum == depth * depth {
//            answer[1] += 1
//            return
//        } else {
//            DFS(xpos: xpos, ypos: ypos, depth: depth / 2)
//            DFS(xpos: xpos, ypos: ypos + depth / 2, depth: depth / 2)
//            DFS(xpos: xpos + depth / 2, ypos: ypos, depth: depth / 2)
//            DFS(xpos: xpos + depth / 2, ypos: ypos + depth / 2, depth: depth / 2)
//        }
//    }
//
//    DFS(xpos: 0,ypos: 0,depth: arr.count)
//
//    return answer
//}
