//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/09.
//

import SwiftUI

@available(iOS 13, * )
public struct TextFieldWithUnderline: View {
    @State private var text: String = ""
    var placeholder: String
    var onFousLineColor: Color = .red
    var lineColor: Color = .gray
    let lineHeight: CGFloat = 1.0
    @State private var dividerColor: Color = .gray
    public init(placeholder: String = "", lineColor: Color = .gray, onFocusLineColor: Color = .red) {
        self.placeholder = placeholder
        self.lineColor = lineColor
        self.onFousLineColor = onFocusLineColor
    }
    public var body: some View {
        VStack {
            TextField(placeholder, text: $text, onEditingChanged: { changed in
                if changed {
                    self.changed()
                } else {
                    self.committed()
                }
            })
//           .foregroundColor(Color.red)
//           .font(Font.custom("Papyrus", size: 16))
            .padding(EdgeInsets(top: 0, leading: 10.0, bottom: 0.0, trailing: 0.0))
            Rectangle()
            .fill(dividerColor)
            .frame(height: lineHeight)
            .edgesIgnoringSafeArea(.horizontal)
//            Divider()
//                .background($dividerColor)
        }
    }
    func changed() {
        self.dividerColor = self.onFousLineColor
    }
    func committed() {
        self.dividerColor = self.lineColor
    }
}
#if DEBUG
@available(iOS 13, * )
struct UnderlineTextField_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithUnderline(placeholder: "Enter Your Name")
    }
}
#endif
