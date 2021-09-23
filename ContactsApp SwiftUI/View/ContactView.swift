//
//  ContentView.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 22.09.2021.
//

import SwiftUI

struct ContactView: View {
    private var contact = Contact.getContactList()
    
    var body: some View {
        
        TabView {
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
            
            .tabItem {
                Image(systemName: "person.3.fill")
                    .foregroundColor(.blue)
                Text("Contacts")
            }
            
            NumbersView(contact: Contact.getContactList())
                
                .tabItem {
                    Image(systemName: "phone")
                        .foregroundColor(.blue)
                    Text("Numbers")
                }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContactView()
    }
}
