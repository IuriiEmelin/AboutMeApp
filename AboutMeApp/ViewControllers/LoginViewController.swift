//
//  ViewController.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 10.05.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var userNameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
    
    private let correctUserName = "User"
    private let correctPassword = "Password"
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.userName = correctUserName
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == correctUserName, passwordTF.text == correctPassword else {
            showAlert(withTitle: "Invalid login or password",
                      andMessage: "Please, enter correct login and password")
            passwordTF.text = ""
            return false
        }
        
        return true
    }
    
    @IBAction func userNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(correctUserName)")
    }
    
    @IBAction func passwordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(correctPassword)")
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        userNameTF.text = ""
        passwordTF.text = ""
    }
    
}

// MARK: - UIAlertController

extension LoginViewController {
    private func showAlert(withTitle title: String, andMessage message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Ok", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
