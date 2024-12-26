//
//  LeaveFormView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct LeaveFormView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    @State private var name: String = ""
    @State private var addmissionNumber: String = ""
    @State private var leaveReason: String = ""
    @State private var leaveDate: Date = Date.now
    @State private var yourmobileNumber = ""
    @State private var parentmobileNumber = ""
    @State private var submitForm: Bool = false
    var body: some View {
        ZStack{
            VStack{
                Text("Leave form".capitalized)
                    .font(.title)
                
                Form{
                    TextField("Enter your name",text: $name)
                    
                    TextField("Enter your admission number",text: $addmissionNumber)
                    TextField("Enter leave reason",text: $leaveReason)
                        .frame(height: 100)
                    VStack {
                        DatePicker(selection: $leaveDate, in: ...Date.now, displayedComponents: .date) {
                            Text("Select leave date")
                        }
                    } .foregroundStyle(Color.gray)
                    VStack {
                        DatePicker(selection: $leaveDate, in: Date.now..., displayedComponents: .date) {
                            Text("Expected date of return")
                        }
                        .foregroundStyle(Color.gray)
                    }
                    TextField("Enter your Number",text: $yourmobileNumber)
                        .keyboardType(.numberPad)
                    TextField("Enter your parent's Number",text: $parentmobileNumber)
                        .keyboardType(.numberPad)
                    Button(action: {
                        print("Leave form submitted")
                        submitForm = true
                    }){
                        Text("Submit")
                            .font(.headline)
                            .foregroundColor(.white)
                            .padding()
                            .frame(maxWidth: .infinity) // Makes the button expand to the width of the screen
                            .background(Color(hex: "#1A3636"))
                            .cornerRadius(10)
                            .shadow(color: .gray.opacity(0.5), radius: 5, x: 0, y: 5)
                    }
                }
                if submitForm {
                    Text("Form submitted successfully!")
                        .foregroundColor(.green)
                }
            
            }
        }
    }
}

#Preview {
    LeaveFormView()
        .environmentObject(DarkmodeSettings())
}
