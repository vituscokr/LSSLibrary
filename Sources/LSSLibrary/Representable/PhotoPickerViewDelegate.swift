//
//  File.swift
//  
//
//  Created by vitus on 2022/05/03.
//

import Foundation
import UIKit
import TLPhotoPicker

public class PhotoPickerViewDelegate : UIViewController , UINavigationControllerDelegate {
    public init() {
        
    }
    public required init?(coder: NSCoder) {
        
    }
}

extension PhotoPickerViewDelegate : TLPhotosPickerViewControllerDelegate {
    
}
