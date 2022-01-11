//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/11.
//

import Foundation


extension String {
    
    public var isEmail: Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailTest.evaluate(with: self)
    }
    
    public var isAlphanumeric: Bool {
        return !isEmpty && range(of: "[^a-zA-Z0-9]", options: .regularExpression) == nil
    }
    
    public var isNumber :Bool {
        return !isEmpty && range(of: "[^0-9]", options: .regularExpression) == nil
    }
}
