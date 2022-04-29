//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation
/*

 import Foundation
 import UIKit



 extension UILabel {
     
     static let sizeHeaserLine:CGFloat = 26
     static let sizeTitle:CGFloat = 26
     static let sizeSubtitle :CGFloat = 18
     static let sizeBody :CGFloat = 16
     static let sizeCaption : CGFloat = 14
     
     
     func setHeaderLineStyle() {
         self.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
         self.font = UIFont.boldSystemFont(ofSize:UILabel.sizeHeaserLine)
         //self.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 26)
     }
     
     func setTitleStyle() {
         self.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
         self.font = UIFont.boldSystemFont(ofSize: UILabel.sizeTitle)
         //self.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 20)
     }
     
     func setSubTitleStyle() {
         self.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
         self.font = UIFont.boldSystemFont(ofSize:UILabel.sizeSubtitle)
         //self.font = UIFont(name: "AppleSDGothicNeo-Bold", size: 18)
     }
     
     func setBodyTextStyle(bold:Bool = false ) {
         self.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
         if bold {
             self.font = UIFont.boldSystemFont(ofSize: UILabel.sizeBody)
         }else {
             self.font = UIFont.systemFont(ofSize: UILabel.sizeBody)
         }
     }
     
     func setCaptionStyle(bold:Bool = false) {
         self.textColor = UIColor(red: 0.769, green: 0.769, blue: 0.769, alpha: 1)
         if bold {
             self.font = UIFont.boldSystemFont(ofSize: UILabel.sizeCaption)
         }else {
             self.font = UIFont.systemFont(ofSize: UILabel.sizeCaption)
         }
     }
     

     func setLineHeight(lineHeight: CGFloat) {
         let text = self.text
         if let text = text {
             let attributeString = NSMutableAttributedString(string: text)
             let style = NSMutableParagraphStyle()

             style.lineSpacing = lineHeight
             attributeString.addAttribute(NSAttributedString.Key.paragraphStyle, value: style, range: NSMakeRange(0, text.count))
             self.attributedText = attributeString
         }
     }
 }


 extension UILabel {
     
     
     
     
     func setFontSizeAndColor(size:CGFloat, color:UIColor , weight:UIFont.Weight = .regular ) {
         self.font = UIFont.systemFont(ofSize: UILabel.sizeSubtitle, weight: weight)
        self.textColor = color
     }
     
     //@신청서 보관함 전체 선택 글짜
     func setBodyText() {
         let color = UIColor.graydark3
         self.setFontSizeAndColor(size: 14, color: color)
     }
     
     //본문강조 글
     func setBigBodyText() {
         let color = UIColor(red: 0.176, green: 0.189, blue: 0.213, alpha: 1)
         self.setFontSizeAndColor(size: 16, color: color)
     }
     

     
     func calculateHeight(text:String , fontSize:CGFloat, width:CGFloat) -> CGFloat {
         
         
         let paragraphStyle = NSMutableParagraphStyle()
         paragraphStyle.lineHeightMultiple = 1.27
         let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]

         let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
         label.font = UIFont.systemFont(ofSize: fontSize)
         label.numberOfLines = 0
         label.attributedText  = NSMutableAttributedString(string: text, attributes: attributes)
         label.sizeToFit()
         
         return label.frame.size.height
         
     }
     
     
     func calculateHTMLHeight(text:String , fontSize:CGFloat, width:CGFloat) -> CGFloat {
         
         
 //        let paragraphStyle = NSMutableParagraphStyle()
 //        paragraphStyle.lineHeightMultiple = 1.27
 //        let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
         let body = text.htmlToAttributedString
         let paragraphStyle = NSMutableParagraphStyle()
         paragraphStyle.lineHeightMultiple = 1.27
         let attributes = [NSAttributedString.Key.paragraphStyle: paragraphStyle]
         
 //        body?.addAttributes([NSAttributedString.Key.font:UIFont.systemFont(ofSize: 14)
 //
 //        ], range: NSRange(location: 0, length: body!.length))
        body?.addAttributes(attributes, range: _NSRange(location: 0, length: body!.length))
         

         let label = UILabel(frame: CGRect(x: 0, y: 0, width: width, height: .greatestFiniteMagnitude))
         label.font = UIFont.systemFont(ofSize: fontSize)
         label.numberOfLines = 0
         label.attributedText  = body
         label.sizeToFit()
         
         return label.frame.size.height
         
     }
     
     
     
     func calculateWidth(text:String , fontSize:CGFloat) -> CGFloat {
         
         let label = UILabel(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
         label.font = UIFont.systemFont(ofSize: fontSize)
         label.text = text
         label.sizeToFit()
         
         return label.frame.size.width
         
     }
     
     

 }


 private extension UILabel {

     // MARK: - spacingValue is spacing that you need
     func addInterlineSpacing(spacingValue: CGFloat = 2) {

         // MARK: - Check if there's any text
         guard let textString = text else { return }

         // MARK: - Create "NSMutableAttributedString" with your text
         let attributedString = NSMutableAttributedString(string: textString)

         // MARK: - Create instance of "NSMutableParagraphStyle"
         let paragraphStyle = NSMutableParagraphStyle()

         // MARK: - Actually adding spacing we need to ParagraphStyle
         paragraphStyle.lineSpacing = spacingValue

         // MARK: - Adding ParagraphStyle to your attributed String
         attributedString.addAttribute(
             .paragraphStyle,
             value: paragraphStyle,
             range: NSRange(location: 0, length: attributedString.length
         ))

         // MARK: - Assign string that you've modified to current attributed Text
         attributedText = attributedString
     }

 }

 */
