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


extension UITextField {
    
    
    func setFocus() {
        guard let lineColor = UIColor(named: "MainColor") else { return }
        self.setBorderColor(color: lineColor, width: 2)
    }
    
    func setFocusOff() {
        guard let lineColor = UIColor(named: "LineColor2") else { return }
        self.setBorderColor(color: lineColor, width: 1)
    }
    
    func setNormal() {
        let color = UIColor(red: 0.875, green: 0.895, blue: 0.929, alpha: 1)
        self.setBorderColor(color: color)
        self.rightView = UIView()
    }
    
    
    func setLeftPaddingView() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 16.0, height: self.frame.size.height))
        self.leftView = paddingView
        self.leftViewMode = .always
    }
    
    func setSecureRightView() {
        
        let color = UIColor(red: 0.875, green: 0.895, blue: 0.929, alpha: 1)
        self.setBorderColor(color: color)
        
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 40.0, height: self.frame.size.height))
        
        let button = UIButton(frame:CGRect(x: 0, y: (self.frame.size.height - 24) / 2, width: 24, height: 24))
        button.addTarget(self, action: #selector(toggleSecure), for: .touchUpInside)
        
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: (self.frame.size.height - 24) / 2  , width: 24, height: 24))
        imageView.image = UIImage(named:"eye")
        
        
        paddingView.addSubview(imageView)
        paddingView.addSubview(button)
        
        self.rightView = paddingView
        self.rightViewMode = .always
        
    }
    
    func setSecureError() {
        Debug.log("setSecureError")
        
        self.setBorderColor(color: UIColor(named:"ErrorColor")! , width:2.0)
    }
    
    func setError() {
        
        self.setBorderColor(color: UIColor(named:"ErrorColor")!, width: 2.0)
        self.setErrorRightView()
    }
    
    func setErrorRightView() {
        let paddingView = UIView(frame: CGRect(x: 0, y: 0, width: 40.0, height: self.frame.size.height))
        let imageView = UIImageView(frame: CGRect(x: 0, y: (self.frame.size.height - 24) / 2  , width: 24, height: 24))
        imageView.image = UIImage(named:"exclamation")
        paddingView.addSubview(imageView)
        self.rightView = paddingView
        self.rightViewMode = .always
    }
    
    
    func setBorderColor(color:UIColor) {
        
        self.layer.cornerRadius = 8.0
        self.layer.borderWidth = 1.0
        self.layer.borderColor = color.cgColor
        
    }
    
    func setBorderColor(color:UIColor , width:CGFloat) {
        
        self.layer.cornerRadius = 8.0
        self.layer.borderWidth = width
        self.layer.borderColor = color.cgColor
        
    }
    
    
    @objc func toggleSecure() {
        if self.isSecureTextEntry {
            self.isSecureTextEntry = false
        }else {
            self.isSecureTextEntry = true
        }
        
    }
    
    
    func setHomeSearchBar(buttonTarget:Any?, buttonAction:Selector) {
        let paddingLeftView = UIView(frame: CGRect(x: 0, y: 0, width: 48.0, height: self.frame.size.height))
        let imageView = UIImageView(frame: CGRect(x: 16, y: (self.frame.size.height - 18) / 2  , width: 18, height: 18))
        imageView.image = UIImage(named: "search")
        paddingLeftView.addSubview(imageView)
        self.leftView = paddingLeftView
        self.leftViewMode = .always
        
        
        let paddingRightView = UIView(frame: CGRect(x: 0, y: 0, width: 49, height: self.frame.size.height))
        
        let button = UIButton(frame: CGRect(x: 14, y: (self.frame.size.height - 25) / 2 , width: 25, height: 25))
        button.setImage(UIImage(named: "qr"), for: .normal)
        button.addTarget(buttonTarget , action: buttonAction, for: .touchUpInside)
        
      
        paddingRightView.addSubview(button)
        
        self.rightView = paddingRightView
        self.rightViewMode = .always
    }
    
    
    //검색어 초기화
    func setSearchWithClear(buttonTarget:Any?, buttonAction:Selector) {
        
        let paddingLeftView = UIView(frame: CGRect(x: 0, y: 0, width: 48.0, height: self.frame.size.height))
        let imageView = UIImageView(frame: CGRect(x: 16, y: (self.frame.size.height - 18) / 2  , width: 18, height: 18))
        imageView.image = UIImage(named: "Search")
        paddingLeftView.addSubview(imageView)
        self.leftView = paddingLeftView
        self.leftViewMode = .always
        
        
        let paddingRightView = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: self.frame.size.height))
        
        let button = UIButton(frame: CGRect(x: 16, y: (self.frame.size.height - 24) / 2 , width: 24, height: 24))
        button.setImage(UIImage(named: "clear"), for: .normal)
        button.addTarget(buttonTarget , action: buttonAction, for: .touchUpInside)
        
      
        paddingRightView.addSubview(button)
        
        self.rightView = paddingRightView
        self.rightViewMode = .whileEditing
    }
    
    
    func setSend(buttonTarget:Any?, buttonAction:Selector) {
        let paddingLeftView = UIView(frame: CGRect(x: 0, y: 0, width: 24.0, height: self.frame.size.height))
        self.leftView = paddingLeftView
        self.leftViewMode = .always
        
        
        let paddingRightView = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: self.frame.size.height))
        
        let button = UIButton(frame: CGRect(x: 16, y: (self.frame.size.height - 32) / 2 , width: 32, height: 32))
        button.setImage(UIImage(named: "send"), for: .normal)
        button.addTarget(buttonTarget , action: buttonAction, for: .touchUpInside)
        
      
        paddingRightView.addSubview(button)
        
        self.rightView = paddingRightView
        self.rightViewMode = .whileEditing
    }

    func setAuthButton(title:String, buttonTarget:Any?, buttonAction:Selector) {
//        let paddingLeftView = UIView(frame: CGRect(x: 0, y: 0, width: 24.0, height: self.frame.size.height))
//        self.leftView = paddingLeftView
//        self.leftViewMode = .always
//
        
        let paddingRightView = UIView(frame: CGRect(x: 0, y: 0, width: 56, height: self.frame.size.height))
        
        let button = UIButton(frame: CGRect(x: 16, y: (self.frame.size.height - 32) / 2 , width: 37, height: 32))
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.mainpink, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: UILabel.sizeBody, weight: .bold)
        button.addTarget(buttonTarget , action: buttonAction, for: .touchUpInside)
        
      
        paddingRightView.addSubview(button)
        
        self.rightView = paddingRightView
        self.rightViewMode = .always
    }
    
    
    //   onFocus: onError:
}
*/
