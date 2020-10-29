//
//  연구소 14502.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/22.
//  Copyright © 2020 odyflame. All rights reserved.
//
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
//func solution14052() {
//
//    let NM = readLine()!.parse()
//    var map = [[Int]]()
//    var copyMap = [[Int]]()
//
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//
//    var answer = 0
//    var empty = [(Int, Int)]()
//    var virus = [(Int, Int)]()
//
//    for i in 0 ..< NM[0] {
//        let temp = readLine()!.parse()
//        map.append(temp)
//
//        for j in 0 ..< temp.count {
//            if map[i][j] == 0 {
//                empty.append(( i, j))
//            } else if map[i][j] == 2 {
//                virus.append((i, j))
//            }
//        }
//    }
//
//    var visit = [Bool](repeating: false, count: empty.count)
//    var check = [[Bool]](repeating: [Bool](repeating: false, count: NM[1]), count: NM[0])
//
//    func checkArea(xpos: Int, ypos: Int) -> Bool {
//        return xpos >= 0 && xpos < NM[0] && ypos >= 0 && ypos < NM[1]
//    }
//
//    func BFS() {
//        copyMap = map
//
//        for i in 0..<visit.count {
//            if visit[i] {
//                copyMap[empty[i].0][empty[i].1] = 1
//            }
//        }
//
//        check = [[Bool]](repeating: [Bool](repeating: false, count: NM[1]), count: NM[0])
//        var queue = virus
//
//        while !queue.isEmpty {
//            var temp = queue.removeFirst()
//
//            for i in 0 ..< 4 {
//                if checkArea(xpos: temp.0 + dx[i], ypos: temp.1 + dy[i]) && !check[temp.0 + dx[i]][temp.1 + dy[i]] && copyMap[temp.0 + dx[i]][temp.1 + dy[i]] == 0 {
//                    check[temp.0 + dx[i]][temp.1 + dy[i]] = true
//                    copyMap[temp.0 + dx[i]][temp.1 + dy[i]] = 2
//                    queue.append(( temp.0 + dx[i], temp.1 + dy[i]))
//                }
//            }
//        }
//
//        var tempSum = 0
//        for i in 0 ..< NM[0] {
//            for j in 0 ..< NM[1] {
//                if copyMap[i][j] == 0 {
//                    tempSum += 1
//                }
//            }
//        }
//
//        if answer < tempSum {
//            answer = tempSum
//        }
//    }
//
//    func wallDFS(depth: Int, idx: Int) {
//
//        if depth == 3 {
//            BFS()
//            return
//        }
//
//        for i in 0 ..< empty.count {
//            if checkArea(xpos: empty[i].0, ypos: empty[i].1) && !visit[i] {
//                visit[i] = true
//                wallDFS(depth: depth + 1, idx: i)
//                visit[i] = false
//            }
//        }
//
//    }
//
//    wallDFS(depth: 0, idx: 0)
//
//
//    print(answer)
//}
