//
//  탈출 3055.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

//func solution3055() {
//
//    var RC = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    var forest = [[String.Element]]()
//    var dist = [[Int]](repeating: [Int](repeating: 0, count: 50), count: 50)
//
//    for i in 0..<RC[0] {
//        var temp = readLine()!
//
//        var checktemp = Array(temp)
//        forest.append(checktemp)
//    }
//
//    var startPos: (Int, Int) = (0,0)
//    var endPos: (Int, Int) = (0,0)
//    var waterPos: (Int, Int) = (0,0)
//
//    let dx = [1,0,-1,0]
//    let dy = [0,1, 0,-1]
//
//    struct Point {
//        var x: Int
//        var y: Int
//    }
//
//    var queue = [Point]()
//
//    for i in 0..<RC[0] {
//        for j in 0..<RC[1] {
//
//            if String(forest[i][j]) == "*" {
//                waterPos = (i, j)
//                queue.append(Point(x: waterPos.0, y: waterPos.1))
//            }
//            if String(forest[i][j]) == "D" {
//                endPos = (i, j)
//            }
//        }
//    }
//    for i in 0..<RC[0] {
//        for j in 0..<RC[1] {
//
//            if String(forest[i][j]) == "S" {
//                //시작위치
//                startPos = (i, j)
//                queue.append(Point( x: startPos.0, y: startPos.1))
//            }
//
//        }
//    }
//
//
//    func checkRange(_ x : Int, _ y: Int ) -> Bool {
//        return x >= 0 && y >= 0 && x < RC[0] && y < RC[1]
//    }
//
//    while !queue.isEmpty {
//
//        var temp = queue.removeFirst()
//
//        for i in 0 ..< 4 {
//
//            let nx = dx[i] + temp.x
//            let ny = dy[i] + temp.y
//
//            if checkRange(nx, ny) {
//                if forest[temp.x][temp.y] == "*" { // 물
//                    if forest[nx][ny] == "." {
//                        forest[nx][ny] = "*"
//                        queue.append(Point( x: nx, y: ny))
//                    }
//                }
//                else { // 고슴도치
//                    if forest[nx][ny] == "." {
//
//                        forest[nx][ny] = "S"
//                        dist[nx][ny] = dist[temp.x][temp.y] + 1
//                        queue.append(Point( x: nx, y: ny))
//
//                    } else if forest[nx][ny] == "D" {
//                        if dist[nx][ny] == 0 {
//                            dist[nx][ny] = dist[temp.x][temp.y] + 1
//                        }
//                    }
//                }
//            }
//
//        }
//
//    }
//
//    if dist[endPos.0][endPos.1] == 0 {
//        print("KAKTUS")
//    } else {
//        print(dist[endPos.0][endPos.1])
//    }
//}
