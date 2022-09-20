//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/09/20.
//

import SwiftUI
public extension Image {
    func photoStyle(withMaxWidth maxWidth: CGFloat = .infinity,
                    withMaxHeight maxHeight: CGFloat = .infinity)
    -> some View {
        self
            .resizable()
            .scaledToFill()
            .frame(width: maxWidth, height: maxHeight, alignment: .center)
            .clipped()
    }
}
