//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation
import UIKit
import SwiftyJSON

public class Archive {
    
    public class func save(filename: String, data: JSON) {
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPath[0] as NSString
        let dataFilePath = docsDir.appendingPathComponent(filename )
        do {
            let data = try NSKeyedArchiver.archivedData(withRootObject: data.rawData(), requiringSecureCoding: false)
            try data.write(to: URL(fileURLWithPath: dataFilePath))
        } catch {
            //print("Couldn't write file")
        }
    }
    
    public class func read(filename: String) -> JSON?  {
        let fileManager = FileManager.default
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPath[0] as NSString
        let dataFilePath = docsDir.appendingPathComponent(filename )
        if fileManager.fileExists(atPath: dataFilePath) {
            if let ndata = NSData(contentsOf: URL(fileURLWithPath: dataFilePath)) {
                do {
                    let data = Data(referencing: ndata)
                    let r = try! NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(data) as? Data
                    
                    return try JSON(data:r!)
                    
                }catch {
                    return nil
                }
            }
        }
        return nil
    }

    
    public class func remove(filename: String) {
        let fileManager = FileManager.default
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPath[0] as NSString
        let dataFilePath = docsDir.appendingPathComponent(filename )
        if fileManager.fileExists(atPath: dataFilePath) {
            do {
                try fileManager.removeItem(atPath: dataFilePath)
            }catch {
                print("파일삭제를 하지 못했습니다. ")
            }
           
        }
    }
    
}
