//
//  TicketView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct TicketView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    @State private var selectoption = "option 1"
    let option = ["Cleaning","wifi down","room light issue","pumber issue","other issue"]
    @State private var buildingName = ""
    let building = ["DNB","VKB","RKB","CKB"]
    @State private var describeissue:String = ""
    @State private var roomNumber: String = ""
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white)
                .edgesIgnoringSafeArea(.all)
            VStack{
                Text("raise your ticket".capitalized)
                    .font(.title)
                    .foregroundStyle(Color.white)
                Form{
                    Section{
                        Picker("Enter the building name",selection: $buildingName){
                            ForEach(building,id: \.self){option in
                                Text(option)
                            }
                        }
                        .pickerStyle(MenuPickerStyle())
                        TextField("Enter your room number",text: $roomNumber)
                        Picker("Enter the Reason",selection: $selectoption){
                            ForEach(option,id: \.self){option in
                                Text(option)
                            }
                            
                        }
                        .pickerStyle(MenuPickerStyle())
                        TextField("Describe your issue",text: $describeissue)
                        Button(action: {
                            print("Ticket raise successfully")
                        }){
                            Text("Submit")
                                .font(.headline)
                                .foregroundColor(.white)
                                .padding()
                                .frame(maxWidth: .infinity) // Makes the button expand to the width of the screen
                                .background(Color.blue)
                                .cornerRadius(10)
                                .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5)
                        }
                    }
                }
            }.background(Color.blue)
        }
    }
}

#Preview {
    TicketView()
        .environmentObject(DarkmodeSettings())
}
