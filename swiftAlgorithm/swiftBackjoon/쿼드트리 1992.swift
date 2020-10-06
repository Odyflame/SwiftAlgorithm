//
//  쿼드트리 1992.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/15.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//
// 아이패드 애플지원 ->
//

//var answer1992 = ""
//var arr = [[Int]](repeating: [Int](repeating: 0, count: 64), count: 64)
//
//func dfs1992(x: Int, y: Int, depth: Int) -> String {
//
//    var answer = ""
//
//    if depth == 1 {
//        if arr[x][y] == 1 {
//            return "1"
//        } else {
//            return "0"
//        }
//    }
//
//    var flag = false
//
//    for i in 0 ..< depth {
//        for j in 0 ..< depth {
//            if arr[x][y] != arr[x + i][y + j] {
//                flag = true
//                break
//            }
//        }
//        if flag {
//            break
//        }
//    }
//
//    if flag {// 구간을 네구간으로 나누어야한다.
//
//        answer = "(" + dfs1992(x: x, y: y, depth: depth / 2 ) + dfs1992(x: x, y: y + depth / 2, depth: depth / 2 ) + dfs1992(x: x + depth / 2, y: y, depth: depth / 2 ) + dfs1992(x: x + depth/2, y: y + depth / 2, depth: depth / 2) + ")"
//
//    } else {// 구간을 네구간으로 나눌필요가없다.
//        if arr[x][y] == 0 {
//            answer = "0"
//        } else {
//            answer = "1"
//        }
//    }
//
//    return answer
//}
//
//func solution1992() {
//
//    var n = Int(readLine()!)!
//
//    for i in 0 ..< n {
//        var tempn = readLine()
//        let temparr = tempn?.enumerated().map({ Int(String($0.element))! } )
//
//        arr[i] = temparr!
//    }
//    print (dfs1992(x: 0, y: 0, depth: n))
//}
