//
//  Sum of Root To Leaf Binary Numbers.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/08.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
//func sumRootToLeaf(_ root: TreeNode?) -> Int {
//
//    
//    var answer = [Int]()
//    var sum = 0
//    
//    func rootRecursive(_ root: TreeNode, value: Int) {
//        if root.left == nil && root.right == nil {
//            answer.append(value * 10 + root.val)
//        } else {
//            rootRecursive(root.left!, value: value * 10 + root.val)
//            rootRecursive(root.right!, value: value * 10 + root.val)
//        }
//    }
//    
//    for i in answer {
//        var k = 1
//        var temp = i
//        var tempSum = 0
//        
//        while temp > 0 {
//            sum += (temp % 10) * k
//            temp /= 10
//            k *= 2
//        }
//    }
//    
//    return sum
//}
