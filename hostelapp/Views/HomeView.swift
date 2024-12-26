//
//  HomeView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    private var studentName: String = "shashwat singh"
    private var rollno: String  = "2200320120097"
    private var admissionNumber: String  = "2022b0121180"
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white).edgesIgnoringSafeArea(.all)
            VStack{
                HStack{
                    
                    Text("Dashboard")
                        .font(.title)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color(hex: "#1eacfa"))
                Spacer()
                VStack(alignment: .leading){
                    Text("Name of the student: \(studentName)".capitalized)
                        .font(.caption)
                    Text("Roll Number: \(rollno)")
                        .font(.caption)
                    Text("Admission Number: \(admissionNumber)")
                        .font(.caption)
                }
                .foregroundStyle(Color.white)
                Spacer()
                Circle()
                    .fill(Color(.red))
                    .frame(width: 100, height: 100)
                    .overlay{
                        Text(studentName.first?.uppercased() ?? "?")
                            .font(.system(size: 60))
                            .foregroundStyle(Color.white)
                    }
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(DarkmodeSettings())
}
