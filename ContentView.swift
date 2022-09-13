//
//  ContentView.swift
//  Hourglass
//
//  Created by Herman Christiansen on 22/08/2022.
//

import SwiftUI

struct ContentView: View {
    let width = UIScreen.main.bounds.width
    
    @State var animate: Bool = false
    @State var showFinishedModal: Bool = false
    @State var time: Double = 25
    
    @State var timeStringValue: String = ""
    
    @State var hours: Double = 0
    @State var minutes: Double = 24
    @State var seconds: Double = 59
    
    
    func formatTimeString(){
        timeStringValue = "\(hours == 0.0 ? "" : "\(Int(hours)):")\(minutes >= 10 ? "\(Int(minutes)):" : "0\(Int(minutes)):")\(seconds >= 10 ? "\(Int(seconds))" : "0\(Int(seconds))")"
    }
    
    func updateTimeString(){
        if seconds > 0{
            seconds -= 1
        }
        else if minutes > 0{
            minutes -= 1
            seconds = 59
        }
        else if hours > 0{
            hours -= 1
            minutes = 59
            seconds = 59
        }
        else{
            hours = 0
            minutes = 0
            seconds = 0
        }
        formatTimeString()
                        
    }
    
    var body: some View {
        ZStack{
            if animate{
                ZStack {
                    VStack{
                        Rectangle()
                            .fill(.white)
                            .mask(
                                Text("\(timeStringValue)")
                                    .font(.system(size: 50))
                            )
                            .frame(width: width, height: 100)
                            .blendMode(.softLight)
                            .padding(.top, 80)
                        Spacer()
                    }
                    .opacity(animate ? 1 : 0)
                    .animation(Animation.linear(duration: 2), value: animate
                    )
                    HourglassLottieView(filename: "hourglass_gradient", time: $time, animate: $animate, showFinishedModal: $showFinishedModal)
                        .frame(width: 400, height: 400)
                        .scaleEffect(1.5)
                        .offset(x: -15, y: 25)
                        .zIndex(2)
                }
            }else{
                Image("BlurredHourglassStart")
                    .resizable()
                    .frame(width: 250, height: 370)
                    .offset(x: -5, y: 5)
                .zIndex(2)
                
            }
            StartTimerCard(time: $time, animate: $animate)
                .zIndex(3)
                .offset(y:20)
            if showFinishedModal{
                FinishedModal(showFinishedModal: $showFinishedModal)
                    .zIndex(4)
                    .transition(.move(edge: .bottom))
            }

        }
        .background(
            BlobBackground()
                .frame(width: UIScreen.main.bounds.width*1.1, height: UIScreen.main.bounds.height)
                .zIndex(1)
        )
        .onChange(of: animate, perform: { newValue in
            if newValue{
                hours = (time / 60).rounded(.towardZero)
                if time.truncatingRemainder(dividingBy: 60) - 1 >= 0{
                    minutes = time.truncatingRemainder(dividingBy: 60) - 1
                }else{
                    minutes = 0
                    seconds = 0
                }
            }else{
                hours = 0
                minutes = 24
                seconds = 59
            }
            formatTimeString()
        })
        .onReceive(Timer.publish(every: 1, on: .main, in: .common).autoconnect()) { _ in
            if animate{
                updateTimeString()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
