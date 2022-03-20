//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 16.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var users: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(users.person.name) \(users.person.lastname)!"
        
    }
}
