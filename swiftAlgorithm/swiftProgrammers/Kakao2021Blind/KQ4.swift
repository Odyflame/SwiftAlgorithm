//
//  KQ4.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/12.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

//func solution(_ n:Int, _ s:Int, _ a:Int, _ b:Int, _ fares:[[Int]]) -> Int {
//    
//    struct Point {
//        var Apos: Int
//        var Bpos: Int
//        
//    }
//    
//    struct root {
//        var start: Int
//        var end: Int
//        var cost: Int
//    }
//    
//    var roots = [root]()
//    
//    for i in fares {
//        roots.append( root(start: i[0], end: i[1], cost: i[2]) )
//        roots.append( root(start: i[1], end: i[0], cost: i[2]) )
//    }
//    
//    var queue = [(Point, Int)]()
//    
//    var current: Point = Point(Apos: s, Bpos: s)
//    var checkA = [Bool](repeating: false, count: n + 1)
//    var checkB = [Bool](repeating: false, count: n + 1)
//    var answer = 9999999
//    
//    queue.append( (current, 0))
//    
//    while !queue.isEmpty {
//        
//        var temp = queue.first
//        queue.removeFirst()
//        
//        checkA[(temp?.0.Apos)!] = true
//        checkB[(temp?.0.Bpos)!] = true
//        
//        let roots1 = roots.filter {  return $0.start == temp?.0.Apos }
//        let roots2 = roots.filter {  return $0.start == temp?.0.Bpos }
//        
//        if temp?.0.Apos == a && temp?.0.Bpos == b {
//            answer = min( (temp?.1)!, answer)
//        } else {
//            for root1 in roots1 {
//                for root2 in roots2 {
//                    
//                    if root1.end == root2.end {
//                        
//                        if temp?.0.Apos == a && !checkB[root2.end] {
//                            queue.append( (Point(Apos: a, Bpos: root2.end), temp!.1 + root1.cost ) )
//                        } else if temp?.0.Bpos == b && !checkA[root1.end]{
//                            queue.append( (Point(Apos: root1.end, Bpos: b), temp!.1 + root2.cost ) )
//                        }
//                        else if !checkB[root2.end] && !checkA[root1.end] {
//                            queue.append( (Point(Apos: root1.end, Bpos: root2.end), temp!.1 + root1.cost ) )
//                        }
//                    } else {
//                        
//                        if temp?.0.Apos == a && !checkB[root2.end] {
//                            queue.append( (Point(Apos: a, Bpos: root2.end), temp!.1 + root2.cost ) )
//                        } else if temp?.0.Bpos == b && !checkA[root1.end] {
//                            queue.append( (Point(Apos: root1.end, Bpos: b), temp!.1 + root1.cost ) )
//                        }
//                        else if !checkB[root2.end] && !checkA[root1.end] {
//                            queue.append( (Point(Apos: root1.end, Bpos: root2.end), temp!.1 + root2.cost + root1.cost ) )
//                        }
//                        
//                    }
//                }
//            }
//        }
//        
//    }
//    
//    return answer
//}

