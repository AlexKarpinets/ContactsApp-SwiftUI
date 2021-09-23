//
//  Home.swift
//  ContactsApp SwiftUI
//
//  Created by Karpinets Alexander on 23.09.2021.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Image(systemName: "persons")
                    Text("Contacts")
                }
                Numbers()
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
