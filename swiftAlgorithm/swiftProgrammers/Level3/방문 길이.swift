//
//  방문 길이.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

// 코드를 분석해 볼것

//func solution(_ dirs:String) -> Int {
//
//    var check = [[Bool]](repeating: [Bool](repeating: false, count: 10), count: 10)
//    var check2 = [((Int, Int), (Int, Int))]
//    var pos = ( 4, 4 )
//    var answer = 0
//
//    for (index, value) in dirs.enumerated() {
//        if value == "L" {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.1 -= 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else if value == "U" {
//             if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.0 -= 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else if value == "R" {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.1 += 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        } else {
//            if pos.0 - 1 > -1 && pos.0 + 1 < 10 && pos.1 - 1 > -1 && pos.1 + 1 < 10 {
//                pos.0 += 1
//                if !check[pos.0][pos.1] {
//                    answer += 1
//                    check[pos.0][pos.1] = true
//                }
//            }
//        }
//    }
//
//    return answer
//}

//typealias point = (x: Int, y: Int)
//
//func solution(_ dirs: String) -> Int {
//    var position: point = (0,0)
//    var walkedRoads = Set<String>()
//
//    func checkAvailablePosition(pt: point) -> Bool {
//        return abs(pt.x) <= 5 && abs(pt.y) <= 5
//    }
//
//    func walk(before: point, by: point) -> point {
//        let new: point = (before.x + by.x, before.y + by.y)
//        guard checkAvailablePosition(pt: new) else { return before }
//
//        let roadX = before.x + new.x
//        let roadY = before.y + new.y
//
//        walkedRoads.insert("\(roadX)\(roadY)")
//
//        return new
//    }
//
//    dirs.forEach {
//        switch $0 {
//        case "U":
//            position = walk(before: position, by: (0, 1))
//        case "D":
//            position = walk(before: position, by: (0, -1))
//            case "R":
//            position = walk(before: position, by: (1, 0))
//            case "L":
//            position = walk(before: position, by: (-1, 0))
//        default:
//            break
//        }
//    }
//
//    return walkedRoads.count
//}

struct point: Hashable {
    // 구조체일 경우에는 모두 Hashable을 준수해야 한다. 열거형일 경우 모든 associated valeus는 모두 Hashable을 준수해야 한다.
    // Hashable의 정의는 정수 Hash값을 제공하는 타입이다. 이 정수 Hash가 있기 때문에 우리가 찾으려는 원소를 빨리 찾을 수 있다.
    var x: Int
    var y: Int
    
    func move(_ to: Character) -> point? {
        switch to {
        case "U":
            guard self.y < 5 else { return nil }
            return point(x: self.x, y: self.y + 1)
        case "D":
            guard self.y > -5 else { return nil }
            return point(x: self.x, y: self.y - 1)
        case "R" :
            guard self.x < 5 else { return nil }
            return point(x: self.x + 1, y: self.y)
            case "L" :
            guard self.x > -5 else { return nil }
            return point(x: self.x - 1, y: self.y)
        default:
            return nil
        }
    }
}

struct path: Hashable {
    var startPoint: point
    var endPoint: point
}

func solution(_ dirs:String) -> Int {
    
    var pos = point(x: 0, y: 0)
    var paths = Set<path>()
    
    dirs.forEach {
        guard let next = pos.move( $0 ) else {
            return
        }
        
        paths.insert(path(startPoint: pos, endPoint: next))
        paths.insert(path(startPoint: next, endPoint: pos))
        
        pos = next
    }
    
    return paths.count / 2
}

