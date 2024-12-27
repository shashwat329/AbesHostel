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
                Text("Welcome to abes Hostel")
                    .font(.title)
                    .bold()
                    .foregroundColor(Color(hex: "#1A3636").opacity(0.9))
                HStack{
                    VStack(alignment: .leading){
                        displayDetail(textdescription: "Name of student",name: studentName.capitalized)
                        displayDetail(textdescription: "Roll Number",name: rollno)
                        displayDetail(textdescription: "Admission Number",name: admissionNumber)
                    }
                    .foregroundStyle(Color.blue)
                    Circle()
                        .fill(Color(.red))
                        .frame(width: 100, height: 100)
                        .overlay{
                            Text(studentName.first?.uppercased() ?? "?")
                                .font(.system(size: 60))
                                .foregroundStyle(Color.white)
                        }
                   
                }
                Spacer()
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(DarkmodeSettings())
}
