//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/27.
//

import Foundation

/// 리퀘스트에 대한 에러 열거입니다. 
public enum RequestError: Error {
    case requestNoSuccess
    case requestError(message: String)
    case requestFailError(error: Error)
}
