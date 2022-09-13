//
//  Playbutton.swift
//  Hourglass
//
//  Created by Herman Christiansen on 01/09/2022.
//

import SwiftUI

struct GradientCircleButton: View {
    var iconName: String
    //var buttonAction: () -> Void
    @Binding var animate: Bool
    @State var showAlert: Bool = false
    var body: some View {
        ZStack(alignment: .center) {
            AngularGradient(colors: [Color("Purple"), Color("Green"), Color("Lightblue"), Color("Purple")], center: .center)
                .frame(width: 55, height: 55)
                .mask(Circle())
            Circle()
                .size(width: 20, height: 20)
                .frame(width: 20, height: 20)
                .offset(x: -2, y: 0)
                .foregroundColor(Color.blue)
                .blur(radius:5)
        }
        .mask(
            Image(systemName: "\(iconName)")
                .font(.system(size: 35, weight: .black))
        )
        .background(
            Circle()
                .frame(width: 85, height: 85)
                .foregroundColor(.white)
                .opacity(0.25)
                .shadow(color: .black.opacity(0.3), radius: 5, x: 5, y: 5)
                .overlay(
                    Circle()
                        .stroke(lineWidth: 2)
                        .fill(.linearGradient(colors: [.white,.white.opacity(0), .white.opacity(0)], startPoint: .topLeading, endPoint: .bottomTrailing))
                )
        )
        .onTapGesture {
            if !animate{
                withAnimation {
                    animate = true
                }
            }else{
                showAlert.toggle()
            }
        }
        .alert("End session?", isPresented: $showAlert) {
            Button("End", role: .destructive){
                withAnimation{
                    animate = false
                }
            }
        }

    }
}

struct Playbutton_Previews: PreviewProvider {
    static var previews: some View {
        //GradientCircleButton(iconName: "play.fill", animate: Binding.constant(false))
        ContentView()
    }
}
