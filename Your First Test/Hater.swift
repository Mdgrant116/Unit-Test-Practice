//
//  Hater.swift
//  Your First Test
//
//  Created by Michael Grant on 11/26/19.
//  Copyright © 2019 Keepitfreshios. All rights reserved.
//

import Foundation

struct Hater {
    
    var hating = false
    
    mutating func hadABadDay() {
        
        hating = true
    }
    
    mutating func hadAGoodDay() {
        
        
        hating = false
    }
}
