//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/10.
//

import Foundation


public class Debug {
    enum DebugLineType {
        case signle
        case double
        case plus
    }
    static public func line(type:DebugLineType){
        #if DEBUG
        switch(type) {
        case .signle:
            print("----------------------------------------------------------------------------")
        case .double:
            print("============================================================================")
        case .plus:
            print("++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++")
        }
        #else
        #endif
    }
    static func log(_ str:String) {
        #if DEBUG
        print(str)
        #else
        #endif
    }
    

    static func log(_ object:Any) {
        #if DEBUG
            print(object)
        #else
        #endif
    }
}
