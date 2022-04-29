//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation
import UIKit 

/*
extension UITextView {
    func calculateHeight(text:String) -> CGFloat {
     
        let max = UIScreen.main.bounds.width - 32
        
        let tv = UITextView(frame: CGRect(x: 0, y: 0, width: max, height: CGFloat.greatestFiniteMagnitude))
        tv.font = UIFont.systemFont(ofSize: 16)
        tv.textContainerInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16);
        tv.text = text
        tv.sizeToFit()
        
        return tv.frame.size.height
        
    }
    
    func calculateHeight(text:String , in width:CGFloat , fontSize:CGFloat = 13  , lineHeightMultiple:CGFloat = 1.8 ) -> CGFloat {
     

        
        let tv = UITextView(frame: CGRect(x: 0, y: 0, width: width, height: CGFloat.greatestFiniteMagnitude))
        tv.font = UIFont.systemFont(ofSize: fontSize)
        tv.textContainerInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16);
//        tv.text = text
//        tv.sizeToFit()
        
        
        let paragraphStyle = NSMutableParagraphStyle()

        paragraphStyle.lineHeightMultiple = lineHeightMultiple
        let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
        tv.attributedText  = NSMutableAttributedString(string: text, attributes: attributes)
        tv.sizeToFit()
        
        
        
        
        
        return tv.frame.size.height + 32
        
    }
    
}
 */
