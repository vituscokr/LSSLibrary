//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/10.
//

import Foundation

public class DocumentPropertyCodable<T: Codable> {
    private let filename: String
    private var  getDocumentPath: String {
        let file = "\(self.filename).archive"
        let documentsPath = NSSearchPathForDirectoriesInDomains(
            .documentDirectory,
                .userDomainMask, true)[0] as NSString
        let path = documentsPath.appendingPathComponent(file)
        return path
    }

    public init(filename: String) {
        self.filename = filename
    }
    public func get() -> T? {
        do {
            let data = try NSData(contentsOfFile: self.getDocumentPath) as Data
            let decoder = PropertyListDecoder()
             let settings = try decoder.decode(T.self, from: data)
            return  settings
        } catch {
            return nil
        }
    }
    public func save(object: T) {
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
