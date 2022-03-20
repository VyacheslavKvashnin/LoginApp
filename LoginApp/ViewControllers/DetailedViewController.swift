//
//  DetailedViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 19.03.2022.
//

import UIKit

class DetailedViewController: UIViewController {
    
    @IBOutlet weak var detailLabel: UILabel!
    
    var detail: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailLabel.text = detail
    }
}
