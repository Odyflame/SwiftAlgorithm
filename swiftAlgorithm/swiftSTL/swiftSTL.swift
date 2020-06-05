//
//  swiftSTL.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/04.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

struct Queue<T: Equatable> {
    fileprivate var element = [T?]()
    fileprivate var head = 0
    
    public mutating func push(_ value: T) { element.append(value) }
    
    public mutating func poll() -> T? {
        guard head < element.count, let first = element[head] else {
            return nil
        }
        
        element[head] = nil
        head += 1
        
        if element.count > 50 {
            let percentage = Double(head)/Double(element.count)
            if percentage > 0.25 {
                element.removeFirst(head)
                head = 0
            }
        }
        
        return first
    }
    
    public mutating func pop() -> T? {
        let temp = element.removeFirst()
        return temp
    }
    
    public var pick: T? {
        if isEmpty() {
            return nil
        } else {
            return element[head]
        }
    }
    
    public func isEmpty() -> Bool {
        if head >= element.count { return true } else { return false }
    }
}
