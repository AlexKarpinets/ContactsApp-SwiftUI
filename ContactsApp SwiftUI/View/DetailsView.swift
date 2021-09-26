//
//  DetailsView.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 22.09.2021.
//

import SwiftUI

struct DetailsView: View {
    let contact: Contact
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 100, height: 100)
               Spacer()
            }
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.phoneNumber)")
            }

            HStack {
                Image(systemName: "envelope.open")
                    .foregroundColor(.blue)
                Text("\(contact.email)")
            }
        } .navigationTitle(contact.fullName)
        Spacer()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Contact.init(name: "2", surname: "2", email: "2", phoneNumber: "3"))
    }
}
