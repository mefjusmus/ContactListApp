//
//  PersonsListViewController.swift
//  ContactListApp
//
//  Created by Vladislav Suslov on 18.10.22.
//

import UIKit

class PersonsListViewController: UITableViewController {
    
    private var persons: [Person] = Person.getPersons()
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let detailsVC = segue.destination as? DetailsViewController
        guard let indexPath = sender as? IndexPath else { return }
        detailsVC?.person = persons[indexPath.row]
    }
}

//MARK: UITableViewDataSource
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "personCell", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = persons[indexPath.row].fullName
        cell.contentConfiguration = content
        return cell
    }

}

//MARK: UITableViewDelegate
extension PersonsListViewController {
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "showDetails", sender: indexPath)
    }
}


