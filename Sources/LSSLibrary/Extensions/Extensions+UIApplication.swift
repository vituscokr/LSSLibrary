//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/02.
//

import Foundation
import UIKit


//사용예
//UIApplication.shared.endEditing()

extension UIApplication {
    public func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
