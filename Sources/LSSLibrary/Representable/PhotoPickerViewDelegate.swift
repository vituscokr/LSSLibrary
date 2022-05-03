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
        super.init(nibName: nil, bundle: nil)
    }
    public required init?(coder: NSCoder) {
        super.init(nibName: nil, bundle: nil)
    }
}

extension PhotoPickerViewDelegate : TLPhotosPickerViewControllerDelegate {
    
}
