//
//  z 1074.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/06.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1074() {
//
//    var input1074: [Int] = []
//    var sum1072 = 0
//    var flag = false
//
//    let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//    input1074 = input
//    var size1074 = 1
//    for i in 1...input[0] {
//        size1074 *= 2
//    }
//
//    func DFS(x: Int, y: Int, size: Int, sum: Int) {
//
//        if size == 2 {
//            // 이 네개 안에 하나가 들어있다는 것
//            if x == input[1] && y == input[2] {
//                print(sum)
//            } else if x == input[1] && y + 1 == input[2] {
//                print(sum + 1)
//            } else if x + 1 == input[1] && y == input[2] {
//                print(sum + 2)
//            } else {
//                print(sum + 3)
//            }
//            return
//        }
//
//        let len = (size * size) / 4
//
//        if x + size / 2 > input[1] { // 행이 0 ~ size /2 안에 있을경우
//            if y + size / 2 > input[2] { // 열이 0 ~ size /2 안에 있을경우
//                DFS(x: x, y: y, size: size / 2, sum: sum) // 1 사분면
//            } else {
//                DFS(x: x, y: y + size / 2, size: size / 2, sum: sum + len) // 2 사분면
//            }
//        } else { // 행이 size /2 ~ size 안에 있을경우
//            if y + size / 2 > input[2] { // 열이 0 ~ size /2 안에 있을경우
//                DFS(x: x + size / 2, y: y, size: size / 2, sum: sum + len * 2) // 3 사분면
//            } else {
//                DFS(x: x + size / 2, y: y + size / 2, size: size / 2, sum: sum + len * 3) // 4 사분면
//            }
//        }
//    }
//
//    DFS(x: 0, y: 0, size: size1074, sum: 0)
//
//}
