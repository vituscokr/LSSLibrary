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
    public static var active  = false
    public static var expensive = false
    
    public static func start() {
        guard monitor.pathUpdateHandler == nil else { return }
        
        monitor.pathUpdateHandler = { update in
            
            NetworkMonitor.active = update.status == .satisfied ? true : false
            NetworkMonitor.expensive = update.isExpensive ? true : false
            
            NotificationCenter.default.post(name: Notification.Name.didNetworkChange, object: nil )
        }
        
        monitor.start(queue: DispatchQueue(label: "NetworkMonitor"))
    }
    
    public static func stop() {
        guard monitor.pathUpdateHandler != nil else { return }
        monitor.cancel()
    }
}

/**
 샘플 코드
 
 class SampleModel : ObservableObject {

     @Published var isNetwork : Bool = false
     
     var appEnvironment : AppEnvironment = .stage
     init() {
         Debug.log(appEnvironment)
         Debug.log(Notification.Name.didNetworkChange)
         
         NetworkMonitor.start()
     }
 }

 
 
 
 let didNetworkChange = NotificationCenter.default.publisher(for: .didNetworkChange)
     .receive(on: DispatchQueue.main)
 
 VStack {
     if model.isNetwork {
         Text("onLine")
     }else {
         Text("offLine")
     }
 }
 
     .onReceive(didNetworkChange) { _ in
         
         Debug.log("Network 상태 : \(NetworkMonitor.active)")
         Debug.log("LTE 여부 : \(NetworkMonitor.expensive)")
         
         model.isNetwork = NetworkMonitor.active
     }
 */

