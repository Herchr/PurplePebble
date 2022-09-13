//
//  StartTimerCard.swift
//  Hourglass
//
//  Created by Herman Christiansen on 01/09/2022.
//

import SwiftUI

struct StartTimerCard: View {
    let width = UIScreen.main.bounds.width
    let height = UIScreen.main.bounds.height
    let cornerRadius: Double = 45
    @Binding var time: Double
    @Binding var animate: Bool
    @State var animateButton: Bool = true
    @Namespace var ns
    var body: some View {
        ZStack {
            if !animate{
                ZStack {
                    RoundedRectangle(cornerRadius: cornerRadius)
                        .fill(.white)
                        .opacity(0.1)
                        .shadow(color: .black, radius: 5, x: 5, y: 5)
                        .background(
                            Color.white
                                .opacity(0.08)
                                .blur(radius: 10)
                        )
                        .background(
                            RoundedRectangle(cornerRadius: cornerRadius)
                                .stroke(.linearGradient(colors: [.white, .white.opacity(0)], startPoint: .topLeading, endPoint: .bottomTrailing), lineWidth: 2)
                        )
                    VStack(alignment: .leading){
                        Rectangle()
                            .fill(.white)
                            .mask(
                                Text("Duration")
                                    .font(.custom("Coiny-Regular", size: 40))
                                    .foregroundColor(.white)
                            )
                            .frame(width: 180, height: 45)
                            .blendMode(.softLight)
                            .padding(.bottom)
                        
                        Rectangle()
                            .fill(.white)
                            .mask(
                                HStack {
                                    Text(time < 60 ? "\(Int(time)) min" : "\(Int(time)/60) h \(Int(time)%60) min")
                                        .foregroundColor(.white)
                                        .font(.custom("Coiny-Regular", size: 30))
                                    Spacer()
                                }
                            )
                            .frame(height: 28)
                            .blendMode(.softLight)
                            .padding(.bottom)
                            
                        
                            
                        TimeSlider(time: $time)
                            
                        Spacer()
                    }
                    .padding(30)
                    .padding(.top, 10)
                        
                }
                .frame(width: width*0.8, height: 370)
                .zIndex(1)
                .transition(.slide)
            }
            if animateButton{
                GradientCircleButton(iconName: "play.fill", animate: $animate)
                    .matchedGeometryEffect(id: "button", in: ns)
                    .offset(y: 120)
                    .zIndex(2)
            }else{
                VStack {
                    HStack {
                        GradientCircleButton(iconName: "xmark", animate: $animate)
                            .matchedGeometryEffect(id: "button", in: ns)
                            .padding(20)
                            .padding(.horizontal, 30)
                            .zIndex(2)
                        Spacer()
                    }
                    Spacer()
                }
            }
            
        }
        .onChange(of: animate) { newValue in
            if newValue{
                withAnimation {
                    animateButton.toggle()
                }
            }else{
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.35){
                    withAnimation {
                        animateButton.toggle()
                    }
                }
            }
        }
//        .background(
//            LinearGradient(colors: [.pink, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
//                .frame(width: width, height: height*1.1)
//        )
    }
}

struct StartTimerCard_Previews: PreviewProvider {
    static var previews: some View {
//        StartTimerCard(time: Binding.constant(70.0), animate: Binding.constant(false))
        ContentView()
    }
}
