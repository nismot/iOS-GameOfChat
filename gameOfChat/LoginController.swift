//
//  LogoutController.swift
//  gameOfChat
//
//  Created by Thomas Gurchiek on 10/8/16.
//  Copyright © 2016 Gurchiek Consulting. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This is setting the background color of the view.
        // view.backgroundColor = UIColor.red is sufficient. Below is a more detailed way.
        //view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        
        // Here we replaced the old background with our convience extension below.
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        let inputsContainerView = UIView()
        inputsContainerView.backgroundColor = UIColor.white
        
        // If set to true, the view superview looks at the autoresizing mask, produces constraints that implement it, and adds those constraints to itself.
        // If set to false, indicates that you will implement contraints yourself.
        inputsContainerView.translatesAutoresizingMaskIntoConstraints = false
        
        // This is needed for it to actually show up on the view.
        view.addSubview(inputsContainerView)
        
        // need x, y, width, height constraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
    }
    
    // This makes the status bar at the top white. Status bar is the small strip the has the carrier signal, time, and battery life.
    override var preferredStatusBarStyle: UIStatusBarStyle{
        return .lightContent
    }
}

// We create a convience extension to accommodate for writing the 255 values over and over.
extension UIColor {
    
    convenience init(r: CGFloat, g: CGFloat, b: CGFloat) {
        self.init(red: r/255, green: g/255, blue: b/255, alpha: 1)
    }
}
