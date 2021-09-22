//
//  Contact.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 22.09.2021.
//

import Foundation
import SwiftUI

struct Contact: Identifiable {
    let id = UUID()
    let name: String
    let surname: String
    let email: String
    let phoneNumber: String
    
    var fullName: String {
        "\(name) \(surname)"
    }
}

extension Contact {
    static func getContactList() -> [Contact] {
        
        var contacts: [Contact] = []
        
        let names = DataManager.shared.names.shuffled()
        let surnames = DataManager.shared.surnames.shuffled()
        let emails = DataManager.shared.emails.shuffled()
        let phones = DataManager.shared.phones.shuffled()
        
        let iterationCount = min(names.count, surnames.count, emails.count, phones.count)
        
        for index in 0..<iterationCount {
            let contact = Contact(
                name: names[index],
                surname: surnames[index],
                email: emails[index],
                phoneNumber: phones[index]
            )
            
           contacts.append(contact)
        }
        
        return contacts
    }
}


