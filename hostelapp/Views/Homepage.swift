//
//  Homepage.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct Homepage: View {
    @EnvironmentObject var settings: DarkmodeSettings
    var body: some View {
        TabView {
                HomeView()
                        .tabItem {
                            Image(systemName: "house.fill")
                            Text("Home")
                        }
                    
                    LeaveFormView()
                        .tabItem {
                            Image(systemName: "info.circle.fill")
                            Text("Leave form")
                        }
                    TicketView()
                        .tabItem {
                            Image(systemName: "questionmark.circle.fill")
                            Text("Ticket")
                        }
                    
                    AccountView()
                        .tabItem {
                            Image(systemName: "person.crop.circle.fill")
                            Text("Account")
                        }
        }
                .background(
                    Color(settings.darkmode ? Color.black : Color.white)
                        .edgesIgnoringSafeArea(.all)
                )
    }
}

#Preview {
    Homepage()
        .environmentObject(DarkmodeSettings())
}
