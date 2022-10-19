//
//  DetailsViewController.swift
//  ContactListApp
//
//  Created by Vladislav Suslov on 19.10.22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    
    var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.title = person.fullName
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-mail: \(person.email)"
    }
    


}
