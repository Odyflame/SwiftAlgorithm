//
//  징검다리.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/03/01.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func solution(_ distance:Int, _ rocks:[Int], _ n:Int) -> Int {
    
    var myRocks = rocks
    myRocks.append(0)
    myRocks = myRocks.sorted()
    myRocks.append(distance)
    
    var left = 0, right = myRocks.count
    var mid = 0
    //var index = myRocks.count
    
    while left <= right {
        mid = (left + right) / 2
        
        if myRocks[mid] - (myRocks[left] + myRocks[right]) / 2 < myRocks[mid - 1] - (myRocks[left] + myRocks[right]) / 2 {
            
        } else {
            
        }
    }
    
    return 0
}
