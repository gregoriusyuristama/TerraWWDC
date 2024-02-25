//
//  File.swift
//  
//
//  Created by Gregorius Yuristama Nugraha on 2/25/24.
//

import Foundation

class ChoiceState {
    static let shared = ChoiceState()
    
    var isWakeupEarly = false
    var sustainableScore = 0
    private init() {}
    
    func resetAll() {
        isWakeupEarly = false
        sustainableScore = 0
    }
}
