//
//  File.swift
//  
//
//  Created by vitus on 2022/04/29.
//

import Foundation
import SwiftUI

public struct LSSButtonStyle<Content>: ButtonStyle where Content: View {
    public var change:(Bool) -> Content
    public func makeBody(configuration: Configuration) -> some View {
        return change(configuration.isPressed)
    }
    
    public init(change: @escaping (Bool)-> Content ){
        self.change = change
    }
}
