//
//  Medium of Two Sorted Arrays.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/06/05.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {

    var num3 = nums1 + nums2
    var left = 0, right = num3.count
    var mid = left + right / 2

    var sortNum = num3.sorted()
    
    if sortNum.count % 2  == 0 {
        return Double(sortNum[sortNum.count/2 - 1] + sortNum[sortNum.count/2]) / 2
    } else {return Double(sortNum[sortNum.count/2]) }

    return 0.0
}
