//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 18.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var hobby: String!
    
    let users = User.getUsers()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = hobby
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let detailVC = segue.destination as? DetailedViewController {
            detailVC.detail = users.person.detail
        }
    }
}
