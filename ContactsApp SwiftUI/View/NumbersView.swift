//
//  Numbers.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 23.09.2021.
//

import SwiftUI

struct NumbersView: View {
    var contact: [Contact]
    
    var body: some View {
        
        List(contact) { contact in
            
            Section(header: Text("\(contact.fullName)").fontWeight(.bold)) {
                Spacer()
                VStack {
                    Form {
                        HStack {
                            Image(systemName: "phone")
                                .foregroundColor(.blue)
                            Text("\(contact.phoneNumber)")
                        }
                        HStack {
                            Image(systemName: "envelope.open")
                                .foregroundColor(.blue)
                            Text("\(contact.phoneNumber)")
                        }
//                        HStack {
//                            Image(systemName: "phone")
//                                .foregroundColor(.blue)
//                            Text("\(contact.phoneNumber)")
//                        }
                    }
                }.frame(width: 200, height: 150, alignment: .center)
            }
        }
    }
}

struct Numbers_Previews: PreviewProvider {
    static var previews: some View {
        NumbersView(contact: Contact.getContactList())
    }
}
