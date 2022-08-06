//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Renat Ibragimov on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    @IBOutlet var springAnimationView: SpringView!
    @IBOutlet var animationButton: UIButton!
    
    @IBOutlet var presentLabel: UILabel!
    @IBOutlet var curveLabel: UILabel!
    @IBOutlet var forceLabel: UILabel!
    @IBOutlet var durationLabel: UILabel!
    @IBOutlet var delayLabel: UILabel!
    
    @IBAction func startAnimationButton(_ sender: UIButton) {
        setParameters(for: animationButton.configuration?.title ?? "")
        getValues()
        nextAnimation()
    }
    
    private func setParameters(for animation: String) {
        springAnimationView.animation = animation
        springAnimationView.curve = AnimationCurve.allCases.randomElement()?.rawValue ?? " "
        springAnimationView.delay = Double.random(in: 0...0.5)
        springAnimationView.force = Double.random(in: 0.5...1.5)
        springAnimationView.duration = Double.random(in: 0.5...1.5)
        springAnimationView.animate()
    }
    
    private func nextAnimation() -> String {
        let animationName = AnimationPreset.allCases.randomElement()?.rawValue ?? " "
        animationButton.configuration?.title = animationName
        return animationName
    }
    
    private func getValues() {
        presentLabel.text = "Present: \(springAnimationView.animation)"
        curveLabel.text = "Curve: \(springAnimationView.curve)"
        forceLabel.text = "Force: \(String(format: "%.2f", springAnimationView.force))"
        durationLabel.text = "Duration: \(String(format: "%.2f", springAnimationView.duration))"
        delayLabel.text = "Delay: \(String(format: "%.2f", springAnimationView.delay))"
    }
}


