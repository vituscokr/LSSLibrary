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
    
    ///timestamp 에서 데이트를 구함
    public var date: Date {
        return  Date(timeIntervalSince1970: TimeInterval(self / 1000))
        
    }
    
}
