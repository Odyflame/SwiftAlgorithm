//
//  토마토 7569.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/11/04.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func solution7569() {
//
//    var NMH = readLine()!.components(separatedBy: " ").map { Int($0)! }
//    var arr = [[[Int]]](repeating: [[Int]](repeating: [Int](), count: NMH[1]), count: NMH[2])
//
//    for i in 0 ..< NMH[2] {
//        for j in 0 ..< NMH[1] {
//            var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//            arr[i][j] = temp
//        }
//    }
//
//    struct Point {
//        var x: Int
//        var y: Int
//        var z: Int
//    }
//
//    func Range(x: Int, y: Int, z: Int ) -> Bool {
//        return x >= 0 && y >= 0 && z >= 0 && x < NMH[0] && y < NMH[1] && z < NMH[2]
//    }
//
//    let dx = [0,0,1,-1]
//    let dy = [1,-1,0,0]
//    let dz = [1,-1]
//
//    func BFS() -> Int {
//
//        var queue = [Point]()
//
//        for i in 0 ..< arr.count {
//            for j in 0 ..< arr[i].count {
//                for h in 0 ..< arr[i][j].count {
//                    if arr[i][j][h] == 1  {
//                        var temp = Point(x: h, y: j, z: i)
//                        queue.append(temp)
//                    }
//                }
//            }
//        }
//
//        var tempAns = 0
//
//        while !queue.isEmpty {
//
//            var check = queue.count
//            for _ in 0 ..< check {
//                var temp = queue.removeLast()
//
//                for i in 0 ..< 2 {
//                    if Range(x: temp.x, y: temp.y, z: temp.z + dz[i]) && arr[temp.z + dz[i]][temp.y][temp.x] == 0 {
//                        arr[temp.z + dz[i]][temp.y][temp.x] = 1
//                        queue.append(Point(x: temp.x, y: temp.y, z: temp.z + dz[i]))
//                    }
//                }
//                for i in 0 ..< 4 {
//                    if Range(x: temp.x + dx[i], y: temp.y + dy[i], z: temp.z ) && arr[temp.z ][temp.y + dy[i]][temp.x + dx[i]] == 0 {
//                        arr[temp.z ][temp.y + dy[i]][temp.x + dx[i]] = 1
//                        queue.append(Point(x: temp.x + dx[i], y: temp.y + dy[i], z: temp.z ))
//                    }
//                }
//            }
//
//            if queue.isEmpty { break }
//            tempAns += 1
//        }
//
//        for i in 0 ..< arr.count {
//            for j in 0 ..< arr[i].count {
//                for h in 0 ..< arr[i][j].count {
//                    if arr[i][j][h] == 0  {
//                        return -1
//                    }
//                }
//            }
//        }
//
//        return tempAns
//    }
//
//    print(BFS())
//
//}

//import Foundation

//func solution7569() {
//    let NMH = readLine()!.components(separatedBy: " ").map { Int($0)! }
//        var arr = [[[Int]]](repeating: [[Int]](repeating: [Int](), count: NMH[1]), count: NMH[2])
//
//        for i in 0 ..< NMH[2] {
//            for j in 0 ..< NMH[1] {
//                let temp = readLine()!.split(separator: " ").map { Int($0)! }
//                arr[i][j] = temp
//            }
//        }
//
//        struct Point {
//            var x: Int
//            var y: Int
//            var z: Int
//            var sum: Int
//        }
//
//        func Range(x: Int, y: Int, z: Int ) -> Bool {
//            return x >= 0 && y >= 0 && z >= 0 && x < NMH[0] && y < NMH[1] && z < NMH[2]
//        }
//
//        let dx = [0,0,1,-1]
//        let dy = [1,-1,0,0]
//        let dz = [1,-1]
//
//        var zeroSum = 0
//
//        func BFS() -> Int {
//
//            var queue = [Point]()
//
//            for i in 0 ..< arr.count {
//                for j in 0 ..< arr[i].count {
//                    for h in 0 ..< arr[i][j].count {
//                        if arr[i][j][h] == 1  {
//                            queue.append(Point(x: h, y: j, z: i, sum: 0))
//                        }
//                        else if arr[i][j][h] == 0 {
//                            zeroSum += 1
//                        }
//                    }
//                }
//            }
//
//            var tempAns = 0
//            var cnt = 0
//            while cnt < queue.count {
//
//                let check = queue.count
//                let temp = queue[cnt]
//                cnt += 1
//
//                for i in 0 ..< 2 {
//                    if Range(x: temp.x, y: temp.y, z: temp.z + dz[i]) && arr[temp.z + dz[i]][temp.y][temp.x] == 0 {
//                        arr[temp.z + dz[i]][temp.y][temp.x] = 1
//                        queue.append(Point(x: temp.x, y: temp.y, z: temp.z + dz[i], sum: temp.sum + 1))
//                        tempAns = max(temp.sum + 1, tempAns)
//                        zeroSum -= 1
//                    }
//                }
//                for i in 0 ..< 4 {
//                    if Range(x: temp.x + dx[i], y: temp.y + dy[i], z: temp.z ) && arr[temp.z ][temp.y + dy[i]][temp.x + dx[i]] == 0 {
//                        arr[temp.z ][temp.y + dy[i]][temp.x + dx[i]] = 1
//                        queue.append(Point(x: temp.x + dx[i], y: temp.y + dy[i], z: temp.z , sum: temp.sum + 1))
//                        tempAns = max(temp.sum + 1, tempAns)
//                        zeroSum -= 1
//                    }
//                }
//
//                if zeroSum == 0 { break }
//
//            }
//
//            if zeroSum == 0 {
//                return tempAns
//            } else {
//                return -1
//            }
//        }
        
        //print(BFS())
//    
//    (1...10).everyOther { (a) in
//        print("우앙ㅇ \(a) 우")
//    }
//}

//extension Collection {
//    func everyOther(_ body: (Element) -> Void) {
//        let start = self.startIndex
//        let end = self.endIndex
//        
//        var iter = start
//        while iter != end {
//            body(self[iter])
//            let next = index(after: iter)
//            if next == end { break }
//            iter = index(after: next)
//            
//            print(self[iter..<self.endIndex])
//        }
//    }
//    
//    var second: Element? {
//        guard self.startIndex != self.endIndex else {
//            return nil
//        }
//        
//        let index = self.index(after: self.startIndex)
//        
//        guard index != self.endIndex else {
//            return nil
//        }
//        
//        // return second.index
//    }
//    
//    var second2: Element? {
//        return self.dropFirst().first
//    }
//}
