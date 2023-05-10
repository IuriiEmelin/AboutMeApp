//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 10.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var yourNameTF: UITextField!
    @IBOutlet var logOutButton: UIButton!
    
    var yourName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        yourNameTF.text = yourName
    }
    
    @IBAction func logOutButtonTapped() {
        dismiss(animated: true)
    }
}
