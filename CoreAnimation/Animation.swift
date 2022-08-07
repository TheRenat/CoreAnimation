//
//  Animation.swift
//  CoreAnimation
//
//  Created by Renat Ibragimov on 07.08.2022.
//

import Foundation

struct Animation {
    let name: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(name)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
   static func getRandomAnimation() -> Animation {
        Animation(
            name: DataStore.share.animations.randomElement()?.rawValue ?? "",
            curve: DataStore.share.curves.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...1.5),
            duration: Double.random(in: 1...1.5),
            delay: Double.random(in: 0.3...0.7)
        )
    }
}
