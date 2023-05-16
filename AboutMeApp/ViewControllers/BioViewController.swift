//
//  BioViewController.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 13.05.2023.
//

import UIKit

final class BioViewController: UIViewController {
    
    @IBOutlet var UserBioTextView: UITextView!
    
    var user: User!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "\(user.person.fullName) Bio"
        UserBioTextView.text = user.person.bio

        print("User ID: ", user.id)
    }
}
