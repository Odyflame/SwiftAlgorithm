//
//  75. Sort Colors.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/09/09.
//  Copyright © 2020 odyflame. All rights reserved.
//

//import Foundation
//
////퀵소트에 대해서 알아두는 것이 중요하다.
////안정성 불안정성도 조금 정리해서 적어두자
//
//func sortColors(_ nums: inout [Int]) {
//     quicksort(arr: &nums, start: 0, end: nums.count - 1)
//}
//
//
//func quicksort(arr: inout [Int], start: Int, end: Int) {
//    if start < end {
//        let result = partition(arr: &arr, start: start, end: end)
//        quicksort(arr: &arr, start: start, end: result.0 - 1)
//        quicksort(arr: &arr, start: result.1 + 1, end: end)
//    }
//}
//
//func partition(arr: inout [Int], start: Int, end: Int) -> (Int, Int) {
//    let pivot = arr[end]
//    var low = start
//    var high = end
//    var equal = start
//    
//    while equal <= high {
//        if arr[equal] < pivot {
//            (arr[equal], arr[low]) = (arr[low], arr[equal])
//            equal += 1
//            low += 1
//        } else if (arr[equal] == pivot) {
//            equal += 1
//        } else {
//            (arr[equal], arr[high]) = (arr[high], arr[equal])
//            high -= 1
//        }
//    }
//    
//    return (low, high)
//}
