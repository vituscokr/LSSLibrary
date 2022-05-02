//
//  SwiftUIView.swift
//  
//
//  Created by Gyeongtae Nam on 2022/05/02.
//

import SwiftUI
import TLPhotoPicker

struct PhotoPickerView: UIViewControllerRepresentable {

    
    
    func makeUIViewController(context: Context) -> some UIViewController {
        
        let vc = SelectPhotoViewController()
        return vc 
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        
    }
}




struct PhotoPickerView_Previews: PreviewProvider {
    static var previews: some View {
        PhotoPickerView()
    }
}
