//
//  LottieViewTime.swift
//  LavaGame
//
//  Created by saba on 18/06/1444 AH.
//

import SwiftUI
import Lottie

struct LottieViewTime: UIViewRepresentable {
    let lottieFile: String
    
    let animationView = LottieAnimationView()
    
    func makeUIView(context: Context) -> some UIView {
        let view = UIView(frame: .zero)
        
        animationView.animation = Animation.named(lottieFile)
//        animationView.currentTime = 50.5
        animationView.loopMode = .repeat(1)
        animationView.contentMode = .scaleAspectFit
       
        animationView.play()
        
        
        view.addSubview(animationView)
        
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.heightAnchor.constraint(equalTo: view.heightAnchor).isActive = true
        animationView.widthAnchor.constraint(equalTo: view.widthAnchor).isActive = true
        
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
}
