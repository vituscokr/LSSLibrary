//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/02.
//

import SwiftUI


public struct RoundedCorner : Shape {
    
    public var radius : CGFloat = .infinity
    public var corners : UIRectCorner = .allCorners
    
    public func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}

extension View  {
    
    public func cornerRadius(_ radius: CGFloat , corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners))
    }
}
