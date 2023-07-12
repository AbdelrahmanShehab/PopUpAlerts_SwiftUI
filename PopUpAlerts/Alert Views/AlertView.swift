//
//  AlertView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 12/07/2023.
//

import SwiftUI

struct AlertView: View {
    @Binding var isShowingAlert: Bool
    
    var body: some View {
        VStack(spacing: 10) {
            Image(systemName: "hand.raised")
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .foregroundColor(.white)
            Spacer()
            Text("Alert!")
                .foregroundColor(.white)
                .font(.system(size: 20))
                .fontWeight(.bold)
            
            Text("Please click on Disimiss to hide.")
                .font(.system(size: 16))
                .fontWeight(.medium)
                .foregroundColor(.white)
            
            Spacer()
            
            Button {
                self.isShowingAlert = false
            } label: {
                Text("Dismiss")
                    .font(.system(size: 16))
                    .foregroundColor(.pink)
                    .fontWeight(.bold)
            }
            .frame(width: 100, height: 40)
            .background(Color.white)
            .cornerRadius(20)
        }//: VSTACK
        .padding(EdgeInsets(top: 20, leading: 0, bottom: 20, trailing: 0))
        .frame(width: 300, height: 300)
        .background(Color.pink)
        .cornerRadius(20)
        .shadow(color: Color(.sRGBLinear, white: 10, opacity: 0.35), radius: 10)
    }
}

struct AlertView_Previews: PreviewProvider {
    @State static var alert: Bool = false
    static var previews: some View {
        AlertView(isShowingAlert: $alert)
    }
}
