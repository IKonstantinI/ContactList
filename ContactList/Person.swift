//
//  Person.swift
//  ContactList
//
//  Created by horze on 15.12.2023.
//

struct Person {
    let name: String
    let surname: String
    let phone: String
    let email: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> [Person] {
        var persons = [Person]()
        
        while let name = DataStore.names.randomElement(),
              let surname = DataStore.surnames.randomElement(),
              let email = DataStore.emails.randomElement(),
              let phone = DataStore.phones.randomElement() {
            
            let newPerson = Person(name: name, surname: surname, phone: phone, email: email)
            persons.append(newPerson)
            
            DataStore.names.removeAll { $0 == name }
            DataStore.surnames.removeAll { $0 == surname }
            DataStore.emails.removeAll { $0 == email }
            DataStore.phones.removeAll { $0 == phone }
        }
        
        return persons
    }
}
