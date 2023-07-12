//
//  BottomToastView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 12/07/2023.
//

import SwiftUI

struct BottomToastView: View {
    var body: some View {
        VStack {
            HStack {
                Image(systemName: "house")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 50, height: 50)
                    .padding()
                VStack(alignment: .leading, spacing: 2) {
                    Text("Order has arrived!")
                        .font(.system(size: 16))
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Text("Your Order is waiting at your doorstep.")
                        .lineLimit(2)
                        .font(.system(size: 14))
                        .foregroundColor(.white)
                }//: VSTACK
            }//: HSTACK
            Spacer(minLength: 10)
        }//: VSTACK
        .padding(15)
        .frame(width: UIScreen.main.bounds.width, height: 100)
        .background(Color.cyan)
    }
}

struct BottomToastView_Previews: PreviewProvider {
    static var previews: some View {
        BottomToastView()
    }
}
