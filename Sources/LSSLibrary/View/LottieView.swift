//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/21.
//

import SwiftUI 
//import Lottie

/*
public struct LottieView : UIViewRepresentable {
    ///json파일명을 받을 프로퍼티
    private var filename: String

    //lottie View
    private var animationView = AnimationView()
    
    public init(filename: String ) {
        self.filename = filename
    }
    
    //makeCoordinator를 구현하여 제약사항을 구현합니다.
    public func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }
    public class Coordinator: NSObject {
        var parent: LottieView
        
        public init(_ animationView: LottieView) {
            //frame을 LottieView로 할당합니다.
            self.parent = animationView
            super.init()
        }
    }
    
    public func makeUIView(context: UIViewRepresentableContext<LottieView>) -> UIView {
        let view = UIView()
        
        //lottie 구현뷰
        animationView.animation = Animation.named(filename)
        animationView.contentMode = .scaleAspectFit
        animationView.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: view.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: view.heightAnchor)
        ])
        
        //애니메이션이 계속 반복되게합니다.
        animationView.loopMode = .loop
        animationView.play()
        return view
    }
    
    //updateView가 구현되어있지않습니다.
    public func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<LottieView>) {
        
    }
}
*/
