//
//  ContentView.swift
//  PopUpAlerts
//
//  Created by Abdelrahman Shehab on 09/07/2023.
//

import SwiftUI
import SSToastMessage

struct ContentView: View {
    // MARK: -  PROPERTIES
    @State var showAlert = false
    @State var showTopToast = false
    @State var showBottomToast = false
    @State var showTopFloater = false
    @State var showBottomFloater = false
    
    func dismissAll() {
        self.showAlert = false
        self.showAlert = false
        self.showTopToast = false
        self.showBottomToast = false
        self.showTopFloater = false
        self.showBottomFloater = false
    }
    
    // MARK: -  BODY
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack(spacing: 30) {
                    MyButtonView(showing: self.$showAlert, title: "Alert", hideAll: self.dismissAll)
                    MyButtonView(showing: self.$showTopToast, title: "Top Toast", hideAll: self.dismissAll)
                    MyButtonView(showing: self.$showBottomToast, title: "Bottom Toast", hideAll: self.dismissAll)
                    MyButtonView(showing: self.$showTopFloater, title: "Top Floater", hideAll: self.dismissAll)
                    MyButtonView(showing: self.$showBottomFloater, title: "Bottom Floater", hideAll: self.dismissAll)
                }//: VSTACK
                
                // MARK: -  Alert View
                .present(isPresented: self.$showAlert, type: .alert, animation: Animation.easeInOut(duration: 0.5), autohideDuration: nil, closeOnTap: false) {
                    AlertView(isShowingAlert: $showAlert)
                }
                
                // MARK: -  Top Toast
                .present(isPresented: self.$showTopToast, type: .toast,position: .top, animation: Animation.easeOut(duration: 0.5)
                         , autohideDuration: nil, closeOnTap: true, onTap: {print("on toast tap")}) {
                    TopToastView()
                }
                
                // MARK: -  Bottom Toast
                .present(isPresented: self.$showBottomToast, type: .toast, position: .bottom, animation: Animation.linear(duration: 0.5), autohideDuration: nil, closeOnTap: true, onTap: {
                     print("on toast tap")}) {
                         BottomToastView()
                     }
                
                // MARK: -  Top Floater
                .present(isPresented: self.$showTopFloater, type: .floater(), position: .top, animation: Animation.interactiveSpring(), autohideDuration: nil, closeOnTap: true, onTap: {
                    print("on floater tap")}) {
                    TopFloaterView()
                }
                
                // MARK: -  Bottom Floater
               .present(isPresented: self.$showBottomFloater, type: .floater(), position: .bottom, animation: Animation.easeInOut(duration: 0.5), autohideDuration: nil, closeOnTap: true, onTap: {
                print("on floater tap")}) {
                BottomFloaterView()
            }
                
            }//: VSTACK
            .frame(width: geometry.size.width, height: geometry.size.height)
        }//: GEOMETRY
        .background(Color.indigo)
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: -  MyButtonView
struct MyButtonView: View {
    @Binding var showing: Bool
    var title: String
    var hideAll: () -> ()
    
    var body: some View {
        Button {
            self.hideAll()
            self.showing.toggle()
        } label: {
            Text(title)
                .font(.system(size: 18))
                .fontWeight(.medium)
                .foregroundColor(.yellow)
        }
        
    }
}

// MARK: -  PREVIEW
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
