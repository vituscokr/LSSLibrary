//
//  MyFile.swift
//  fixStore
//
//  Created by Kyungtae Nam on 2021/07/23.
//

import Foundation

public class MyFile {
    var filename: String
    let fileManager = FileManager.default
    public var dataPath: String {
        let dirPath = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let docsDir = dirPath[0] as NSString
        let dataPath = docsDir.appendingPathComponent("temp") as NSString
        return dataPath as String
    }
    public var filePath: String {
        return (dataPath as NSString).appendingPathComponent(filename)
    }
    var isExist: Bool {
        return fileManager.fileExists(atPath: filePath)
    }
    public init(filename: String) {
        self.filename = filename
        if !fileManager.fileExists(atPath: dataPath) {
                do {
                   try fileManager.createDirectory(
                    atPath: dataPath as String,
                    withIntermediateDirectories: true, attributes: nil)
               } catch {
                // Debug.log("Error: \(error.localizedDescription)")
               }
        }
    }
    public init() {
        filename = ""
        if !fileManager.fileExists(atPath: dataPath) {
                do {
                   try fileManager.createDirectory(
                    atPath: dataPath as String,
                    withIntermediateDirectories: true,
                    attributes: nil)
               } catch {
                // Debug.log("Error: \(error.localizedDescription)")
               }
        }
    }
    public func removeFile(url: String ) {
        let filename = (url as NSString).lastPathComponent
        let path = (dataPath as NSString).appendingPathComponent(filename )
        do {
            try fileManager.removeItem(atPath: path)
        } catch {
            // Debug.log("파일 삭제 실패")
        }
    }
    public func removeTemp() {
        do {
            let fileUrls = try fileManager.contentsOfDirectory(atPath: dataPath)
            for url in fileUrls {
                let path = (dataPath as NSString).appendingPathComponent(url)
                try fileManager.removeItem(at: URL(fileURLWithPath: path))
            }
        } catch {
            // Debug.log("Error: \(error.localizedDescription)")
        }
    }
    public func saveTemp( data: Data) {
        let path = (dataPath as NSString).appendingPathComponent(filename)
        do {
            try data.write(to: URL(fileURLWithPath: path))
        } catch {
            // Debug.log(error)
        }
    }
}
