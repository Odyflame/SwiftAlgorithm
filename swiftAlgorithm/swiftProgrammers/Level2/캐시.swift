//
//  캐시.swift
//  swiftAlgorithm
//
//  Created by apple on 2020/07/03.
//  Copyright © 2020 odyflame. All rights reserved.
//

import Foundation

func solution(_ cacheSize:Int, _ cities:[String]) -> Int {
    
    var answer = 0
    var caches = [String]()
    
    var cities = cities.map { $0.uppercased() }
    
    if cacheSize > 0 {
        
        for city in cities {
            if caches.contains(city) {
                caches.remove(at: caches.index(of: city)!)
                caches.append(city)
                answer += 1
            } else {
                if caches.count < cacheSize {
                    caches.append(city)
                    answer += 5
                } else {
                    caches.removeFirst()
                    caches.append(city)
                    answer += 5
                }
            }
        }
        
    } else {
        answer += cities.count * 5
    }
    
    return answer
}
