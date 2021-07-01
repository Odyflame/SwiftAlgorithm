//
//  숨바꼭질3 13549.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/25.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation

//
//public struct Heap<T> {
//
//  /** The array that stores the heap's nodes. */
//  var nodes = [T]()
//
//  private var orderCriteria: (T, T) -> Bool
//
//  public init(sort: @escaping (T, T) -> Bool) {
//    self.orderCriteria = sort
//  }
//  public init(array: [T], sort: @escaping (T, T) -> Bool) {
//    self.orderCriteria = sort
//    configureHeap(from: array)
//  }
//  private mutating func configureHeap(from array: [T]) {
//    nodes = array
//    for i in stride(from: (nodes.count/2-1), through: 0, by: -1) {
//      shiftDown(i)
//    }
//  }
//
//  public var isEmpty: Bool {
//    return nodes.isEmpty
//  }
//
//  public var count: Int {
//    return nodes.count
//  }
//
//  @inline(__always) internal func parentIndex(ofIndex i: Int) -> Int {
//    return (i - 1) / 2
//  }
//
//  @inline(__always) internal func leftChildIndex(ofIndex i: Int) -> Int {
//    return 2*i + 1
//  }
//
//  @inline(__always) internal func rightChildIndex(ofIndex i: Int) -> Int {
//    return 2*i + 2
//  }
//
//  public func peek() -> T? {
//    return nodes.first
//  }
//
//  public mutating func insert(_ value: T) {
//    nodes.append(value)
//    shiftUp(nodes.count - 1)
//  }
//
//  public mutating func insert<S: Sequence>(_ sequence: S) where S.Iterator.Element == T {
//    for value in sequence {
//      insert(value)
//    }
//  }
//
//  public mutating func replace(index i: Int, value: T) {
//    guard i < nodes.count else { return }
//
//    remove(at: i)
//    insert(value)
//  }
//
//  @discardableResult public mutating func remove() -> T? {
//    guard !nodes.isEmpty else { return nil }
//
//    if nodes.count == 1 {
//      return nodes.removeLast()
//    } else {
//      // Use the last node to replace the first one, then fix the heap by
//      // shifting this new first node into its proper position.
//      let value = nodes[0]
//      nodes[0] = nodes.removeLast()
//      shiftDown(0)
//      return value
//    }
//  }
//
//  @discardableResult public mutating func remove(at index: Int) -> T? {
//    guard index < nodes.count else { return nil }
//
//    let size = nodes.count - 1
//    if index != size {
//      nodes.swapAt(index, size)
//      shiftDown(from: index, until: size)
//      shiftUp(index)
//    }
//    return nodes.removeLast()
//  }
//
//  internal mutating func shiftUp(_ index: Int) {
//    var childIndex = index
//    let child = nodes[childIndex]
//    var parentIndex = self.parentIndex(ofIndex: childIndex)
//
//    while childIndex > 0 && orderCriteria(child, nodes[parentIndex]) {
//      nodes[childIndex] = nodes[parentIndex]
//      childIndex = parentIndex
//      parentIndex = self.parentIndex(ofIndex: childIndex)
//    }
//
//    nodes[childIndex] = child
//  }
//
//  internal mutating func shiftDown(from index: Int, until endIndex: Int) {
//    let leftChildIndex = self.leftChildIndex(ofIndex: index)
//    let rightChildIndex = leftChildIndex + 1
//
//    var first = index
//    if leftChildIndex < endIndex && orderCriteria(nodes[leftChildIndex], nodes[first]) {
//      first = leftChildIndex
//    }
//    if rightChildIndex < endIndex && orderCriteria(nodes[rightChildIndex], nodes[first]) {
//      first = rightChildIndex
//    }
//    if first == index { return }
//
//    nodes.swapAt(index, first)
//    shiftDown(from: first, until: endIndex)
//  }
//
//  internal mutating func shiftDown(_ index: Int) {
//    shiftDown(from: index, until: nodes.count)
//  }
//
//}
//
//// MARK: - Searching
//extension Heap where T: Equatable {
//
//  /** Get the index of a node in the heap. Performance: O(n). */
//  public func index(of node: T) -> Int? {
//    return nodes.index(where: { $0 == node })
//  }
//
//  /** Removes the first occurrence of a node from the heap. Performance: O(n). */
//  @discardableResult public mutating func remove(node: T) -> T? {
//    if let index = index(of: node) {
//      return remove(at: index)
//    }
//    return nil
//  }
//
//}
//
//public struct PriorityQueue<T: Comparable> {
//    var heap: Heap<T>
//
//    public init(sort: @escaping (T, T) -> Bool) {
//        heap = Heap(sort: sort)
//    }
//
//    public var isEmpty: Bool {
//        return heap.isEmpty
//    }
//
//    public var count: Int {
//        return heap.count
//    }
//
//    public func peek() -> T? {
//        return heap.peek()
//    }
//
//    public mutating func enqueue(element: T) {
//        heap.insert(element)
//    }
//
//    public mutating func dequeue() -> T? {
//        return heap.remove()
//    }
//
//    public mutating func changePriority(index i: Int, value: T) {
//        return heap.replace(index: i, value: value)
//    }
//}
//
//func solution13549() {
//    var NK = readLine()!.split(separator: " ").map { Int($0)! }
//    var value = [Int](repeating: 999999999, count: 100001)
//    var qu = PriorityQueue<Int>(sort: >)
//    var index = 0
//    value[NK[0]] = 0
//    qu.enqueue(element: NK[0])
//
//    func checkRange(_ x: Int) -> Bool {
//        return x >= 0 && x < 100001
//    }
//
//    while !qu.isEmpty {
//        var top = qu.dequeue()!
//
//        if top == NK[1] {
//            break
//        }
//
//        if checkRange(top * 2 ) && value[top * 2] > value[top] {
//            value[top * 2] = value[top]
//            qu.enqueue(element: top * 2)
//        }
//        if checkRange(top + 1 ) && value[top + 1] > value[top] + 1 {
//            value[top + 1] = value[top] + 1
//            qu.enqueue(element: top + 1)
//        }
//        if checkRange(top - 1 ) && value[top - 1] < value[top] + 1 {
//            value[top - 1] = value[top] + 1
//            qu.enqueue(element: top - 1)
//        }
//
//    }
//
//    print(value[NK[1]])
//}
