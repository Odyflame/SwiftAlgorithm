//
//  트리의 부모 찾기 11725.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/20.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//extension String {
//    static let zero = Character("0").asciiValue!
//    func parse() -> [Int] {
//        var answer: [Int] = []
//        var temp = 0
//
//        for c in self {
//            if c == " " {
//                answer.append(temp)
//                temp = 0
//                continue
//            }
//
//            temp *= 10
//            temp += Int(c.asciiValue! - Self.zero)
//        }
//
//        answer.append(temp)
//        return answer
//    }
//}
//
//func solution11725() {
//    var tree: [Int: Int] = [:]
//    
//    let N = Int(readLine()!)!
//    tree[1] = 1
//    
//    for _ in 0 ..< N - 1 {
//        var temp = readLine()!.parse()
//        
//        if tree[temp[0]] == nil {
//            tree[temp[0]] = temp[1]
//        } else if tree[temp[1]] == nil {
//            tree[temp[1]] = temp[0]
//        }
//    }
//    
//    for i in 2 ... N {
//        print(tree[i]!)
//    }
//}

//func solution11725() {
//    let N = Int(readLine()!)!
//    var tree = [[Int]](repeating: [Int](), count: N)
//    
//    for _ in 1 ..< N {
//        var temp = readLine()!.split(separator: " ").map { Int($0)! }
//        tree[temp[0] - 1].append(temp[1] - 1)
//        tree[temp[1] - 1].append(temp[0] - 1)
//    }
//    
//    var check = [Bool](repeating: false, count: N)
//    var dp = [Int](repeating: 0, count: N)
//    
//    var qu = [0]
//    check[0] = true
//    
//    while !qu.isEmpty {
//        var top = qu.removeFirst()
//        
//        for i in tree[top] {
//            if !check[i] {
//                dp[i] = top
//                qu.append(i)
//                check[i] = true
//            }
//        }
//    }
//    
//    for i in 1 ..< N {
//        print(dp[i] + 1)
//    }
//}
