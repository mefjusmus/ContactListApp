//
//  SectionsListViewController.swift
//  ContactListApp
//
//  Created by Vladislav Suslov on 19.10.22.
//

import UIKit

class SectionsListViewController: UITableViewController {

    private let persons = Person.getPersons()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
}

extension SectionsListViewController {
    override func numberOfSections(in tableView: UITableView) -> Int {
        return persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 2
    }
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return persons[section].fullName
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        
        switch indexPath.row {
        case 0:
            content.text = "Phone: \(persons[indexPath.section].phone)"
            content.image = UIImage(systemName: "phone")
        case 1:
            content.text = "Email: \(persons[indexPath.section].email)"
            content.image = UIImage(systemName: "mail")
        default:
            break
        }
        cell.contentConfiguration = content
        return cell
    }
}
