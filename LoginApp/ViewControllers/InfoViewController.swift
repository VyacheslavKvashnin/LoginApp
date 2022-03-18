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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hobbyLabel.text = hobby
        
    }
}
