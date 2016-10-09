//
//  LogoutController.swift
//  gameOfChat
//
//  Created by Thomas Gurchiek on 10/8/16.
//  Copyright © 2016 Gurchiek Consulting. All rights reserved.
//

import UIKit

class LoginController: UIViewController {
    
    // You can still initiate your view the old way instead of doing it like this.
    // This is just a cleaner/nicer way of putting it together.
    let inputsContainerView: UIView = {
    
        let view = UIView()
        view.backgroundColor = UIColor.white
    
        // If set to true, the view superview looks at the autoresizing mask, produces constraints that implement it, and adds those constraints to itself.
        // If set to false, indicates that you will implement contraints yourself.
        view.translatesAutoresizingMaskIntoConstraints = false
        
        // This gives us the corner radius on our container
        view.layer.cornerRadius = 5
        
        // The corner radius will not be visible until we add maskToBounds = true
        view.layer.masksToBounds = true
    
        return view
    }() //executes the block
    
    // loginRegisterButton
    let loginRegisterButton: UIButton = {
        let button = UIButton(type: .system) //.(type: .System)
        button.backgroundColor = UIColor(r: 80, g: 101, b: 161)
        button.setTitle("Register", for: .normal)
        button.setTitleColor(UIColor.white, for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // This is setting the background color of the view.
        // view.backgroundColor = UIColor.red is sufficient. Below is a more detailed way.
        //view.backgroundColor = UIColor(red: 61/255, green: 91/255, blue: 151/255, alpha: 1)
        
        // Here we replaced the old background with our convience extension below.
        view.backgroundColor = UIColor(r: 61, g: 91, b: 151)
        
        
        // This is needed for it to actually show up on the view.
        view.addSubview(inputsContainerView)
        view.addSubview(loginRegisterButton)
        
        setupInputsContainerView()
        setupLoginRegisterButton()
    }
    
    // Constraints for the inputsContainerView
    func setupInputsContainerView() {
        // need x, y, width, height constraints
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -24).isActive = true
        inputsContainerView.heightAnchor.constraint(equalToConstant: 150).isActive = true
        
    }
    
    // Constraints for the loginRegisterButton
    func setupLoginRegisterButton() {
        // need x, y, width, height constraints
        loginRegisterButton.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        loginRegisterButton.topAnchor.constraint(equalTo: inputsContainerView.bottomAnchor, constant: 12).isActive = true
        loginRegisterButton.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        loginRegisterButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    // This makes the status bar (text) at the top white. Status bar is the small strip the has the carrier signal, time, and battery life.
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
