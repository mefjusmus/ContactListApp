//
//  Person.swift
//  ContactListApp
//
//  Created by Vladislav Suslov on 18.10.22.
//

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPersons() -> [Person] {
        
        let dataManager = DataManager()
        var persons: [Person] = []
        
        while persons.count != dataManager.names.count {
            let randomPerson = Person(
                name: dataManager.names.randomElement() ?? "",
                surname: dataManager.surnames.randomElement() ?? "",
                email: dataManager.emails.randomElement() ?? "",
                phone: dataManager.phones.randomElement() ?? ""
            )
            
            if !persons.contains(randomPerson) {
                persons.append(randomPerson)
            }
        }
        return persons
    }
}
    


extension Person: Equatable {
    static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.name == rhs.name
        || lhs.surname == rhs.surname
        || lhs.email == rhs.email
        || lhs.phone == rhs.phone
    }
}
