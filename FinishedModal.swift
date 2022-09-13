//
//  FinishedModal.swift
//  Hourglass
//
//  Created by Herman Christiansen on 03/09/2022.
//

import SwiftUI

struct FinishedModal: View {
    let width = UIScreen.main.bounds.width
    
    @Binding var showFinishedModal: Bool
    var body: some View {
        ZStack {
            Rectangle()
                .fill(.ultraThinMaterial)
                .preferredColorScheme(.light)
                .ignoresSafeArea()
            
            LottieView(animationName: "confetti")
                .scaleEffect(1.7)
            VStack {
                Rectangle()
                    .fill(.black)
                    .frame(width: 320, height: 50)
                    .mask(
                        Text("Time's up!")
                            .font(.custom("Coiny-Regular", size: 40))
                            .fontWeight(.bold)
                            //.opacity(0.7)
                            //.padding([.top, .horizontal])
                            
                    )
                    .blendMode(.overlay)
                    .padding(.top)
                LottieView(animationName: "trophy_animation")
                    .frame(width: 350, height: 200)
                    .padding(.top, -40)
                    .padding(.bottom)
                    //.padding(.top)
                Button {
                    withAnimation {
                        showFinishedModal.toggle()
                    }
                } label: {
                    ZStack {
                        Capsule()
                            .fill(.white)
                            .opacity(0.3)
                            .shadow(color: Color("Lightblue").opacity(0.5), radius: 5, x: 5, y: 5)
                            .overlay(
                                Capsule()
                                    .stroke(lineWidth: 1.5)
                                    .fill(.linearGradient(colors: [.white, .white.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            )
                            .frame(width: 150, height: 64)
                        
                        Text("Done")
                            .font(.custom("Coiny-Regular", size: 30))
                            .fontWeight(.bold)
                            .foregroundStyle(.linearGradient(colors: [Color("Lightblue"), Color.teal], startPoint: .leading, endPoint: .trailing))
                            .padding(.top, 5)
                        
                    }
                    .padding(.bottom)
                }
                Spacer()
            }
            .background(
                RoundedRectangle(cornerRadius: 50)
                    .fill(.white)
                    .opacity(0.15)
                    .overlay(
                        RoundedRectangle(cornerRadius: 50)
                            .stroke()
                            .fill(.linearGradient(colors: [.white,.white, .white.opacity(0)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    )
                    .frame(width: width*0.9, height: 370)
                    .shadow(color: .indigo, radius: 5, x: 5, y: 5)
            )
            .frame(width: width*0.9, height: 150)
        }
    }
}

struct FinishedModal_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
