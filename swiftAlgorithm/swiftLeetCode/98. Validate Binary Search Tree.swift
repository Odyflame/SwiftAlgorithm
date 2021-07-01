//
//  98. Validate Binary Search Tree.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/06/29.
//  Copyright © 2021 odyflame. All rights reserved.
//

//import Foundation
//
//public class TreeNode {
//    public var val: Int
//    public var left: TreeNode?
//    public var right: TreeNode?
//    public init() { self.val = 0; self.left = nil; self.right = nil; }
//    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
//    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
//        self.val = val
//        self.left = left
//        self.right = right
//    }
//}
//
//func isValidBST(_ root: TreeNode?) -> Bool {
//    return isBST(root, min: Int.min, max: Int.max)
//}
//
//private func isBST(_ node: TreeNode?, min: Int, max: Int) -> Bool {
//    if node == nil { return true }
//    if node!.val <= min || node!.val >= max { return false }
//    return isBST(node?.left, min: min, max: node!.val)
//        && isBST(node?.right, min: node!.val, max: max)
//}
