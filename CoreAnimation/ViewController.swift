//
//  ViewController.swift
//  CoreAnimation
//
//  Created by Renat Ibragimov on 04.08.2022.
//

import UIKit
import SpringAnimation

class ViewController: UIViewController {
    
    //MARK: - IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springAnimationLabel: UILabel! {
        didSet {
            springAnimationLabel.text = animation.description
        }
    }
    
   //MARK: - Private Methods
    private var animation = Animation.getRandomAnimation()
    
    //MARK: - IB Actions
    @IBAction func startAnimationButton(_ sender: UIButton) {
        springAnimationLabel.text = animation.description

        springAnimationView.animation = animation.name
        springAnimationView.curve = animation.curve
        springAnimationView.delay = animation.delay
        springAnimationView.force = animation.force
        springAnimationView.duration = animation.duration
        springAnimationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
}


