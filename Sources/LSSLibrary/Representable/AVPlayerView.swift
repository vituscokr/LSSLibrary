//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/03.
//

import Foundation
import AVKit
import UIKit
import SwiftUI

@available(iOS 13.0, *)
public struct AVPlayerView: UIViewControllerRepresentable {
    private var player: AVPlayer
    private var showController: Bool

    public init(player: AVPlayer, showController: Bool = false ) {
        self.player = player
        self.showController = showController
    }
    public func makeUIViewController(context: Context) -> some UIViewController {
        let controller = AVPlayerViewController()
        controller.player = player
       // controller.modalPresentationStyle = .fullScreen
        controller.showsPlaybackControls = showController
        return controller
    }
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
    }
}
