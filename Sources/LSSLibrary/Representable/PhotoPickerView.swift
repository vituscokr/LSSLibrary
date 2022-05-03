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


public struct PhotoPikcerView : UIViewControllerRepresentable{
    
    public var configure : TLPhotosPickerConfigure
    public var delegate : TLPhotosPickerViewControllerDelegate
    
    public init(configure: TLPhotosPickerConfigure = TLPhotosPickerConfigure() ,
                delegate: TLPhotosPickerViewControllerDelegate = PhotoPickerViewDelegate()) {
        
        self.configure = configure
        self.delegate = delegate
    }
    
    public func makeUIViewController(context: Context) -> some UIViewController {
        let vc = TLPhotosPickerViewController()
        vc.configure = configure
        vc.delegate = delegate
        return vc 
    }
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}
