//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/12.
//

import Foundation
import UIKit

extension Date {
    // milisecond 포함
    public var currentTimeStamp: Int64 {
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
    // timestamp 에서 데이트를 구함
    public func getDate(from: Int) -> Date {
        return  Date(timeIntervalSince1970: TimeInterval(from / 1000))
    }
    public func string(type: MyDateStringFormat) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = type.rawValue
            dateFormatter.locale = Locale(identifier: "ko_KR")
            return dateFormatter.string(from: self)
    }
    public var timestamp: Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }
    public func startOfMonth() -> Date {
        let from = Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self))
        return Calendar.current.date(from: from)!
    }
    public func endOfMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
    }
    public func preMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: -1), to: self)!
    }
    public func nextMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1), to: self)!
    }
    public func preYear() -> Date {
        return Calendar.current.date(byAdding: DateComponents(year: -1), to: self)!
    }
    public func nextYear() -> Date {
        return Calendar.current.date(byAdding: DateComponents(year: 1), to: self)!
    }
    public var current10Minute: Date { return Date() }
//        let strMin = Date().string(type: .minute)
//        let tmpMin = Int(strMin)! % 10
//
//
//        let adate = Date().addingTimeInterval((TimeInterval((10-tmpMin)*60)))
//
//        let date = adate.string(type: .defaultExactFormat)
//
//        let str = date + ":00"
//
//        let d = str.date(type: .defaultConvertFormat)
//
//        return d

}
