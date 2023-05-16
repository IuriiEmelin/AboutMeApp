//
//  BiographyViewController.swift
//  AboutMeApp
//
//  Created by Юрий Емелин on 13.05.2023.
//

import UIKit

final class PersonalInfViewController: UIViewController {
    
    
    @IBOutlet var photoImage: UIImageView! {
        didSet {
            photoImage.layer.cornerRadius = photoImage.frame.height / 2
        }
    }
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var surnameLabel: UILabel!
    @IBOutlet var companyLabel: UILabel!
    @IBOutlet var departmentLabel: UILabel!
    @IBOutlet var jobTitleLabel: UILabel!
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        photoImage.image = UIImage(named: user.person.photo)
        title = user.person.fullName
        nameLabel.text = user.person.name
        surnameLabel.text = user.person.surname
        companyLabel.text = user.person.job.title
        departmentLabel.text = user.person.job.department.rawValue
        jobTitleLabel.text = user.person.job.jobTitle.rawValue
        
        print("User ID: ", user.id)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let userBioVC = segue.destination as? BioViewController else { return }
        userBioVC.user = user
    }
}
