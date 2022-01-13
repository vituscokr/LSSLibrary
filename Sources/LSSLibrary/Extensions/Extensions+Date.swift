//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/12.
//

import Foundation
import UIKit

public enum MyDateStringFormat: String {
    case defaultFormat = "yyyy-MM-dd"
    case defaultConvertFormat = "yyyy-MM-dd  HH:mm:ss"
    case defaultExactFormat = "yyyy-MM-dd  HH:mm"
    case proposalDate = "yyyy-MM-dd, a h:mm" //신청일
    case visitDate = "YYYY년 M월 d일 a h시"
    case disturbDate = "HH:mm"
    case chatTime = "a h:mm"
    case minute = "m"
    case hour = "HH"
    case recepit = "yyyy.MM.dd"
    case month = "MM"
    case monthString = "YYYY년 MM월"
    case dayWeek = "d일 (eee)"
    case period = "M월 d일"
    case year = "YYYY"
    case monthOne = "M"
    case day = "d"
    case a = "YYYY-MM"
    case b = "YYYY-MM-d"
}

extension Date {
    public var currentTimeStamp: Int64{
        //return Int64(Date().timeIntervalSince1970 * 1000)
        return Int64(Date().timeIntervalSince1970 * 1000)
    }
    

    public func string(type:MyDateStringFormat) -> String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = type.rawValue
            dateFormatter.locale = Locale(identifier: "ko_KR")
            return dateFormatter.string(from: self)
    }
    
    
    public var timestamp:Int64 {
        return Int64(self.timeIntervalSince1970 * 1000)
    }


    public func startOfMonth() -> Date {
        return Calendar.current.date(from: Calendar.current.dateComponents([.year, .month], from: Calendar.current.startOfDay(for: self)))!
    }
    
    public func endOfMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month: 1, day: -1), to: self.startOfMonth())!
    }
    
    public func preMonth() -> Date {
        return Calendar.current.date(byAdding: DateComponents(month:-1) , to: Date())!
    }

    public var current10Minute : Date {
        return Date() 
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
}
