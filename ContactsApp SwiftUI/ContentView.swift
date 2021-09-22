//
//  ContentView.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 22.09.2021.
//

import SwiftUI

struct ContentView: View {
    private let contact = Contact.getContactList()
    
    var body: some View {
        NavigationView {
            List(contact) { contact in
                NavigationLink(
                    destination: DetailsView(contact: contact),
                    label: {
                        Text("\(contact.fullName)")
                    })
                }
            .navigationTitle("Contact List")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
