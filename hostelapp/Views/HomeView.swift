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
                        .foregroundStyle(Color.white)
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color.blue)
                HStack{
                    VStack(alignment: .leading){
                        displayDetail(textdescription: "Name of student",name: studentName.capitalized)
                        displayDetail(textdescription: "Roll Number",name: rollno)
                        displayDetail(textdescription: "Admission Number",name: admissionNumber)
                    }
                    .padding()
                    .foregroundStyle(Color.blue)
//                    Circle()
//                        .fill(Color(.red))
//                        .frame(width: 100, height: 100)
//                        .overlay{
//                            Text(studentName.first?.uppercased() ?? "?")
//                                .font(.system(size: 60))
//                                .foregroundStyle(Color.white)
//                        }
                }
                VStack{
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 3)
                        .shadow(radius: 10)
                        .frame(width: .infinity, height: 200)
                        .overlay{
                            VStack{
                                HStack{
                                    Text("announcements".uppercased())
                                        .foregroundColor(.red)
                                        .bold()
                                    Image(systemName: "horn")
                                }
                                VStack(alignment: .leading){
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            Text("Wifi will be down for a few minutes")
                                        }
                                        .frame(width: 300,height: 40)
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            Text("Please check your email")
                                        }
                                        .frame(width: 300,height: 40)
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            Text("library will be closed this sunday")
                                        }
                                        .frame(width: 300,height: 40)
                                        
                                        
                                }
                                Spacer()
                            }
                            .padding()
                        }
                        .padding()
                    RoundedRectangle(cornerRadius: 10)
                        .stroke(lineWidth: 3)
                        .shadow(radius: 10)
                        .frame(width: .infinity, height: 200)
                        .overlay{
                            VStack{
                                HStack{
                                    Text("your tickets".uppercased())
                                        .foregroundColor(.red)
                                        .bold()
                                    Image(systemName: "horn")
                                }
                                VStack(alignment: .leading){
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            displayDetail(textdescription: "Room cleaning is", name: "unassigned")
                                        }
                                        .frame(width: 300,height: 40)
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            displayDetail(textdescription: "Ticket 2  is assgined to ", name: "tiwari")
                                                .textCase(.lowercase)
                                        }
                                        .frame(width: 300,height: 40)
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(Color.gray.opacity(0.4))
                                        .overlay{
                                            displayDetail(textdescription: "Ticket 3  is assgined to", name: "closed")
                                        }
                                        .frame(width: 300,height: 40)
                                        
                                        
                                }
                                Spacer()
                            }
                            .padding()
                        }
                        .padding()
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
