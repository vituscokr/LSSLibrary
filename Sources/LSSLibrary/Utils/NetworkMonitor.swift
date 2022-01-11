//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/01/11.
//

import Foundation
import Network
//ios 12 부터 제공 해줍니다.
//https://magicmon.tistory.com/229

public struct NetworkMonitor {
    private static let monitor = NWPathMonitor()
    static var active  = false
    static var expensive = false
    
    static func start() {
        guard monitor.pathUpdateHandler == nil else { return }
        
        monitor.pathUpdateHandler = { update in
            
            NetworkMonitor.active = update.status == .satisfied ? true : false
            NetworkMonitor.expensive = update.isExpensive ? true : false
        }
        
        monitor.start(queue: DispatchQueue(label: "NetworkMonitor"))
    }
    
    static func stop() {
        guard monitor.pathUpdateHandler != nil else { return }
        monitor.cancel()
    }
}


