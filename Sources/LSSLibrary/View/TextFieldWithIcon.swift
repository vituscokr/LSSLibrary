//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/09.
//

import SwiftUI

@available(iOS 13, * )
public struct TextFieldWithIcon: View {

    @State private var text: String = ""
    var placeholder:String
    
    public init(placeholder :String = "") {
        self.placeholder = placeholder
    }
    
    
    public var body: some View {
        HStack {
            Image(systemName: "lock")
            TextField(placeholder, text:$text , onEditingChanged: { changed in
                if changed {
                    self.changed()
                }else {
                    self.committed()
                }
            })
//            .foregroundColor(Color.red)
//            .font(Font.custom("Papyrus", size: 16))
        }
        .padding()
        //.overlay(RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 2).foregroundColor(Color.black))
    }
    func changed() {
        
    }
    func committed() {
        
    }
}
#if DEBUG
@available(iOS 13, * )
struct TextFieldWithIcon_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldWithIcon(placeholder: "a")
    }
}
#endif
