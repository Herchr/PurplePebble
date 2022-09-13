//
//  BlobBackground.swift
//  Hourglass
//
//  Created by Herman Christiansen on 02/09/2022.
//

import SwiftUI

struct BlobBackground: View {
    @State var animateBlobs: Bool = false
    let height = UIScreen.main.bounds.height
    let width = UIScreen.main.bounds.width
    var body: some View {
        GeometryReader { geo in
            ZStack{
                Rectangle()
                    .foregroundStyle(
                        .linearGradient(colors: [Color("BGYellow"), Color("BGPurple")], startPoint: .topTrailing, endPoint: .bottomLeading)
                    )
                    .ignoresSafeArea()
                VStack {
                    HStack {
                        ZStack {
                            Image("BlobBlur")
                                .resizable()
                                .scaleEffect(animateBlobs ? 1.2 : 1)
                                .frame(width: 220, height: 250)
                                .offset(x: -150, y: 50)
                                .animation(Animation.linear(duration: 3).repeatForever(), value: animateBlobs)
                            Image("Blob2")
                                .resizable()
                                .frame(width: 320, height: 250)
                                .offset(x: animateBlobs ? -(width*0.64) : -(width*0.68), y: -(height*0.14*900/geo.size.height))
                                .animation(Animation.linear(duration: 4).repeatForever(), value: animateBlobs)
                                .opacity(0.7)
                            Image("Blob1")
                                .resizable()
                                .frame(width: 500, height: 380)
                                .offset(x: animateBlobs ? -(width*0.833) : -(width*0.85), y: animateBlobs ? -(geo.size.height*0.22*900/geo.size.height) :  -(geo.size.height*0.24*900/geo.size.height))
                                .animation(Animation.linear(duration: 4.7).repeatForever(), value: animateBlobs)
                            
                        }
                        Spacer()
                        ZStack {
                            Image("Blob3")
                                .resizable()
                                .scaleEffect(2)
                                .frame(width: 195, height: 200)
                                .offset(x: -(geo.size.width*0.45), y: animateBlobs ? -(geo.size.height*0.22*900/geo.size.height) : -(geo.size.height*0.20*900/geo.size.height))
                                .animation(Animation.linear(duration: 4.7).repeatForever(), value: animateBlobs)
                            Image("Blob4")
                                .resizable()
                                .scaleEffect(2)
                                .frame(width: 195, height: 200)
                                .offset(x: animateBlobs ? -130 : -140, y: -(geo.size.height*0.22*900/geo.size.height))
                                .animation(Animation.linear(duration: 5.7).repeatForever(), value: animateBlobs)
                            Image("BlobCircle")
                                .resizable()
                                .scaleEffect(animateBlobs ? 1.1 : 1)
                                .frame(width: 70, height: 70)
                                .offset(x: -340, y: -90)
                                .animation(Animation.linear(duration: 3).repeatForever(), value: animateBlobs)
                            Image("BlobCircle")
                                .resizable()
                                .scaleEffect(animateBlobs ? 1.1 : 1)
                                .frame(width: 35, height: 35)
                                .offset(x: animateBlobs ? -280 : -290, y: animateBlobs ? -60 : -50)
                                .animation(Animation.linear(duration: 4).repeatForever(), value: animateBlobs)
                        }
                    }
                    Spacer()
                    HStack{
                        Spacer()
                        ZStack {
                            Image("Blob5")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .offset(x: -240, y: animateBlobs ? (geo.size.height*0.16*900/geo.size.height) : (geo.size.height*0.18*900/geo.size.height))
                                .animation(Animation.linear(duration: 4).repeatForever(), value: animateBlobs)
                            Image("Blob6")
                                .resizable()
                                .frame(width: 300, height: 300)
                                .offset(x: animateBlobs ? -230 : -240, y: animateBlobs ? ((geo.size.height*0.19*900/geo.size.height)) : ((geo.size.height*0.16*900/geo.size.height)))
                                .animation(Animation.linear(duration: 4.5).repeatForever(), value: animateBlobs)
                        }
                    }
                }
                .ignoresSafeArea()
            }
        }
        .onAppear{
            withAnimation {
                animateBlobs.toggle()
            }
        }
    }
}

struct BlobBackground_Previews: PreviewProvider {
    static var previews: some View {
        BlobBackground()
    }
}
