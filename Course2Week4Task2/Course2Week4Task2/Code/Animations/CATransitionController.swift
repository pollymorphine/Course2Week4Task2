//
//  CATransitionController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//

import UIKit

class CATransitionController: UIViewController {
    
    @IBOutlet weak var textLabel: UILabel!
    
    @IBAction func swipeHandler(_ sender: UISwipeGestureRecognizer) {
        transitAnimation()
    }
    
    private func transitAnimation() {
        let transition = CATransition()
        transition.type = .moveIn
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        textLabel.textColor = .green
        textLabel.text = "Sliding!"
        textLabel.layer.add(transition, forKey: nil)
    }
    
    private func animationDidStop(_ anim: CAAnimation, finished flag: Bool) {
        let transition  = CATransition()
        transition.type = .fade
        transition.duration = 1
        transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
        
        textLabel.layer.add(transition, forKey: "nil")
        textLabel.textColor = .orange
        textLabel.text = "Initial Text!"
        
    }
}
