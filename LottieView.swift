//
//  ConfettiLottieView.swift
//  Hourglass
//
//  Created by Herman Christiansen on 03/09/2022.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable{
    typealias UIViewType = UIView
    
    let animationName: String
    
    func makeUIView(context: Context) -> UIView {
        let view = UIView(frame: .zero)
        
        let animationView = AnimationView()
        let animation = Animation.named(String(animationName))
        animationView.animation = animation
        animationView.contentMode = .scaleAspectFit
        animationView.play()
        animationView.loopMode = .playOnce
        
        
        animationView.respectAnimationFrameRate = true
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([animationView.widthAnchor.constraint(equalTo: view.widthAnchor), animationView.heightAnchor.constraint(equalTo: view.heightAnchor)])
        return view
    }
    
    func updateUIView(_ uiView: UIView, context: Context) {
        
    }
    
    
}

struct ConfettiLottieView_Previews: PreviewProvider {
    static var previews: some View {
        LottieView(animationName: "confetti")
    }
}
