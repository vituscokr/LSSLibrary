//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/27.
//

import Foundation

public enum RequestError :Error {
    case requestNoSuccess
    case requestError(message:String)
    case requestFailError(error:Error)
}
