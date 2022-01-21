//
//  Hater.swift
//  Education_Unit_Tests
//
//  Created by Nate Hancock on 1/21/22.
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
