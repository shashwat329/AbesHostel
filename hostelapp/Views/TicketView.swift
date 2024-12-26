//
//  TicketView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct TicketView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.gray)
                    .frame(width: .infinity,height: 300)
            }
        }
    }
}

#Preview {
    TicketView()
        .environmentObject(DarkmodeSettings())
}
