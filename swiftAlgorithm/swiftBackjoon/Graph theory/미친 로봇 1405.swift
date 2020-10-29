//
//  미친 로봇 1405\.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/10/29.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution1405() {
//
//    let NDirec = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//    struct Point: Hashable {
//        var xpos: Int
//        var ypos: Int
//    }
//
//    var myPos = Set<Point>()
//    let dx = [0,0,1,-1]
//    let dy = [1,-1, 0,0]
//
//    myPos.insert(Point(xpos: 0, ypos: 0))
//
//    func DFS(depth: Int, sum: Double, curPos: Point ) -> Double{
//
//        if depth == NDirec[0] {
//            return sum
//        }
//
//        var answer = 0.0
//
//        for i in 0 ..< 4 {
//            let temp = Point(xpos: curPos.xpos + dx[i], ypos: curPos.ypos + dy[i])
//
//            if !myPos.contains(temp) {
//                myPos.insert(temp)
//                answer += DFS(depth: depth + 1, sum: sum * Double(NDirec[i + 1]) / 100.0, curPos: temp)
//                myPos.remove(temp)
//            }
//        }
//
//        return answer
//    }
//
//    var ans = DFS(depth: 0, sum: 1.0, curPos: Point(xpos: 0, ypos: 0))
//    print(ans)
//}
