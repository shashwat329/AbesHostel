//
//  HomeView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white).edgesIgnoringSafeArea(.all)
            Text("Welcome to Home")
                .font(.largeTitle)
                .foregroundColor(settings.darkmode ? .white : .black)
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(DarkmodeSettings())
}
