//
//  WelcomeViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 16.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {
    
    @IBOutlet weak var welcomeLabel: UILabel!
    
    var name: String!
    var lastname: String!
    
    let users = User.getUsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeLabel.text = "Welcome, \(name ?? "") \(lastname ?? "")!"
        
    }
}
