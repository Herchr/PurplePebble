//
//  Slider.swift
//  Hourglass
//
//  Created by Herman Christiansen on 02/09/2022.
//

import SwiftUI

struct TimeSlider: View {
    @Binding var time: Double
    @State var step: Double = 1
    var body: some View {
        ZStack {
            LinearGradient(colors: [Color("Purple"), Color("Lightblue")], startPoint: .leading, endPoint: .trailing)
                .frame(height: 70)
                .mask(
                    Slider(value: $time, in: 0...240, step: step)
                        .onChange(of: time) { value in
                            if value < 1 {
                                time = 1
                            }
                            else if value < 11{
                                step = 1
                            }else{
                                step = 5
                            }
                    }
                        .padding()
                )
            Slider(value: $time, in: 0...240, step: step)
                .onChange(of: time) { value in
                    if value < 1 {
                        time = 1
                    }
                    else if value < 11{
                        step = 1
                    }else{
                        step = 5
                    }
            }
                .padding()
                .tint(.clear)
        }
        .background(
            ZStack {
                RoundedRectangle(cornerRadius: 25)
                    .fill(.white)
                    .opacity(0.25)
                    .shadow(radius: 5, x: 5, y: 5)
                RoundedRectangle(cornerRadius: 25)
                    .stroke(lineWidth: 2)
                    .foregroundStyle(.linearGradient(colors: [.white,.white.opacity(0),.white.opacity(0)], startPoint: .topLeading, endPoint: .bottom))
                    
            }
                
        )
        .padding(.vertical)
    }
}

struct Slider_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
