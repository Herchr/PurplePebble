//
//  LottieView.swift
//  Hourglass
//
//  Created by Herman Christiansen on 23/08/2022.
//

import SwiftUI
import Lottie

struct HourglassLottieView: UIViewRepresentable {
    var filename: String
    @Binding var time: Double
    @Binding var animate: Bool
    @Binding var showFinishedModal: Bool
    
    typealias UIViewType = UIView
    func makeUIView(context: UIViewRepresentableContext<HourglassLottieView>) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(String(filename))
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.animationSpeed = 1/(12*time)
        animationView.play(fromFrame: 0, toFrame: 151) { finished in
            withAnimation {
                animate = false
            }
            if finished{
                withAnimation {
                    showFinishedModal = true
                }
            }
        }
        animationView.loopMode = .playOnce
        
        
        //animationView.respectAnimationFrameRate = true
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo: view.widthAnchor), animationView.heightAnchor.constraint(equalTo: view.heightAnchor)])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<HourglassLottieView>) {
    }
    

    
}
