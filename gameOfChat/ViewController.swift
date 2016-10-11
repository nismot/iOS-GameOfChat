//
//  ViewController.swift
//  gameOfChat
//
//  Created by Thomas Gurchiek on 10/8/16.
//  Copyright © 2016 Gurchiek Consulting. All rights reserved.
//

import UIKit
import Firebase

// Add other classes here
class ViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // This creates the "Logout" button on the navigation bar in the upper left.
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Logout", style: .plain, target: self, action: #selector(handleLogout))
    }
    
    // This is the handleLogout action
    func handleLogout() {
        
        // Initiate the LoginController class
        let loginController = LoginController()
        
        // This calls the loginController
        present(loginController, animated: true, completion: nil)
    }

}

