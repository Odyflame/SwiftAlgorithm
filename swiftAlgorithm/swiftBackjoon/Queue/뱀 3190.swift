//
//  뱀 3190.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/26.
//  Copyright © 2021 odyflame. All rights reserved.
//

// 시간초과 코드
//import Foundation
//
//func solution3190() {
//
//    let N = Int(readLine()!)!
//    let K = Int(readLine()!)!
//
//    var way = [(Int, String)]()
//
//    var myMap = [[Int]](repeating: [Int](repeating: 0, count: 101), count: 101)
//
//    for i in 0 ..< K {
//        let temp = readLine()!.split(separator: " ").map { Int($0)! }
//        myMap[temp[0]][temp[1]] = 1
//        // 사과
//    }
//    let L = Int(readLine()!)!
//    for i in 0 ..< L {
//        let temp = readLine()!.split(separator: " ").map { String($0) }
//        way.append((Int(temp[0])! + 1, temp[1]))
//    }
//
//    struct Snake {
//        var direction: Int // 1 North,2 east,3 south,4 west
//        var body: (Int, Int)
//
//        func check(A: (Int, Int)) -> Bool {
//            if body.0 == A.0 && body.1 == A.1 {
//                return false
//            }
//            return true
//        }
//    }
//
//    struct MyTuple: Equatable {
//        var x: Int
//        var y: Int
//        static func ==(lhs: MyTuple, rhs: MyTuple) -> Bool {
//            return lhs.x == rhs.x && lhs.y == rhs.y
//        }
//    }
//
//    //var snake = Snake(direction: 2, body: (1, 1))
//    myMap[1][1] = 2
//    
//    func checkRange(x: Int, y: Int) -> Bool {
//        return (x >= 1 && y >= 1 && x <= N && y <= N) && myMap[x][y] != 2
//    }
//
//    var time = 0
//    var snake = [Snake(direction: 2, body: (1, 1))]
//    while !snake.isEmpty {
//        time += 1
//        var top = snake.last!
//
//        if !way.isEmpty && time == way.first?.0 { // 방향 바꿀 시간과 동일할 경우
//            let di = way.first?.1
//            switch top.direction {
//            case 1: top.direction = di == "L" ? 4 : 2
//            case 2: top.direction = di == "L" ? 1 : 3
//            case 3: top.direction = di == "L" ? 2 : 4
//            case 4: top.direction = di == "L" ? 3 : 1
//            default: break
//            }
//            way.removeFirst()
//        }
//
//        var dx = 0
//        var dy = 0
//
//        switch top.direction {
//        case 1: dx = top.body.0 - 1; dy = top.body.1
//        case 2: dx = top.body.0; dy = top.body.1 + 1
//        case 3: dx = top.body.0 + 1; dy = top.body.1
//        case 4: dx = top.body.0; dy = top.body.1 - 1
//        default: break
//        }
//
//        if checkRange(x: dx, y: dy) {
//
//            // 이동을 마치고 난 후 그 곳이 사과였을경우
//            if myMap[dx][dy] == 1 {
//                myMap[dx][dy] = 2
//                snake.append(Snake(direction: top.direction, body: (dx, dy)))
//            } else if myMap[dx][dy] == 0 {// 빈공간일경우
//                myMap[dx][dy] = 2
//                snake.append(Snake(direction: top.direction, body: (dx, dy)))
//                myMap[(snake.first?.body.0)!][(snake.first?.body.1)!] = 0
//                snake.removeFirst()
//            }
//            
//        } else {
//        
//            break
//        }
//
//    }
//
//    print(time)
//}

