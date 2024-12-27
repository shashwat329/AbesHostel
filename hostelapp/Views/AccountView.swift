//
//  AccountView.swift
//  hostelapp
//
//  Created by shashwat singh on 24/12/24.
//

import SwiftUI

struct AccountView: View {
    @EnvironmentObject var settings: DarkmodeSettings
    private var studentName: String = "shashwat singh"
    private var rollno: String  = "2200320120097"
    private var admissionNumber: String  = "2022b0121180"
    
    var body: some View {
        ZStack {
            Color(settings.darkmode ? Color.black : Color.white).edgesIgnoringSafeArea(.all)
            VStack{
                Text("Account".capitalized)
                    .font(.title)
                HStack{
                    RoundedRectangle(cornerRadius: 10).fill(Color(hex: "#1A3636"))
                        .overlay{
                            HStack{
                                VStack(alignment: .leading){
                                    displayDetail(textdescription: "Name of student",name: studentName.capitalized)
                                    displayDetail(textdescription: "Roll Number",name: rollno)
                                    displayDetail(textdescription: "Admission Number",name: admissionNumber)
                                }
                                .foregroundStyle(Color.white)
                            }
                            .padding()
                        }
                        .frame(width: .infinity,height: 200)
                        .padding()
                }
                .padding()
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex:"#1eacfa").opacity(0.9))
                        .frame(width: 150, height: 150)
                        .padding()
                        .overlay{
                            VStack{
                                Text("50")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.white)
                                Text("total classes")
                                    .foregroundColor(Color.white)
                            }
                        }
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex:"#1eacfa").opacity(0.9))
                        .frame(width: 150, height: 150)
                        .padding()
                        .overlay{
                            VStack{
                                Text("50")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.white)
                                Text("total classes")
                                    .foregroundColor(Color.white)
                            }
                        }
                }
                HStack{
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex:"#1eacfa").opacity(0.9))
                        .frame(width: 150, height: 150)
                        .padding()
                        .overlay{
                            VStack{
                                Text("50")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.white)
                                Text("total classes")
                                    .foregroundColor(Color.white)
                            }
                        }
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color(hex:"#1eacfa").opacity(0.9))
                        .frame(width: 150, height: 150)
                        .padding()
                        .overlay{
                            VStack{
                                Text("50")
                                    .font(.system(size: 50))
                                    .foregroundColor(Color.white)
                                Text("total classes")
                                    .foregroundColor(Color.white)
                            }
                        }
                }
                Spacer()
            }
            }
    }
}

#Preview {
    AccountView()
        .environmentObject(DarkmodeSettings())
}
