//
//  WelcomeViewController.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 10.05.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUser: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var userName = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        welcomeUser.text = "Welcome, \(userName)!"
    }
    
}
