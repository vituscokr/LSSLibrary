//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/21.
//

import Foundation

public enum MyDateStringFormat: String {
    case iso8601 = "YYYY-MM-DDTHH:mm:ss.sssZ"
    case defaultFormat = "yyyy-MM-dd"
    case defaultConvertFormat = "yyyy-MM-dd  HH:mm:ss"
    case defaultExactFormat = "yyyy-MM-dd  HH:mm"
    case proposalDate = "yyyy-MM-dd, a h:mm"
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
    case yearMonth2 = "YYYY-MM"
    case yearMonth2Day1 = "YYYY-MM-d"
}
