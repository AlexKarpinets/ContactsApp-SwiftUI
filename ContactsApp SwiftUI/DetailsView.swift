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
        Text("\(contact.fullName)")
            .font(.title)
            .fontWeight(.bold)
        
        VStack {
            Image(systemName: "person")
                .resizable()
                .frame(width: 100, height: 100)
                .shadow(radius: 3)
                .padding()
            
            HStack {
                Image(systemName: "phone")
                    .foregroundColor(.blue)
                Text("\(contact.phoneNumber)")
            }
            .padding()
            
            HStack {
                Image(systemName: "bolt")
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
