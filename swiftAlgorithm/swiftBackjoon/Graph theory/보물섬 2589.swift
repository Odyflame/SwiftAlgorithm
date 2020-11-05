//
//  보물섬 2589.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution2589() {
//    let NM = readLine()!.split(separator: " ").map { Int($0)! }
//    var arr = [[String]]()
//    
//    for i in 0 ..< NM[0] {
//        let temp = readLine()!.map { String( $0 )}
//        arr.append(temp)
//    }
//    
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    
//    func Range(x: Int, y: Int ) -> Bool {
//        return x >= 0 && y >= 0 && x < NM[0] && y < NM[1]
//    }
//    
//    func BFS(x: Int, y: Int) -> Int {
//        
//        struct Point {
//            var x: Int
//            var y: Int
//            var sum: Int
//        }
//        
//        var tempArr = arr
//        var queue = [Point]()
//        var cnt = 0
//        queue.append(Point(x: x, y: y, sum: 0))
//        var maxPoint = Point(x: 0, y: 0, sum: 0)
//        tempArr[x][y] = "W"
//        
//        while cnt < queue.count {
//            
//            var temp = queue[cnt]
//            cnt += 1
//            
//            if temp.sum > maxPoint.sum {
//                maxPoint = temp
//            }
//            for i in 0 ..< 4 {
//                if Range(x: temp.x + dx[i], y: temp.y + dy[i]) && tempArr[temp.x + dx[i]][temp.y + dy[i]] == "L" {
//                    tempArr[temp.x + dx[i]][temp.y + dy[i]] = "W"
//                    queue.append(Point(x: temp.x + dx[i], y: temp.y + dy[i], sum: temp.sum + 1))
//                }
//            }
//            
//        }
//        
//        if maxPoint.x == 0 && maxPoint.y == 0 && maxPoint.sum == 0 {
//            //아무런 거리를 구하지 못한경우
//            return 0
//        }
//        
//        var maxPoint2 = Point(x: 0, y: 0, sum: 0)
//        tempArr = arr
//        tempArr[maxPoint.x][maxPoint.y] = "W"
//        queue = [Point]()
//        queue.append(Point(x: maxPoint.x, y: maxPoint.y, sum: 0))
//        cnt = 0
//        
//        while cnt < queue.count {
//            
//            var temp = queue[cnt]
//            cnt += 1
//            if temp.sum > maxPoint2.sum {
//                maxPoint2 = temp
//            }
//            for i in 0 ..< 4 {
//                if Range(x: temp.x + dx[i], y: temp.y + dy[i]) && tempArr[temp.x + dx[i]][temp.y + dy[i]] == "L" {
//                    tempArr[temp.x + dx[i]][temp.y + dy[i]] = "W"
//                    queue.append(Point(x: temp.x + dx[i], y: temp.y + dy[i], sum: temp.sum + 1))
//                }
//            }
//            
//        }
//        
//        return maxPoint2.sum
//    }
//    
//    var answer = 0
//    
//    for i in 0 ..< NM[0] {
//        for j in 0 ..< NM[1] {
//            if arr[i][j] == "L" {
//                answer = max(BFS(x: i, y: j), answer )
//            }
//        }
//    }
//    
//    print(answer)
//}
