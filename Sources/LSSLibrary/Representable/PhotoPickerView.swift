//
//  File.swift
//  
//
//  Created by vitus on 2022/05/03.
//

import Foundation
import UIKit
import SwiftUI
import TLPhotoPicker


public struct PohotoPikcerView : UIViewControllerRepresentable{
    
    public var configure : TLPhotosPickerConfigure = TLPhotosPickerConfigure()
    public var delegate : TLPhotosPickerViewControllerDelegate?
    
    public init() {
        
    }
    
    public func makeUIViewController(context: Context) -> some UIViewController {
        let vc = TLPhotosPickerViewController()
        vc.configure = configure
        vc.delegate = delegate
    }
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
