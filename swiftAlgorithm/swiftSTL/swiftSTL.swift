//
//  swiftSTL.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/04.
//  Copyright © 2020 odyflame. All rights reserved.
//

// 출처: https://github.com/devmjun/DataStructure/tree/master/1_DataStructure/9_PriorityQueue.playground

//import Foundation
//
//public protocol Queue {
//    associatedtype Element
//    mutating func enqueue(_ element: Element) -> Bool
//    mutating func dequeue() -> Element?
//    var isEmpty: Bool { get }
//    var firstElement: Element? { get }
//    var lastElement: Element? { get }
//}
//
//// 우선순위 큐를 Heap을 사용하여 구현합니다.
//public struct PriorityQueue<Element: Equatable>: Queue { // 1
//    private var heap: Heap<Element> // 2
//    public init(sort: @escaping (Element, Element) -> Bool,
//         elements: [Element] = []) { // 3
//        heap = Heap(sort: sort, elements: elements)
//    }
//
//    public var isEmpty: Bool { return heap.isEmpty }
//    public var firstElement: Element? { return heap.first() } // heap의 첫번째
//    public var lastElement: Element? { return heap.first() } // heap의 마지막
//
//    public mutating func enqueue(_ element: Element) -> Bool { // 1
//        heap.insert(element)
//        return true
//    }
//    public mutating func dequeue() -> Element? { // 2
//        return heap.remove()
//    }
//}
//
//public struct Heap<Element: Equatable> {
//
//    var elements: [Element] = []
//    let sort: (Element, Element) -> Bool
//
//    public init(sort: @escaping (Element, Element) -> Bool, elements: [Element] = []) {
//        self.sort = sort
//        self.elements = elements
//
//        if !elements.isEmpty {
//            for i in stride(from: elements.count / 2 - 1, through: 0, by: -1) {
//                siftDown(from: i)
//            }
//        }
//    }
//
//    public var isEmpty: Bool {
//        return elements.isEmpty
//    }
//
//    public var count: Int {
//        return elements.count
//    }
//
//    public func first() -> Element? {
//        return elements.first
//    }
//
//    public func last() -> Element? {
//        return elements.last
//    }
//
//    func leftChildIndex(ofParentAt index: Int) -> Int {
//        return (2 * index) + 1
//    }
//
//    func rightChildIndex(ofParentAt index: Int) -> Int {
//        return (2 * index) + 2
//    }
//
//    func parentIndex(ofChildAt index: Int) -> Int {
//        return (index - 1) / 2
//    }
//
//    public mutating func remove() -> Element? {
//        guard !isEmpty else {
//            return nil
//        }
//        elements.swapAt(0, count - 1)
//        defer {
//            siftDown(from: 0)
//        }
//        return elements.removeLast()
//    }
//
//    mutating func siftDown(from index: Int) {
//        var parent = index
//        while true {
//            let left = leftChildIndex(ofParentAt: parent)
//            let right = rightChildIndex(ofParentAt: parent)
//            var candidate = parent
//
//            //print("count: \(count), left: \(left), right: \(right)")
//            if left < count && sort(elements[left], elements[candidate]) {
//                candidate = left
//                //print("candidate: \(candidate), sort:\(sort(elements[left], elements[candidate]))")
//            }
//            if right < count && sort(elements[right], elements[candidate]) {
//                candidate = right
//                //print("candidate: \(candidate), sort:\(sort(elements[right], elements[candidate]))")
//            }
//            if candidate == parent {
//                return
//            }
//            elements.swapAt(parent, candidate)
//            parent = candidate
//        }
//    }
//
//    public mutating func insert(_ element: Element) {
//        elements.append(element)
//        siftUp(from: elements.count - 1)
//    }
//
//    mutating func siftUp(from index: Int) {
//        var child = index
//        var parent = parentIndex(ofChildAt: child)
//        while child > 0 && sort(elements[child], elements[parent]) {
//            elements.swapAt(child, parent)
//            child = parent
//            parent = parentIndex(ofChildAt: child)
//        }
//    }
//
//    mutating func remove(at index: Int) -> Element? {
//        guard index < elements.count else {
//            return nil
//        }
//        if index == elements.count - 1 {
//            return elements.removeLast()
//        } else {
//            elements.swapAt(index, elements.count - 1)
//            defer {
//                siftDown(from: index)
//                siftUp(from: index)
//            }
//            return elements.removeLast()
//        }
//    }
//
//    func index(of element: Element, startingAt i: Int) -> Int? {
//        if i >= count { return nil }
//        if sort(element, elements[i]) { return nil }
//        if element == elements[i] { return i }
//        if let j = index(of: element, startingAt: leftChildIndex(ofParentAt: i)) { return j }
//        if let j = index(of: element, startingAt: rightChildIndex(ofParentAt: i)) { return j }
//        return nil
//    }
//}
