//
//  숫자카드2 10816.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/05/27.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution10816() {
    
    let _ = readLine()
    let arr = readLine()!.split(separator: " ").map { String($0) }
    var dic = [String:Int](minimumCapacity: arr.count)
    
    for i in arr.indices {
        dic[arr[i]] = (dic[arr[i]] ?? 0) + 1
    }
    
    let _ = readLine()
    let arr2 = readLine()!.split(separator: " ").map { String($0) }
    
    var ans = ""
    
    for i in arr2.indices {
        
        if dic[arr2[i]] == nil {
            ans += "0 "
        }else {
            ans += "\(dic[arr2[i]]!)" + " "
        }
        
    }
    
    print(ans)
}
