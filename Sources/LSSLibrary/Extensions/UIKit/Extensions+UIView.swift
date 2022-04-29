//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation

/*
 
 import UIKit


 extension UIView {
     
     var firstResponder: UIView? {
         guard !isFirstResponder else { return self }

         for subview in subviews {
             if let firstResponder = subview.firstResponder {
                 return firstResponder
             }
         }

         return nil
     }
     
     func setBackgroundColor(color:UIColor) {
         self.backgroundColor = color
     }
     
     //유지보수 신청
     func applyShadow(_ color:UIColor = UIColor(red: 0.89, green: 0.918, blue: 0.965, alpha: 1)) {
         self.layer.cornerRadius = 8
         self.layer.shadowColor = color.cgColor
         self.layer.shadowOffset = CGSize(width: 1, height: 1)
         self.layer.shadowOpacity = 1
         self.layer.shadowRadius = 8
         
     }
     
     
     func dropShadow(color:UIColor) {
         
         self.layer.cornerRadius = 20
         self.layer.shadowColor = color.cgColor
         self.layer.shadowOffset =  CGSize(width: 0, height: 4)
         self.layer.shadowOpacity = 1
         self.layer.shadowRadius = 8
         
         

     }
     func dropTopSahdow(_ color:UIColor = UIColor(red: 0.89, green: 0.918, blue: 0.965, alpha: 1)) {
         self.layer.shadowColor = color.cgColor
         self.layer.shadowOffset =  CGSize(width: 0, height: 4)
         self.layer.shadowOpacity = 1
         self.layer.shadowRadius = 20
     }
     
     func drawUnderLine() {
         let view = UIView(frame: CGRect(x: 0, y: self.frame.size.height - 1 , width: UIScreen.main.bounds.width , height: 1))
         view.backgroundColor = UIColor.backgroundColor
         
         self.addSubview(view)
     }

     func applyViewTopShadow() {
         
         self.applyShadow()
         let path = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.size.width, height: self.frame.size.height + 10))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
     }
     
     func applyViewBottomShadow() {
         
         self.applyShadow()
         let path = UIBezierPath(rect: CGRect(x: 0, y: -10, width: self.frame.size.width, height: self.frame.size.height ))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
     }
     
     
     // 총결제 금액 접수 아래에서 올라오는 카드 뷰에 적용
     func applyCardDropShadow() {
         self.layer.cornerRadius = 20
         self.layer.masksToBounds = false
         //vRound.layer.masksToBounds = true
         self.layer.shadowColor = UIColor.LightGrayColor2.cgColor
         self.layer.shadowOffset = CGSize(width: 1, height: -10)
         self.layer.shadowOpacity = 0.2
         self.layer.shadowRadius = 10
     }
     
     
     
     func applyTopShadow(_ color:UIColor = UIColor(red: 0.89, green: 0.918, blue: 0.965, alpha: 1)) {
         self.layer.shadowColor = color.cgColor
         self.layer.shadowOffset = CGSize(width: 1, height: 1)
         self.layer.shadowOpacity = 1
         self.layer.shadowRadius = 8
     }
     
     //카테고리 선택완료
     func applySelectedBorder() {
         self.layer.cornerRadius = 8
         self.layer.borderWidth = 2
         self.layer.borderColor = UIColor(named:"MainColor")!.cgColor
     }

     func setRounCornor(size:CGFloat) {
         self.layer.cornerRadius = size
         self.layer.masksToBounds = true
     }
     
     
 //    let path = UIBezierPath(roundedRect:viewToRound.bounds,
 //                            byRoundingCorners:[.topRight, .bottomLeft],
 //                            cornerRadii: CGSize(width: 20, height:  20))
 //
 //    let maskLayer = CAShapeLayer()
 //
 //    maskLayer.path = path.cgPath
 //    viewToRound.layer.mask = maskLayer
     
     func roundTop(width : CGFloat = 0 , radius: CGFloat ) {

         let path = UIBezierPath(roundedRect: CGRect(x: 0, y: 0, width: width, height: self.frame.size.height + radius ), cornerRadius: radius)
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
     }
     
     func roundTop(radius: CGFloat) {
         let path = UIBezierPath(roundedRect: self.bounds,
                                 byRoundingCorners: [.topLeft, .topRight],
                                 cornerRadii: CGSize(width: radius, height: radius))
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask
     }
     
     
     

     
     
     func roundBottom(width: CGFloat, radius: CGFloat ) {
         let path = UIBezierPath(roundedRect: CGRect(x: 0, y: -radius , width: width , height: self.frame.size.height + radius  ), cornerRadius: radius)
         let mask = CAShapeLayer()
         mask.path = path.cgPath
         self.layer.mask = mask

     }
     
 }

 */
