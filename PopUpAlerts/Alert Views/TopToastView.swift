//
//  TopToastView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 12/07/2023.
//

import SwiftUI

struct TopToastView: View {
    var body: some View {
        VStack {
            Spacer(minLength: 30)
            HStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .foregroundColor(.orange)
                    .padding()
                
                VStack(alignment: .leading, spacing: 2) {
                    HStack {
                        Text("Xcode")
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .fontWeight(.bold)
                        
                        Spacer()
                        
                        Text("10:10")
                            .font(.system(size: 15))
                            .foregroundColor(.white)
                    }//: HSTACK
                    
                    Text("Strive for a goal even if the path doesn't look perfect.")
                        .lineLimit(2)
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                    
                }//: VSTACK
            }//: HSTACK
            .padding(15)
        }//: VSTACK
        .frame(width: UIScreen.main.bounds.width, height: 130)
        .background(Color.green)
    }
}

struct TopToastView_Previews: PreviewProvider {
    static var previews: some View {
        TopToastView()
    }
}
