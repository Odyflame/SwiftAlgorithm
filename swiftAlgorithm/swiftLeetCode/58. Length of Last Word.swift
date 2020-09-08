//
//  58. Length of Last Word.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/07.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


func lengthOfLastWord(_ s: String) -> Int {
    
    return s.split(separator: " ").last?.count ?? 0
}
