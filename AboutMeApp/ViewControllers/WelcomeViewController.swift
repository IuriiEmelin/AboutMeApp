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
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logOutButton.layer.cornerRadius = 10
        welcomeUser.text = "Welcome, \(user.person.fullName)!"
        
        print("User ID: ", user.id)
    }
}
