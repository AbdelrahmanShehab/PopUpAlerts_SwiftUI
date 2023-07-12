//
//  TopFloaterView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 12/07/2023.
//

import SwiftUI

struct TopFloaterView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                    
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("Xcode")
                            .font(.system(size: 16))
                            .foregroundColor(.white)
                            .bold()
                        Spacer()
                        Text("10:10")
                            .font(.system(size: 13))
                            .foregroundColor(.white)
                    }//: HSTACK
                    
                    Text("If you need any help with Xcode send me a DM.")
                        .lineLimit(2)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }//: VSTACK
            }//: HSTACK
            .padding(15)
        }//: VSTACK
        .frame(width: UIScreen.main.bounds.width - 60, height: 110)
        .background(Color.mint)
        .cornerRadius(15)
    }
}

struct TopFloaterView_Previews: PreviewProvider {
    static var previews: some View {
        TopFloaterView()
    }
}
