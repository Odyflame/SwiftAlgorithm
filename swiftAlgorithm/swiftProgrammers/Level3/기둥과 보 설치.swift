//
//  기둥과 보 설치.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/05/08.
//  Copyright © 2021 odyflame. All rights reserved.
//
//
//import Foundation
//
//func solution(_ n:Int, _ build_frame:[[Int]]) -> [[Int]] {
//    
//    struct Node {
//        var isPillar: Bool // 기둥이 있는가?
//        var isFlooor: Bool // 보가 있는가?
//    }
//    
//    var map = [[Node]](repeating: [Node](repeating: Node(isPillar: false, isFlooor: false), count: n + 1), count: n + 1)
//    // 0은 기둥이고 1은 보이다
//    
//    // range
//    func checkRange(_ x: Int, _ y: Int) -> Bool {
//        return x >= 0 && y >= 0 && x <= n && y <= n
//    }
//    
//    // 기둥
//    func checkPillar(x: Int, y: Int) -> Bool {
//        if x == n { return true }
//        if checkRange(x + 1, y) && map[x+1][y].isPillar { return true }
//        if checkRange(x, y - 1) && map[x][y-1].isFlooor { return true }
//        if checkRange(x, y) && map[x][y].isFlooor { return true }
//        
//        return false
//    }
//    
//    // 보
//    func checkFloor(x: Int, y: Int) -> Bool {
//        
//        if map[x+1][y].isPillar { return true}
//        if (checkRange(x, y + 1) && map[x + 1][y + 1].isPillar ) { return true }
//        if map[x][y-1].isFlooor && map[x][y+1].isFlooor { return true }
//        
//        return false
//    }
//    
//    for build in build_frame {
//        
//        if build[2] == 0 { // 기둥일 경우
//            if build[3] == 0 { // 삭제일 경우
//                map[n - build[1]][build[0]].isPillar = false
//                // 위에 있는 기둥이 맞는지
//                // 양옆의 보가 잘 작동을하는지
//                if checkPillar(x: n - build[1] - 1, y: build[0]) && checkFloor(x: n - build[1] - 1, y: build[0]) && checkFloor(x: n - build[1] - 1, y: build[0] - 1) {
//            
//                } else {
//                    map[n - build[1]][build[0]].isPillar = true
//                }
//                
//            } else { // 설치일 경우
//                if checkPillar(x: n - build[1], y: build[0]) {
//                    map[n - build[1]][build[0]].isPillar = true
//                }
//            }
//        } else { // 보일 경우
//            if build[3] == 0 { // 삭제일 경우
//                map[n - build[1]][build[0]].isFlooor = false
//                // 위에 있는 기둥이 맞는지
//                // 양옆의 보가 잘 작동을하는지
//                if checkPillar(x: n - build[1], y: build[0]) && checkPillar(x: n - build[1], y: build[0] + 1) && checkFloor(x: n - build[1], y: build[0] + 1) && checkFloor(x: n - build[1], y: build[0] - 1) {
//            
//                } else {
//                    map[n - build[1]][build[0]].isFlooor = true
//                }
//                
//            } else { // 설치일 경우
//                if checkFloor(x: n - build[1], y: build[0]) {
//                    map[n - build[1]][build[0]].isFlooor = true
//                }
//            }
//        }
//        
//    }
//    
//    var answer = [[Int]]()
//    
//    for i in 0 ..< map.count {
//        for j in 0 ..< map[i].count {
//            if map[i][j].isPillar {
//                answer.append([ j,n - i,0 ])
//            }
//            if map[i][j].isFlooor {
//                answer.append([ j,n - i,1 ])
//            }
//        }
//    }
//    
//    var sortedAnswer = answer.sorted {
//        if $0[0] == $1[0] {
//            if $0[1] == $1[1] {
//                return $0[2] < $1[2]
//            } else {
//                return $0[1] < $1[1]
//            }
//        } else {
//            return $0[0] < $1[0]
//        }
//    }
//    
//    return sortedAnswer
//}
