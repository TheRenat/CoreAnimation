//
//  Animation.swift
//  CoreAnimation
//
//  Created by Renat Ibragimov on 07.08.2022.
//

import Foundation

struct Animaton {
    let name: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(force)
        duration: \(duration)
        delay: \(delay)
        """
    }
    
    func getRandomAnimation() {
        Animaton(
            name: <#T##String#>, curve: <#T##String#>, force: <#T##Int#>, duration: <#T##Int#>, delay: <#T##Int#>)
    }
}
