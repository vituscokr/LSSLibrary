//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/11.
//

import Foundation

/// 정규식 관련 확장
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

///Y or N 관련 확장 선언문
/// Bool 의 YorNString  참조
extension String {
    public var boolValueYorN :Bool {
        if self == "Y" {
            return true
        }else {
            return false
        }
    }
}

///문자열 길이 관련 확장
extension String {
    public func checkLength(min:Int, max:Int ) -> Bool {
        if(self.count >= min && self.count <= max ) {
            return true
        }else {
            return false
        }
    }
}

//    mutating func date(type:MyDateStringFormat , mode: DatePickerMode)-> Date{
//        let formatter = DateFormatter()
//        formatter.dateFormat = type.rawValue
//        formatter.locale = Locale(identifier: "ko_KR")
//
//        switch(mode) {
//        case .start:
//            self.append(" 00:00:00")
//        case .end:
//            self.append(" 23:59:59")
//        }
//        return  formatter.date(from: self)!
//    }
    

///날짜 관련 확장
extension String {
    public func date(type:MyDateStringFormat)-> Date{
        let formatter = DateFormatter()
        formatter.dateFormat = type.rawValue
        formatter.locale = Locale(identifier: "ko_KR")
        return  formatter.date(from: self)!
    }
    
    public var iso8601: Date {
        let dateFormatter = ISO8601DateFormatter() //2022-04-04T05:19:26.723Z
        dateFormatter.formatOptions.insert(.withFractionalSeconds)
        return dateFormatter.date(from: self)!
    }

    public func stringDateFromTimestamp(ts: Int) -> String  {
        //날짜차이
        guard ts != 0 else { return "" }
        let ct = Date().currentTimeStamp
        let diff = Int(ct) - ts
        if diff < 86400 {
            return "1일전"
        }else if diff < 86400 * 2 {
            return "2일전"
        }else if diff < 86400 * 3 {
            return "3일전"
        }else if diff < 86400 * 4 {
            return "4일전"
        }else if diff < 86400 * 5 {
            return "5일전"
        }else if diff < 86400 * 6 {
            return "6일전"
        }else if diff < 86400 * 7 {
            return "7일전"
        }
        return Date().getDate(from: ts).string(type: .defaultFormat)
    }

}

///HTML   관련 확장 클래스
extension String {
    public var htmlToAttributedString: NSMutableAttributedString? {
       guard let data = data(using: .utf8) else { return nil }
       do {
           return try NSMutableAttributedString(data: data,
                                         options: [
                                            .documentType: NSMutableAttributedString.DocumentType.html,
                                            .characterEncoding: String.Encoding.utf8.rawValue
                                            ],
                                         documentAttributes: nil)
       } catch let error as NSError {
           //print(error.localizedDescription)
           return  nil
       }
    }
}
