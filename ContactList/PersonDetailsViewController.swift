//
//  PersonDetailsViewController.swift
//  ContactList
//
//  Created by horze on 16.12.2023.
//

import UIKit

class PersonDetailsViewController: UIViewController {
    
    @IBOutlet var fullNameTitleLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        fullNameTitleLabel.text = person.fullName
        phoneLabel.text = person.phone
        emailLabel.text = person.email
    }
}
