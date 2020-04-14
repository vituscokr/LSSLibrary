//
//  ProgressBarView.swift
//  ngtopenimg
//
//  Created by app_ios on 2020/04/10.
//  Copyright © 2020 vitus. All rights reserved.
//
//참고 https://medium.com/@ashikabala01/creating-custom-progress-bar-in-ios-using-swift-c662525b6ed
//참고 https://www.simpleswiftguide.com/how-to-build-linear-progress-bar-in-swiftui/

import SwiftUI

public struct ProgressBarViewConfig {
    var value:Float = 0.0
    var bgColor:Color = Color.gray
    var fillColor:Color = Color.red
}
@available(iOS 13, * )
public struct ProgressBarView: View {

    @Binding var config:ProgressBarViewConfig
    
    public init(config:Binding<ProgressBarViewConfig>) {
        self._config = config
    }
    public var body: some View {
        GeometryReader { geometry in
            ZStack {
                //밑의 원
                Circle()
                    .fill(Color.clear)
                .overlay(
                    Circle()
                        .stroke(self.config.bgColor, lineWidth: 10)
                )
                //위의 원
                Path { path in
                    path.addArc(center: CGPoint(x:geometry.size.width * 0.5, y: geometry.size.height * 0.5), radius: geometry.size.width * 0.5, startAngle: .degrees(-90), endAngle: .degrees(-90 + ( Double(self.config.value) * 360)), clockwise: false)
                    _ = path.strokedPath(.init(lineWidth: 3, lineCap: .round, lineJoin: .round, miterLimit: 10, dash: [5,3], dashPhase: 10))
                }
                .stroke(self.config.fillColor, lineWidth: 10)
            }
        }
    }
}

#if DEBUG
struct ProgressBarView_Previews: PreviewProvider {
    @State static var progressBarViewConfig: ProgressBarViewConfig = ProgressBarViewConfig(value: 0.5, bgColor: .green, fillColor: .yellow)
    static var previews: some View {
        ProgressBarView(config: $progressBarViewConfig)
    }
}
#endif


/*
 테스트
 */


/*

struct ContentView: View {
    
    @State var progressBarConfig = ProgressBarViewConfig(value: 0.0, bgColor: .green, fillColor: .yellow)
    @State var isOnProgress:Bool = false
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    var body: some View {
        VStack {
            ProgressBarView(config: $progressBarConfig)
                .onReceive(timer) { (input) in
                    
                    if self.isOnProgress , self.progressBarConfig.value <= 1 {
                        self.progressBarConfig.value += 0.01
                    }else {
                        self.progressBarConfig.value = 0.0
                        self.isOnProgress = false
                    }
            }
            
            Button(action: {
                self.startProgressBar()
            }){
                Text("Start")
            }
            .padding()
            
            Button(action: {
                self.resetProgressBar()
            }){
                Text("Reset")
            }
            .padding()
        }.padding()
    }
    
    
    func startProgressBar() {
        self.isOnProgress = true
    }
    
    func resetProgressBar() {
        self.isOnProgress = false
        self.progressBarConfig.value = 0.0
    }
}
#if DEBUG
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif

 */
