//
//  File.swift
//  
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import Foundation
//
//  ExButton.swift
//  fixStore
//
//  Created by Kyungtae Nam on 2020/12/11.
//
/*
import Foundation
import UIKit


extension UIButton {
    
    
    func setPrimaryStyle() {
        
        let backgroundColor = UIColor(named: "MainColor")!
        let selectBackgroundColor = UIColor(named:"DarkMainColor")!
        let textColor = UIColor.white
        
        self.setBackgroundColor(backgroundColor, for: .normal)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.8), for: .highlighted)
        self.setBackgroundColor(selectBackgroundColor, for: .selected)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.5), for: .disabled)
        
        
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(textColor, for: .highlighted)
        self.setTitleColor(textColor, for: .selected)
        self.setTitleColor(textColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
    }
    
    
    func setPurpleStyle() {
        
        let backgroundColor = UIColor.purple
        let selectBackgroundColor = UIColor.purpledark
        let textColor = UIColor.white
        
        self.setBackgroundColor(backgroundColor, for: .normal)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.8), for: .highlighted)
        self.setBackgroundColor(selectBackgroundColor, for: .selected)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.5), for: .disabled)
        
        
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(textColor, for: .highlighted)
        self.setTitleColor(textColor, for: .selected)
        self.setTitleColor(textColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
    }
    
    
    
    
    func setRoundBorderGrayOnMainColor() {
        
        let backgroundColor = UIColor.white
        let onBackgroundColor = UIColor(named: "PinkLight2")!
        
        let borderColor = UIColor(hexString: "#D1D4D8")
//        let onBorderColor = UIColor(named: "MainColor")!
        
        let textColor = UIColor(named: "DarkGrayColor2")!
        let onTextColor = UIColor(named: "MainColor")!
        
        self.setBackgroundColor(backgroundColor, for: .normal)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.8), for: .highlighted)
        self.setBackgroundColor(onBackgroundColor, for: .selected)
        self.setBackgroundColor(backgroundColor.withAlphaComponent(0.5), for: .disabled)
        
        
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(textColor, for: .highlighted)
        self.setTitleColor(onTextColor, for: .selected)
        self.setTitleColor(textColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .medium)
        
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
        self.layer.borderColor = borderColor.cgColor
        self.layer.borderWidth = 1
        
    }
    
    
    func setSecondaryStyle() {
        
        let titleColor:UIColor = .mainpink
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = titleColor.cgColor
        
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(.pinklight2, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.4), size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.4).withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
    }
    
    
    func setTertiaryStyle() {
        
        let titleColor:UIColor = .purple
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = titleColor.cgColor
        self.tintColor = .gray
        
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(UIColor.purple_light.withAlphaComponent(0.7), size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.3), size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.3).withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
        
        self.tintColor = .white
        
    }
    
    func setBankStyle() {
        let titleColor:UIColor = UIColor.graydark2
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.graylight2.cgColor
        
        self.tintColor = .gray
        
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(UIColor.mainpink_light, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(UIColor.mainpink_light, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .disabled)
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(UIColor.mainpink, for: .selected)
        self.setTitleColor(titleColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
    
        self.tintColor = .white
    }
    func setMaterialStyle() {
        
        let titleColor:UIColor = .white
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.clear.cgColor
        self.tintColor = .gray
        
        self.setBackgroundImage(UIImage.from(UIColor.purple, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(UIColor.purple.withAlphaComponent(0.7), size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.3), size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.3).withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
        
        self.tintColor = .white
        
    }
    
    func setBorderLinedStyle() {
        
        let titleColor:UIColor = .graydark2
        let lineColor : UIColor = .graylight2
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = lineColor.cgColor
        
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(.pinklight2, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from( UIColor.pinklight2.withAlphaComponent(0.4), size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(UIColor.pinklight2.withAlphaComponent(0.4).withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        
    }
    
//    selectedBorder(color:UIColor) {
//
//    }
    
    //디자이너야  (ㅜ,.ㅜ)
    func setDarkStyle() {
        
        //height = 44

        let backgroundColor = UIColor.DarkGrayColor2
        let textColor:UIColor = .white
        //let selectedColor = UIColor.mainpink_dark
        
        
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
//        self.layer.borderWidth = 1.0
//        self.layer.borderColor = titleColor.cgColor
        
        self.setBackgroundImage(UIImage.from(backgroundColor, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(backgroundColor.withAlphaComponent(0.8), size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(backgroundColor, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(backgroundColor.withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        
        self.setTitleColor(.white, for: .normal)
        self.setTitleColor(.white, for: .highlighted)
        self.setTitleColor(.white, for: .selected)
        self.setTitleColor(UIColor.white.withAlphaComponent(0.5), for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .regular)
        
    }
    
    //디자이너야  (ㅜ,.ㅜ)
    
    func setGrayStyleBorder(isEnable: Bool) {
        self.layer.borderWidth = 1.0
        if isEnable {
            self.layer.borderColor = UIColor(hexString: "#D1D4D8").cgColor
        }else {
            self.layer.borderColor = UIColor(hexString: "#E6E8EB").cgColor
        }
    }
    func setGrayStyle() {
        
        //height = 44

        let backgroundColor = UIColor.backgroundColor
        let textColor:UIColor = UIColor.graydark1
        
        //let selectedColor = UIColor.mainpink_dark
        
        
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor(hexString: "#D1D4D8").cgColor
     
        
        
        
        self.setBackgroundImage(UIImage.from(backgroundColor, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(backgroundColor.withAlphaComponent(0.8), size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(backgroundColor, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(UIColor.graylight, size: self.frame.size), for: .disabled)
        
        
        self.setTitleColor(textColor, for: .normal)
        self.setTitleColor(textColor, for: .highlighted)
        self.setTitleColor(textColor, for: .selected)
        self.setTitleColor(UIColor.graylight2, for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeCaption, weight: .medium)
        
    }
    
}


extension UIButton {
    
    func setRoundStyle() {
        
    }
    
//    override var isSelected: Bool {
//
//    }
    
//    open override var isEnabled: Bool{
//        didSet {
//            alpha = isEnabled ? 1.0 : 0.5
//        }
//    }
//    open override var isHighlighted: Bool {
//        didSet {
//            layer.borderColor = isHighlighted ? UIColor(red: 0, green: 0.4, blue: 0.624, alpha: 1).cgColor : UIColor(red: 0.275, green: 0.576, blue: 0.816, alpha: 0.5).cgColor
//        }
//    }
    
//    var isCustomBorderStyle :Bool {
//        return false
//    }
    
//    open override var isHighlighted: Bool {
//        didSet {
//
//            switch(isHighlighted) {
//            case true :
//                self.layer.borderColor = UIColor(named: "MainColor")!.cgColor
//            case false :
//                self.layer.borderColor =  UIColor(named: "LineColor2")!.cgColor
//            }
//            //self.tintColor =  UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1.0)
//        }
//    }
    func setBackgroundColor(_ color: UIColor, for state: UIControl.State) {
        UIGraphicsBeginImageContext(CGSize(width: 1.0, height: 1.0))
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.setFillColor(color.cgColor)
        context.fill(CGRect(x: 0.0, y: 0.0, width: 1.0, height: 1.0))
        
        let backgroundImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
         
        self.setBackgroundImage(backgroundImage, for: state)
    }
    

    
    
    func setRoundGrayBorderStyle() {
        
        let titleColor:UIColor = .MainColor
        
        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true
        
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .disabled)
        
        self.setTitleColor(.DarkGrayColor1, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor, for: .disabled)
        
        
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor.LightGrayColor2.cgColor
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
        
    }
    
    func setRoundBorderStyle() {

        let titleColor:UIColor = .MainColor

        let frame = self.frame
        self.layer.cornerRadius = frame.size.height * 0.5
        self.layer.masksToBounds = true

        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(.white, size: self.frame.size), for: .disabled)

        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(titleColor, for: .highlighted)
        self.setTitleColor(titleColor, for: .selected)
        self.setTitleColor(titleColor, for: .disabled)

        self.layer.borderWidth = 1.0
        self.layer.borderColor = titleColor.cgColor
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)

    }
    


    
    func setPrimaryStyle1() {
        
//        let lineColor  = UIColor(named: "MainColor")!
        let titleColor = UIColor(named:"MainColor")!
        //let selectedTitleColor = UIColor.white
        
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        self.layer.borderWidth = 1.0
        self.layer.borderColor = titleColor.cgColor
        
        self.setBackgroundImage(UIImage.from(UIColor.white, size: self.frame.size), for: .normal)
        self.setBackgroundImage(UIImage.from(titleColor, size: self.frame.size), for: .highlighted)
        self.setBackgroundImage(UIImage.from(titleColor, size: self.frame.size), for: .selected)
        self.setBackgroundImage(UIImage.from(titleColor.withAlphaComponent(0.5), size: self.frame.size), for: .disabled)
        
        
        self.setTitleColor(titleColor, for: .normal)
        self.setTitleColor(.white, for: .highlighted)
        self.setTitleColor(.white, for: .selected)
        self.setTitleColor(.white, for: .disabled)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
    }
    
    

    
    
//    func setSecondayStayle() {
//        let lineColor  = UIColor(named: "LineColor2")!
//        let titleColor = UIColor(named:"LabelColor3")!
//        let selectedTitleColor = UIColor(named: "LabelColor7")!
//
//        let backColor = UIColor.white
//        let selectedBackColor = UIColor(named: "MainColor")?.withAlphaComponent(0.1) ?? UIColor.white
//
//        self.layer.cornerRadius = 8.0
//        self.layer.masksToBounds = true
//        self.layer.borderWidth = 1.0
//        self.layer.borderColor = lineColor.cgColor
//        self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
//        self.setBackgroundColor(backColor, for: .normal)
//        self.setBackgroundColor(selectedBackColor, for: .selected)
//        self.setBackgroundColor(selectedBackColor, for: .highlighted)
//        self.setTitleColor(titleColor, for: .normal)
//        self.setTitleColor(selectedTitleColor, for: .selected)
//        self.setTitleColor(selectedTitleColor, for: .highlighted)
//    }
    
    
    func setHilightBorder(_ color:UIColor = UIColor(named:"MainColor")! , _ width:CGFloat = 1.0 ) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    //평사시 보더 색깔
    func setBoarder(color: UIColor = UIColor.graydark1, _ width:CGFloat = 1.0 ) {
        self.layer.borderColor = color.cgColor
        self.layer.borderWidth = width
    }
    //Button 선택시 보더 색깔 바꿈
    func setSelectedBorder(_ color: UIColor = UIColor.mainpink , _  width:CGFloat = 2.0 ) {
        self.setBoarder(color: color, width)
    }
    
    
    
//    func setSecondayStayle() {
//        self.layer.cornerRadius = 8.0
//        self.layer.masksToBounds = true
//        self.layer.borderWidth = 2.0
//        self.layer.borderColor = UIColor(red: 0.963, green: 0.972, blue: 0.988, alpha: 1).cgColor
//
//        self.setBackgroundColor(.white, for: .normal)
//        self.setBackgroundColor(UIColor(red: 0.82, green: 0.894, blue: 0.953, alpha: 0.5), for: .highlighted)
//        self.setBackgroundColor(UIColor(red: 0.82, green: 0.894, blue: 0.953, alpha: 0.5), for: .selected)
//        self.setBackgroundColor(.white,  for: .disabled)
//
//        self.setTitleColor(UIColor(named:"MainColor")!, for: .normal)
//        self.setTitleColor(UIColor(red: 0.275, green: 0.576, blue: 0.816, alpha: 0.5), for: .disabled)
//        self.setTitleColor(UIColor(red: 0, green: 0.4, blue: 0.624, alpha: 1), for: .highlighted)
//        self.setTitleColor(UIColor(red: 0, green: 0.4, blue: 0.624, alpha: 1), for: .selected)
//        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
//    }
    
    
    func setThirdStayle() {
        self.layer.cornerRadius = 8.0
        self.layer.masksToBounds = true
        self.layer.borderWidth = 2.0
        self.layer.borderColor = UIColor(named:"MainColor")!.cgColor
        
        self.setBackgroundColor(.white, for: .normal)
        self.setBackgroundColor(UIColor(red: 0.82, green: 0.894, blue: 0.953, alpha: 0.5), for: .highlighted)
        self.setBackgroundColor(UIColor(red: 0.82, green: 0.894, blue: 0.953, alpha: 0.5), for: .selected)
        self.setBackgroundColor(.white,  for: .disabled)

        self.setTitleColor(UIColor(named:"MainColor")!, for: .normal)
        self.setTitleColor(UIColor(red: 0.275, green: 0.576, blue: 0.816, alpha: 0.5), for: .disabled)
        self.setTitleColor(UIColor(red: 0, green: 0.4, blue: 0.624, alpha: 1), for: .highlighted)
        self.setTitleColor(UIColor(red: 0, green: 0.4, blue: 0.624, alpha: 1), for: .selected)
        
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14, weight: .bold)
    }
    
    
    
    
    
    
    //카테고리 버튼 만들때 사용합니다.
    func calculateWitdh(text:String) -> CGFloat {
        
        let label = UILabel()
        label.text = text
        label.sizeToFit()
        
        return label.frame.size.width
        
    }
    //신청서 삭제
    func setHeaderTopLeftStyle() {
        self.setTitleColor(UIColor.mainpink, for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 14)
    }

    
    
    
    
    func setGrayBorderStyle() {
        self.layer.cornerRadius = 8
        self.layer.masksToBounds = true
        
        self.layer.borderWidth = 1.0
        self.layer.borderColor = UIColor(red: 0.875, green: 0.895, blue: 0.929, alpha: 0.5).cgColor
    }
    

    
}

*/
