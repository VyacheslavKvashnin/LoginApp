//
//  InfoViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 18.03.2022.
//

import UIKit

class InfoViewController: UIViewController {
    
    @IBOutlet weak var hobbyLabel: UILabel!
    
    var users: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "\(users.person.name) \(users.person.lastname)"
        
        hobbyLabel.text = users.person.hobby
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let detailVC = segue.destination as? DetailedViewController else { return }
        detailVC.users = users
    }
}
