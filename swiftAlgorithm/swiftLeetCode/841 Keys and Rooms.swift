//
//  841 Keys and Rooms.swift
//  swiftAlgorithm
//
//  Created by apple on 2021/04/12.
//  Copyright © 2021 odyflame. All rights reserved.
//

import Foundation

func canVisitAllRooms(_ rooms: [[Int]]) -> Bool {
    var visit = [Bool](repeating: false, count: rooms.count)
   
    var answer = true
    
    var qu = [Int]()
    qu.append(0)
    var qCount = 0
    
    while qu.count > qCount {
        let roomNumber = qu[qCount]
        qCount += 1
        
        visit[roomNumber] = true
        if roomNumber == 0 || qu.contains(roomNumber) {
            rooms[roomNumber].forEach { (room) in
                if !visit[room] {
                    qu.append(room)
                }
            }
        }
    }
    
    if visit.contains(false) {
        answer = false
    }
    
    return answer
}
