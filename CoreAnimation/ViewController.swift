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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //animationButton.configuration?.title = "START ANIMATION"
    }
    
    @IBAction func startAnimationButton(_ sender: UIButton) {
        get(animation: nextAnimation())
                //animationButton.configuration?.title ?? "")
        print(springAnimationView.animation)
    }
    
    private func get(animation: String) {
        springAnimationView.animation = animation
        springAnimationView.curve = AnimationCurve.allCases.randomElement()?.rawValue ?? " "
        springAnimationView.delay = Double.random(in: 1...1.5)
        springAnimationView.force = Double.random(in: 0...1)
        springAnimationView.duration = Double.random(in: 0...1)
        springAnimationView.animate()
        nextAnimation()
    }
    
    private func nextAnimation() -> String {
        let number = AnimationPreset.allCases.randomElement()?.rawValue ?? " "
        animationButton.configuration?.title = number
        return number
    }
}

