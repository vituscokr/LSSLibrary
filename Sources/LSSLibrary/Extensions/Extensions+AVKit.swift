//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/03.
//

import Foundation
import AVKit


extension AVPlayer {
    
    public var duration : String {
        guard let duration: CMTime = self.currentItem?.asset.duration else {
            return ""
        }
        let seconds: Float = Float(CMTimeGetSeconds(duration))
        let minute = String(format: "%02d", Int(seconds  / 60))
        let sec = String(format: "%02d", Int(Int(ceil(seconds)) % 60))
        return "\(minute):\(sec)"
    }
}
