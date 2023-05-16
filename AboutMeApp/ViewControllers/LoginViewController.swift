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
    
    private let user = User.getUser()
    //private let correctUserName = "User"
    //private let correctPassword = "Password"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        userNameTF.text = user.login
        passwordTF.text = user.password
        
        print("User ID: ", user.id)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let tabBarController = segue.destination as? TabBarController else {
            return
        }
        tabBarController.user = user
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        guard userNameTF.text == user.login, passwordTF.text == user.password else {
            showAlert(withTitle: "Invalid login or password",
                      andMessage: "Please, enter correct login and password")
            return false
        }
        
        return true
    }
    
    @IBAction func userNameButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your name is \(user.login)")
    }
    
    @IBAction func passwordButton() {
        showAlert(withTitle: "Oops!", andMessage: "Your password is \(user.password)")
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
        passwordTF.text = ""
    }
}
