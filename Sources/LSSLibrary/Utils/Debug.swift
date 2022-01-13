//
//  Debug 
//  
//
//  Created by app_ios on 2020/04/10.
//

import Foundation




public  class Debug {
    public enum DebugLineType {
        case signle
        case double
        case plus
    }
    public class func line(type:Debug.DebugLineType){
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
    public class func log(_ str:String) {
        #if DEBUG
        print(str)
        #else
        #endif
    }
    

    public class func log(_ object:Any) {
        #if DEBUG
            print(object)
        #else
        #endif
    }
}
