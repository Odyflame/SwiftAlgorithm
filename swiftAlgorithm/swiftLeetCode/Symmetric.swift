//
//  Symmetric.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/15.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

 public class TreeNode {
     public var val: Int
     public var left: TreeNode?
     public var right: TreeNode?
     public init() { self.val = 0; self.left = nil; self.right = nil; }
     public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
     public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
         self.val = val
         self.left = left
         self.right = right
   }
}

func isSymmetric(_ root: TreeNode?) -> Bool {
    
    var answer = true
    if root == nil {
        return answer
    }
    
    var qu = Array<(TreeNode?, TreeNode?)>()
    qu.append((root!.left, root!.right))
    
    while !qu.isEmpty {
        var temp = qu.removeFirst()
        
        if temp.0 == nil && temp.1 == nil {
            continue
        }else if temp.0 == nil || temp.1 == nil  {
            return false
        } else if temp.0?.val != temp.1?.val {
            return false
        }
        
        qu.append(( temp.0?.left, temp.1?.right))
        qu.append(( temp.0?.right, temp.1?.left))
    }
    
    return answer
}
