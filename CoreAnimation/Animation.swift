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
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    func getRandomAnimation() {
        Animaton(
            name: DataStore.share.animations.randomElement()?.rawValue ?? "",
            curve: <#T##String#>,
            force: <#T##Int#>,
            duration: <#T##Int#>,
            delay: Double.random(in: 0.3...0.7)
        )
    }
}
