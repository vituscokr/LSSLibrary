//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/10.
//

import Foundation



//LSSConfig plist 를 활용한 설정 구현
//RealM을 이용해서 이전에 사용한 설정 키값들

//
//public class LSSConfig {
//
//    static var shared = LSSConfig()
//
//    enum ConfigKey :String {
//        case deviceId
//        case fcmToken
//    }
//
//
//    func read(key:ConfigKey) {
//    }
//
//    func save(key:ConfigKey, value:String ) {
//    }
//}
//
////Property 리스트 읽기
//public class PropertyList {
//    func readOnly(filename:String) -> Dictionary<String,Any>? {
//        let path = Bundle.main.path(forResource: filename, ofType: "plist")!
//        let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String,Any>
//        return dict
//    }
//
//    func getDocumentPath(filename:String) -> String {
//        let file = "\(filename).plist"
//        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
//        let path = documentsPath.appendingPathComponent(file)
//        return path
//    }
//
//    func read(filename:String) -> Dictionary<String,Any>? {
//        let path = self.getDocumentPath(filename: filename)
//        let dict = NSDictionary(contentsOfFile: path) as? Dictionary<String,Any>
//        return dict
//    }
//
//
//
//
//    func save(filename:String, dict:Dictionary<String,Any>) {
//        let path = self.getDocumentPath(filename: filename)
//        let dict = dict as NSDictionary
//        dict.write(toFile: path, atomically: true)
//    }
//}
//
//
//struct MySettings :Codable {
//    var someFlag:Bool
//    var someString:String
//    var someInt:Int
//
//
//    public init(someFlag:Bool = true , someString:String = "" , someInt:Int = 1)  {
//        self.someFlag = someFlag
//        self.someString = someString
//        self.someInt = someInt
//    }
//}
//
//extension MySettings : CustomDebugStringConvertible {
//    var debugDescription: String {
//        return "someFlag:\(someFlag), someString: \(someString), someInt:\(someInt)  "
//    }
//}
//


public class DocumentPropertyCodable<T:Codable> {
    
    private let filename : String
    
    private var  getDocumentPath :String {
        let file = "\(self.filename).archive"
        let documentsPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)[0] as NSString
        let path = documentsPath.appendingPathComponent(file)
        return path
    }

    public init(filename:String) {
        self.filename = filename
    }
    

    public func get() -> T? {
        do {
            let data = try NSData(contentsOfFile: self.getDocumentPath) as Data
            let decoder = PropertyListDecoder()
             let settings = try decoder.decode(T.self, from: data)
            return  settings
            
        }catch {
            //print("error")
            
            return nil
        }
    }
    
    public func save(object:T) {
        
        let path = self.getDocumentPath
        
        let encoder = PropertyListEncoder()
        encoder.outputFormat = .xml
        do {
            let data = try encoder.encode(object)
            (data as NSData).write(toFile: path, atomically: true )
        } catch {
            
        }

    }
}


//let settings = DocumentPropertyCodable<MySettings>(filename: "settings")
//
//guard  var mySetting = settings.get() else { return }
//
//Debug.log(mySetting)
//
//
//mySetting.someFlag = false
//
//mySetting.someString = "saved"
//
//
//
//settings.save(object: mySetting )
//
//
//Debug.log(settings.get())
