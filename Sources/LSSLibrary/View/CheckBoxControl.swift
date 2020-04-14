//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/14.
//

import SwiftUI

@available(iOS 13, * )
public struct CheckBoxControlConfig {
    
    var title:String
    public var selected:Bool
    
    public init(title:String = "checkbox", selected:Bool = false ) {
        self.title = title
        self.selected = selected
    }
}
@available(iOS 13, * )
public struct CheckboxControl: View {
    @State var config:CheckBoxControlConfig
    
    public init(config:State<CheckBoxControlConfig>) {
        self._config = config
    }
    
    public var body: some View {
        HStack {
            Image(systemName: self.config.selected ? "checkmark.square" : "square")
            Text("\(self.config.title)")
                .strikethrough(self.config.selected, color: .red)
        }.onTapGesture {
            self.config.selected.toggle()
        }
    }
}

@available(iOS 13, *)
struct CheckboxControl_Previews: PreviewProvider {
    
    @State static var checkboxConfig = CheckBoxControlConfig(title: "checkbox", selected: false)
    static var previews: some View {
        CheckboxControl(config: _checkboxConfig)
//        .previewLayout(.fixed(width: 400, height: 500))
//        .previewDisplayName("Figure 5.10")
    }
}
