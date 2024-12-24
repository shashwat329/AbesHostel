//
//  LeaveFormView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct LeaveFormView: View {
    @State private var name: String = ""
    @State private var addmissionNumber: String = ""
    @State private var leaveReason: String = ""
    @State private var leaveDate: Date = Date.now
    @State private var mobileNumber = " "
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
                    TextField("enter your mobile number",text: $mobileNumber)
                        .foregroundStyle(Color.gray)
                }
                
            }
            
        }
    }
}

#Preview {
    LeaveFormView()
}
