//
//  DetailsView.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 22.09.2021.
//

import SwiftUI

struct DetailsView: View {
    var contact: Contact
    
    var body: some View {
        Text("\(contact.fullName)")
            .font(.title)
            .fontWeight(.bold)
            .shadow(radius: 3)
        
        VStack {
            Image(systemName: "person.fill")
                .resizable()
                .frame(width: 100, height: 100)
                .padding()
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.phoneNumber)")
            }
            .padding()
            
            HStack {
                Image(systemName: "envelope.open")
                    .foregroundColor(.blue)
                Text("\(contact.email)")
            }
        }
        Spacer()
    }
}

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(contact: Contact.init(name: "2", surname: "2", email: "2", phoneNumber: "3"))
    }
}
