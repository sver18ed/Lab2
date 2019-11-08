//
//  SkillsViewController.swift
//  Lab2
//
//  Created by Erik Sveningsson on 2019-11-08.
//  Copyright © 2019 Erik Sveningsson. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController {
    
    @IBOutlet weak var animationView: UIView!
    var animationViewYPositionConstraint: NSLayoutConstraint?
    
    @IBAction func didTapBack(_ sender: UIButton) {
         dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        self.hideAnimationViewAnimated(animated: false)

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.showAnimationViewAnimated(animated: true)
    }
    
    func hideAnimationViewAnimated(animated: Bool) {
        //remove current constraint
        self.removeAnimationViewYPositionConstraint()
        let hideConstraint = NSLayoutConstraint(item: self.animationView as Any,
            attribute: .bottom,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .top,
            multiplier: 1,
            constant: 0)
        self.animationViewYPositionConstraint = hideConstraint
        self.view.addConstraint(hideConstraint)
        //animate changes
        self.performConstraintLayout(animated: animated)
    }
    
    func showAnimationViewAnimated(animated: Bool) {
        //remove current constraint
        self.removeAnimationViewYPositionConstraint()
        let centerYConstraint = NSLayoutConstraint(item: self.animationView as Any,
            attribute: .centerY,
            relatedBy: .equal,
            toItem: self.view,
            attribute: .centerY,
            multiplier: 1,
            constant: 0)
        self.animationViewYPositionConstraint = centerYConstraint
        self.view.addConstraint(centerYConstraint)
        //animate changes
        self.performConstraintLayout(animated: animated)
    }
    
    func performConstraintLayout(animated: Bool) {
        if animated == true {
            UIView.animate(withDuration: 2,
              delay: 0,
              usingSpringWithDamping: 1.5,
              initialSpringVelocity: 0.8,
              options: .beginFromCurrentState,
              animations: { () -> Void in
                 self.view.layoutIfNeeded()
              }, completion: nil)
         } else {
              self.view.layoutIfNeeded()
         }
    }

    func removeAnimationViewYPositionConstraint() {
        if animationViewYPositionConstraint != nil {
            self.view.removeConstraint(self.animationViewYPositionConstraint!)
            self.animationViewYPositionConstraint = nil
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
