//
//  main.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/26.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation


func viewDidLoad() {
    var arr = Int(readLine()!)!

      for i in 0 ..< arr {
        let arr2 = readLine()
        let arr3 = arr2!.components(separatedBy: " ")
        
        print("Case #\(i + 1): \(Int(arr3[0])! + Int(arr3[1])!)")
    }
}
