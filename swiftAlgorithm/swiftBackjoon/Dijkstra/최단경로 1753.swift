//
//  최단경로 1753.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/16.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation

// 다익스트라 알고리즘
// 한 시작점에서 모든 도착점까지의 최단경로 구하기 알고리즘이다.
// 스위프트로 구현한 우선순위 큐는 잘못된 것 같다.
//func solution1753() {
//    var VE = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//    var startPos = Int(readLine()!)!
//    var INF = 9999999
//
//    var p = [[Int]](repeating: [Int](repeating: INF, count: VE[0] + 1), count: VE[0] + 1)
//    var road = [[Int]](repeating: [], count: VE[0] + 1)
//
//    for i in 0 ..< VE[1] {
//        var temp = readLine()!.components(separatedBy: " ").map { Int($0)! }
//
//        p[temp[0]][temp[1]] = temp[2]
//        //p[temp[1]][temp[0]] = temp[2]
//
//        road[temp[0]].append(temp[1])
//        //road[temp[1]].append(temp[0])
//    }
//
//    struct Point: Equatable {
//        var start: Int
//        var sum: Int = 0
//    }
//
//    func DESC(a: Point, b: Point) -> Bool {
//        return a.sum < b.sum
//    }
//
//
//
//    var d = [Int](repeating: INF, count: VE[0] + 1)
//    var check = [Bool](repeating: false, count: VE[0] + 1)
//    d[startPos] = 0
//
//    var queue = PriorityQueue<Point>(sort: DESC)
//    queue.enqueue(Point(start: startPos, sum: 0))
//
//    while !queue.isEmpty {
//        guard let currentQueue = queue.dequeue() else {
//            return
//        }
//
//        if currentQueue.sum > d[currentQueue.start] {
//            continue
//        }
//
//        if !road[currentQueue.start].isEmpty {
//            for j in road[currentQueue.start] {
//
//                d[j] = min(d[j], d[currentQueue.start] + p[currentQueue.start][j])
//                queue.enqueue(Point(start: j, sum: currentQueue.sum + d[j]))
//            }
//        }
//    }
//
//    for i in 1..<d.count {
//        if d[i] == INF {
//            print("INF")
//        }else {
//            print(d[i])
//        }
//    }
//}

// 이는 gustn3065님의 코드이다.
// priority Queue를 이렇게 작성한 듯 하다

//public struct Heap<T> {
//  var nodes: [T] = []
//  let comparer: (T,T) -> Bool
//
//  var isEmpty: Bool {
//      return nodes.isEmpty
//  }
//
//  init(comparer: @escaping (T,T) -> Bool) {
//      self.comparer = comparer
//  }
//
//  func peek() -> T? {
//      return nodes.first
//  }
//
//  mutating func insert(_ element: T) {
//      var index = nodes.count
//
//      nodes.append(element)
//
//      while index > 0, !comparer(nodes[index],nodes[(index-1)/2]) {
//          nodes.swapAt(index, (index-1)/2)
//          index = (index-1)/2
//      }
//  }
//
//  mutating func delete() -> T? {
//      guard !nodes.isEmpty else {
//          return nil
//      }
//
//      if nodes.count == 1 {
//          return nodes.removeFirst()
//      }
//
//      let result = nodes.first
//      nodes.swapAt(0, nodes.count-1)
//      _ = nodes.popLast()
//
//      var index = 0
//
//      while index < nodes.count {
//          let left = index * 2 + 1
//          let right = left + 1
//
//          if right < nodes.count {
//              if comparer(nodes[left], nodes[right]),
//                  !comparer(nodes[right], nodes[index]) {
//                  nodes.swapAt(right, index)
//                  index = right
//              } else if !comparer(nodes[left], nodes[index]){
//                  nodes.swapAt(left, index)
//                  index = left
//              } else {
//                  break
//              }
//          } else if left < nodes.count {
//              if !comparer(nodes[left], nodes[index]) {
//                  nodes.swapAt(left, index)
//                  index = left
//              } else {
//                  break
//              }
//          } else {
//              break
//          }
//      }
//
//      return result
//  }
//}
//
//
//extension Heap where T: Comparable {
//    init() {
//        self.init(comparer: >)
//    }
//}

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
//extension Array where Element: Comparable {
//    mutating func binaryInsert(_ element: Element) {
//        if isEmpty {
//            self.append(element)
//            return
//        }
//
//        var left = 0
//        var right = count-1
//
//        while left<=right {
//            let mid = (left+right)/2
//
//            if self[mid] >= element {
//                left = mid+1
//            } else {
//                right = mid-1
//            }
//        }
//
//        self.insert(element, at: left)
//    }
//}
//
//struct QueueElement: Equatable, Comparable {
//    static func < (lhs: QueueElement, rhs: QueueElement) -> Bool {
//        return lhs.sum < rhs.sum
//    }
//
//    var start: Int
//    var sum: Int
//}
//
//func solution1753() {
//    let INF = 9999999
//    let VE = readLine()!.parse()
//
//    let startPos = Int(readLine()!)!
//
//    var distances = Array(repeating: INF, count: VE[0] + 1)
//
//    distances[startPos] = 0
//
//    var edges = [Int:[(Int,Int)]]()
//
//    for _ in 0..<VE[1] {
//        let temp = readLine()!.parse()
//
//        if edges[temp[0]] == nil {
//            edges[temp[0]] = [ (temp[1], temp[2] ) ]
//        }else {
//            edges[temp[0]]!.append( ( temp[1], temp[2]) )
//        }
//    }
//
//    var queue: [QueueElement] = []
//    queue.append(QueueElement(start: startPos, sum: 0))
//
//    while !queue.isEmpty {
//        let currentQueue = queue.removeLast()
//
//        if distances[currentQueue.start] >= currentQueue.sum {
//            guard let nextEdges = edges[currentQueue.start] else {
//                continue
//            }
//
//            for edge in nextEdges {
//                if distances[edge.0] > distances[currentQueue.start] + edge.1 {
//                    distances[edge.0] = distances[currentQueue.start] + edge.1
//                    queue.binaryInsert(QueueElement(start: edge.0, sum: currentQueue.sum + edge.1))
//                }
//            }
//        }
//
//    }
//
//    for d in 1 ..< distances.count {
//        if distances[d] == INF {
//            print("INF")
//        } else {
//            print(distances[d])
//        }
//    }
//}
