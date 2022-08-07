//
//  DataStore.swift
//  CoreAnimation
//
//  Created by Renat Ibragimov on 07.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    
    static let share = DataStore()
    
    let animations = AnimationPreset.allCases
    let curves = AnimationCurve.allCases
    
    private init() {}
}
