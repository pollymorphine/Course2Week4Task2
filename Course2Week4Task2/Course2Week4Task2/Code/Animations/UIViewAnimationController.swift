//
//  UIViewAnimationController.swift
//  Course2Week4Task2
//
//  Copyright © 2018 e-Legion. All rights reserved.
//
import UIKit

class UIViewAnimationController: UIViewController {
    
    @IBOutlet weak var animationView: UIView!
    @IBOutlet weak var flipButton: UIButton!
    
    @IBAction func animationViewTapHandler(sender: UITapGestureRecognizer) {
        animationOrangeView()
    }
    
    @IBAction func flipButtonTapHandler(sender: UIButton) {
        flipViewRotation()
    }
    
    private func animationOrangeView() {
        UIView.animate(withDuration: 1, delay: 0.5, options: [.curveEaseInOut], animations: {
            self.animationView.center.x = self.view.frame.width - (self.animationView.frame.width / 2)
            self.animationView.transform = self.animationView.transform.rotated(by: .pi) })
    }
    
    private func flipViewRotation() {
        UIView.animate(withDuration: 1, delay: 0.5, options: [.curveEaseInOut], animations: {
            if self.view.transform == .init(rotationAngle: 0) {
                self.view.transform = self.view.transform.rotated(by: .pi)
                self.flipButton.transform = self.flipButton.transform.rotated(by: .pi)
            } else if self.view.transform == .init(rotationAngle: .pi) {
                self.view.transform = self.view.transform.rotated(by: .pi * 2)
                self.flipButton.transform = self.flipButton.transform.rotated(by: .pi * 2)
            } else {
                self.view.transform = self.view.transform.rotated(by: .pi)
                self.flipButton.transform = self.flipButton.transform.rotated(by: .pi)
            }
        })
    }
}
