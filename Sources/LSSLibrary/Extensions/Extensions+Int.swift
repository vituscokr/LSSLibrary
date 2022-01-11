//
//  Extensions+Int.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/11.
//

import Foundation

extension Int {
    public func decimalStyle() -> String {
        let numFormatter : NumberFormatter = NumberFormatter();
        numFormatter.numberStyle = NumberFormatter.Style.decimal
        return numFormatter.string(from: NSNumber(integerLiteral: self))!
    }
    
    public var vat : Int {
        return  Int(Float(self) - floor( Float(self) / 1.1))
    }
}
