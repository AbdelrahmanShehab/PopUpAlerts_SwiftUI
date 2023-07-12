//
//  BottomFloaterView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 12/07/2023.
//

import SwiftUI

struct BottomFloaterView: View {
    var body: some View {
        HStack(spacing: 15) {
            Image(systemName: "airplane")
                .resizable()
                .scaledToFit()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .padding()
            
            VStack(alignment: .leading, spacing: 10) {
                Text("Ever thought of tacking a break?")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .lineLimit(3)
                
                Text("If you have ever thought of taking a break, you need to realize that there will never be a perfect time, there will be sacrifices.")
                    .foregroundColor(.white)
                    .font(.system(size: 14))
            }
        }//: HSTACK
        .padding(15)
        .frame(width: 350, height: 160)
        .background(Color.orange)
        .cornerRadius(20)
    }
}

struct BottomFloaterView_Previews: PreviewProvider {
    static var previews: some View {
        BottomFloaterView()
    }
}
