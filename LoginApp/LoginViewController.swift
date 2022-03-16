//
//  LoginViewController.swift
//  LoginApp
//
//  Created by Вячеслав Квашнин on 15.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    let user = "User"
    let password = "Password"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.loginLabel = loginTextField.text
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        guard unwindSegue.source is WelcomeViewController else { return }
        loginTextField.text = ""
        passwordTextField.text = ""
        
    }
    
    @IBAction func loginButton() {
        guard let loginTextField = loginTextField.text,
              !loginTextField.isEmpty,
              loginTextField == user
        else {
            showAlert(with: "Invalid login or password", and: "Enter the correct username and password")
            return
        }
        guard let passwordTextField = passwordTextField.text,
                !passwordTextField.isEmpty,
                passwordTextField == password
        else {
            showAlert(with: "Invalid login or password", and: "Enter the correct username and password")
            return
        }
        
    }
    
    @IBAction func forgotNameButton() {
        showAlert(with: "Oops!", and: "Your name is \(user)")
    }
    
    @IBAction func forgotPassword() {
        showAlert(with: "Oops!", and: "Your password is \(password)")
    }
    
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
