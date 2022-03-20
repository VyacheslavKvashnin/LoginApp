//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 15.03.2022.
//

import UIKit

class LoginViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlets
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    // MARK: - Private Properties
    private let users = User.getUsers()
    
    // MARK: - Override Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTextField.delegate = self
        passwordTextField.delegate = self
        
        registerNotificationCenter()
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let tabBarController = segue.destination as? UITabBarController
        
        guard let viewControllers = tabBarController?.viewControllers else { return }
        
        for viewController in viewControllers {
            
            if let welcomeVC = viewController as? WelcomeViewController {
                
                welcomeVC.name = users.person.name
                welcomeVC.lastname = users.person.lastname
                
            } else if let navigationVC = viewController as? UINavigationController {
                
                let infoVC = navigationVC.topViewController as! InfoViewController
                
                infoVC.title = "\(users.person.name) \(users.person.lastname)"
                infoVC.hobby = users.person.hobby
                
            }
        }
    }
    
    // MARK: - IBActions
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
    
    @IBAction func loginButton() {
        
        guard loginTextField.text == users.login
        else {
            showAlert(with: "Invalid login or password", and: "Enter the correct username and password")
            return
        }
        guard passwordTextField.text == users.password
        else {
            showAlert(with: "Invalid login or password", and: "Enter the correct username and password")
            return
        }
        view.endEditing(true)
    }
    
    @IBAction func forgotNameButton() {
        showAlert(with: "Oops!", and: "Your name is \(users.login)")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(users.password)")
    }
    
    // MARK: - Public Methods
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        if textField == loginTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            loginButton()
            performSegue(withIdentifier: "performSegue", sender: nil)
        }
        return true
    }
    
    func registerNotificationCenter() {
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification, object: nil
        )
        
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification, object: nil
        )
    }
    
    @objc func keyboardWillShow(_ notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height / 3
            }
        }
    }
    
    @objc func keyboardWillHide() {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    // MARK: - Private Methods
    private func showAlert(with title: String, and message: String) {
        
        let alert = UIAlertController(
            title: title,
            message: message,
            preferredStyle: .alert
        )
        
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            self.passwordTextField.text = ""
        }
        
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
