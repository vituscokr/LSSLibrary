//
//  File.swift
//  
//
//  Created by app_ios on 2020/04/14.
//

import SwiftUI

@available(iOS 13, * )
public struct CheckBoxControlConfig {
    var title: String
    public var selected: Bool
    public init(title: String = "checkbox", selected: Bool = false ) {
        self.title = title
        self.selected = selected
    }
}
@available(iOS 13, * )
public struct CheckboxControl: View {
    @Binding var checkboxControlConfig: CheckBoxControlConfig
    public init(config: Binding<CheckBoxControlConfig>) {
        self._checkboxControlConfig = config
    }
    public var body: some View {
        HStack {
            Image(systemName: self.checkboxControlConfig.selected ? "checkmark.square" : "square")
            Text("\(self.checkboxControlConfig.title)")
                .strikethrough(self.checkboxControlConfig.selected, color: .red)
        }.onTapGesture {
            self.checkboxControlConfig.selected.toggle()
        }
    }
}

@available(iOS 13, *)
struct CheckboxControl_Previews: PreviewProvider {
    @State static var checkboxConfig = CheckBoxControlConfig(title: "checkbox", selected: false)
    static var previews: some View {
        CheckboxControl(config: $checkboxConfig)
//        .previewLayout(.fixed(width: 400, height: 500))
//        .previewDisplayName("Figure 5.10")
    }
}
/*
 struct ContentView: View {
     @State var checkboxControlConfig: CheckBoxControlConfig = CheckBoxControlConfig(title: "title", selected: false)
     var body : some View {
         CheckboxControl(config: $checkboxControlConfig)
     }
 }
 */
