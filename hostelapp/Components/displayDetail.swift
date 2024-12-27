//
//  displayDetail.swift
//  hostelapp
//
//  Created by shashwat singh on 27/12/24.
//

import SwiftUI

struct displayDetail: View {
    var textdescription: String
    var name: String
    var body: some View {
        VStack{
            HStack{
                Text(textdescription.capitalized)
                Text(name)
                    .fontWeight(.bold)
                    .foregroundStyle(Color.red)
            }
        }
    }
}

#Preview {
    displayDetail(textdescription: "Name of the student",name: "SHASHWAT")
}
