//
//  extensions+UIViewController.swift
//  Susuda
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import SwiftUI
//참고 : https://stackoverflow.com/questions/60391281/how-to-present-crossdissolve-view-in-swiftui

//사용 예
//UIViewController 에서  아래와 같이 호출하여 투명 한 창을 호출 합니다.
/*
self.present(style: .overFullScreen, transitionStyle: .crossDissolve) {
CouponBarCodeView()
}
 
 
 struct ContentView: View {

     @Environment(\.viewController) private var viewControllerHolder: UIViewController?
     private var viewController: UIViewController? {
         self.viewControllerHolder
     }

     var body: some View {
         Button(action: {
             self.viewController?.present(style: .fullScreen, transitionStyle: .coverVertical) {
               Text("OK")
            }
         }) {
            Text("Present me!")
         }
     }
 }
 
*/

public struct ViewControllerHolder {
    weak var value: UIViewController?
    init(value: UIViewController? ) {
        self.value = value
    }
}

public struct ViewControllerKey: EnvironmentKey {
    public static var defaultValue: ViewControllerHolder {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return ViewControllerHolder(value: window?.rootViewController)
    }
    init() {
    }
}
public extension EnvironmentValues {
    var viewController : UIViewController? {
        get { return self[ViewControllerKey.self].value }
        set { return self[ViewControllerKey.self].value = newValue }
    }
}

extension UIViewController {
    
    public func present<Content: View> (style: UIModalPresentationStyle = .automatic, transitionStyle: UIModalTransitionStyle = .coverVertical, @ViewBuilder builder: () -> Content) {
        let toPresent = UIHostingController(rootView: AnyView(EmptyView()))
        toPresent.modalPresentationStyle = style
        toPresent.modalTransitionStyle = transitionStyle
        toPresent.view.backgroundColor = UIColor.clear
        toPresent.rootView = AnyView(
            builder()
                .environment(\.viewController, toPresent)
        )
        self.present(toPresent, animated: true, completion: nil)
    }
}


/*
 
 
 extension UIViewController  {
     
 //    func setupTapGesture() {
 //        let tap = UITapGestureRecognizer(target: self, action: #selector(tapped(_:)))
 //        self.view.addGestureRecognizer(tap)
 //    }
 //
 //    @objc func tapped(_ geture: UITapGestureRecognizer) {
 //
 //    }
     
     
 //    func setupKeyboard() {
 //
 //        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide(_:onCompletedHandler:)), name: UIResponder.keyboardWillHideNotification, object: nil)
 //        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(_:onCompletedHandler:)), name: UIResponder.keyboardWillShowNotification, object: nil)
 //    }
 //
 //    @objc func keyboardWillShow(_ noti:NSNotification, onCompletedHandler:@escaping(CGFloat) ->()) {
 //
 //        Debug.log("keyboardWillShow")
 //
 //        let keyboardDetail = noti.userInfo!
 //        var keyboardFrame = (keyboardDetail[UIResponder.keyboardFrameEndUserInfoKey] as!NSValue).cgRectValue
 //        if let window = self.view.window {
 //            keyboardFrame = window.convert(keyboardFrame, to: self.view)
 //        }
 //        let height  = UIApplication.shared.statusBarOrientation.isPortrait ? keyboardFrame.height : keyboardFrame.width
 //
 //
 //
 //        onCompletedHandler(height)
 //
 //
 //    }
 //
 //    @objc func keyboardWillHide(_ noti:NSNotification,onCompletedHandler:@escaping() ->()) {
 ////        bottom = (self.view.bounds.height - self.cView.frame.height ) / 2.0
 ////        sTop.isHidden = false
 ////        lcTop.constant = 10.0
 //
 //        Debug.log("keyboardWillHide")
 //    }
     
 }


 internal extension UIView {
     
     func fillSuperview() {
         guard let superview = self.superview else {
             return
         }
         translatesAutoresizingMaskIntoConstraints = false

         let constraints: [NSLayoutConstraint] = [
             leftAnchor.constraint(equalTo: superview.leftAnchor),
             rightAnchor.constraint(equalTo: superview.rightAnchor),
             topAnchor.constraint(equalTo: superview.topAnchor),
             bottomAnchor.constraint(equalTo: superview.bottomAnchor)
             ]
         NSLayoutConstraint.activate(constraints)
     }

     func centerInSuperview() {
         guard let superview = self.superview else {
             return
         }
         translatesAutoresizingMaskIntoConstraints = false
         let constraints: [NSLayoutConstraint] = [
             centerXAnchor.constraint(equalTo: superview.centerXAnchor),
             centerYAnchor.constraint(equalTo: superview.centerYAnchor)
         ]
         NSLayoutConstraint.activate(constraints)
     }
     
     func constraint(equalTo size: CGSize) {
         guard superview != nil else { return }
         translatesAutoresizingMaskIntoConstraints = false
         let constraints: [NSLayoutConstraint] = [
             widthAnchor.constraint(equalToConstant: size.width),
             heightAnchor.constraint(equalToConstant: size.height)
         ]
         NSLayoutConstraint.activate(constraints)
         
     }

     @discardableResult
     func addConstraints(_ top: NSLayoutYAxisAnchor? = nil, left: NSLayoutXAxisAnchor? = nil, bottom: NSLayoutYAxisAnchor? = nil, right: NSLayoutXAxisAnchor? = nil, centerY: NSLayoutYAxisAnchor? = nil, centerX: NSLayoutXAxisAnchor? = nil, topConstant: CGFloat = 0, leftConstant: CGFloat = 0, bottomConstant: CGFloat = 0, rightConstant: CGFloat = 0, centerYConstant: CGFloat = 0, centerXConstant: CGFloat = 0, widthConstant: CGFloat = 0, heightConstant: CGFloat = 0) -> [NSLayoutConstraint] {
         
         if self.superview == nil {
             return []
         }
         translatesAutoresizingMaskIntoConstraints = false
         
         var constraints = [NSLayoutConstraint]()
         
         if let top = top {
             let constraint = topAnchor.constraint(equalTo: top, constant: topConstant)
             constraint.identifier = "top"
             constraints.append(constraint)
         }
         
         if let left = left {
             let constraint = leftAnchor.constraint(equalTo: left, constant: leftConstant)
             constraint.identifier = "left"
             constraints.append(constraint)
         }
         
         if let bottom = bottom {
             let constraint = bottomAnchor.constraint(equalTo: bottom, constant: -bottomConstant)
             constraint.identifier = "bottom"
             constraints.append(constraint)
         }
         
         if let right = right {
             let constraint = rightAnchor.constraint(equalTo: right, constant: -rightConstant)
             constraint.identifier = "right"
             constraints.append(constraint)
         }

         if let centerY = centerY {
             let constraint = centerYAnchor.constraint(equalTo: centerY, constant: centerYConstant)
             constraint.identifier = "centerY"
             constraints.append(constraint)
         }

         if let centerX = centerX {
             let constraint = centerXAnchor.constraint(equalTo: centerX, constant: centerXConstant)
             constraint.identifier = "centerX"
             constraints.append(constraint)
         }
         
         if widthConstant > 0 {
             let constraint = widthAnchor.constraint(equalToConstant: widthConstant)
             constraint.identifier = "width"
             constraints.append(constraint)
         }
         
         if heightConstant > 0 {
             let constraint = heightAnchor.constraint(equalToConstant: heightConstant)
             constraint.identifier = "height"
             constraints.append(constraint)
         }
         
         NSLayoutConstraint.activate(constraints)
         return constraints
     }
 }


 extension UIViewController {
     func hideTabbar() {
         Debug.log("hideTabbar")
         
         NotificationCenter.default.post(name: .didReceiveHideTabbar, object: nil)
         
         
         guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return }
         var topViewcontroller = window.rootViewController
         while(true) {
             if topViewcontroller?.presentedViewController != nil {
                 topViewcontroller = topViewcontroller?.presentedViewController
             }else if topViewcontroller is UINavigationController {
                 topViewcontroller = (topViewcontroller as! UINavigationController).topViewController
             }else if topViewcontroller is UITabBarController {
                 topViewcontroller = (topViewcontroller as! UITabBarController).selectedViewController
             }else if topViewcontroller is MyTabbarViewController {

                 
                 guard let topViewcontroller = topViewcontroller as? MyTabbarViewController else { break }

                 topViewcontroller.hide()
                 return
             }else if topViewcontroller is WTabbarViewController {

                         
                 guard let topViewcontroller = topViewcontroller as? WTabbarViewController else { break }

                 topViewcontroller.hide()
                 return
             }else {
                 break
             }
         }
     }
     
     func showTabbar() {
         NotificationCenter.default.post(name: .didReceiveDisplayTabbar, object: nil)
         
         guard let window = UIApplication.shared.windows.filter({$0.isKeyWindow}).first else { return }
         var topViewcontroller = window.rootViewController
         while(true) {
             if topViewcontroller?.presentedViewController != nil {
                 topViewcontroller = topViewcontroller?.presentedViewController
             }else if topViewcontroller is UINavigationController {
                 topViewcontroller = (topViewcontroller as! UINavigationController).topViewController
             }else if topViewcontroller is UITabBarController {
                 topViewcontroller = (topViewcontroller as! UITabBarController).selectedViewController
             }else if topViewcontroller is MyTabbarViewController {

                 
                 guard let topViewcontroller = topViewcontroller as? MyTabbarViewController else { break }

                 topViewcontroller.show()
                 return
             }else if topViewcontroller is WTabbarViewController {
                 
                 
                 guard let topViewcontroller = topViewcontroller as? WTabbarViewController else { break }

                 topViewcontroller.show()
                 return
             }else {
                 break
             }
         }
     }
     
     func setupMyNavigationBar() {
     

         
         let backButton = UIBarButtonItem(image: UIImage(named: "navi_back"), style: .plain, target: self, action: #selector(goNavigationBack(_:)))
         backButton.tintColor = .black
         self.navigationItem.leftBarButtonItem = backButton
     }
     
     
     func setupMyNavigationRightButtonItem(title:String , target:Any?, action:Selector) {
     
         let done = UIBarButtonItem(title: title, style: .plain, target: target, action: action )
         let attr = [
             NSAttributedString.Key.foregroundColor : UIColor(named:"MainColor")!,
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .bold)
         ]
         let attrDiable = [
             NSAttributedString.Key.foregroundColor : UIColor(named:"MainColor")!.withAlphaComponent(0.5),
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 16, weight: .bold)
         ]
         done.setTitleTextAttributes( attr, for: .normal)
         done.setTitleTextAttributes( attrDiable, for: .disabled)
         self.navigationItem.rightBarButtonItem = done

     
     }
     
     @objc func goNavigationBack(_ sender: UIBarButtonItem) {
         self.navigationController?.popViewController(animated: false )
     }
     
     
     /**
      viewWillAppear(_ animated: Bool)
      
      self.navigationController?.navigationBar.prefersLargeTitles = true
      self.navigationController?.setNavigationBarHidden(false, animated: true )
      */
     
     func setupNavigationBarForRootView(title: String ) {
         
         self.title = title

         
         self.navigationController?.navigationBar.barTintColor = UIColor.white
         let style = NSMutableParagraphStyle()
         style.firstLineHeadIndent = 10// This is added to the default margin
         navigationController?.navigationBar.largeTitleTextAttributes =
             [NSAttributedString.Key.paragraphStyle : style,
              NSAttributedString.Key.foregroundColor: UIColor.graydark3,
              NSAttributedString.Key.font: UIFont.systemFont(ofSize: UILabel.sizeHeaserLine, weight: .bold)]

         
         self.navigationController?.setNavigationBarHidden(false, animated: false)
         let colorAppearance = UINavigationBarAppearance()
         colorAppearance.backgroundColor = .white
         colorAppearance.shadowColor = .clear
         self.navigationController?.navigationBar.standardAppearance = colorAppearance
         self.navigationController?.navigationBar.titleTextAttributes = [    NSAttributedString.Key.foregroundColor: UIColor.red,
             NSAttributedString.Key.font: UIFont.systemFont(ofSize: 18, weight: .bold)
         ]

         
         self.navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
         self.navigationController?.navigationBar.shadowImage = UIImage()
         self.navigationController?.navigationBar.isTranslucent = true
         
         
 //        self.navigationController?.navigationBar.layer.masksToBounds = false
 //        self.navigationController?.navigationBar.layer.shadowColor = UIColor.graylight1.cgColor
 //        self.navigationController?.navigationBar.layer.shadowOpacity = 0.3
 //        self.navigationController?.navigationBar.layer.shadowOffset = CGSize(width: 0, height: 0)
 //        self.navigationController?.navigationBar.layer.shadowRadius = 8.0
         

        // self.navigationItem.hidesBackButton = true
         
         //백업을 위해서
         self.navigationController?.interactivePopGestureRecognizer?.delegate = nil

         
         
     }
 }
 
 
 extension UIViewController {
     
     func setupInitNavigationBar() {
         //self.navigationController?.setNavigationBarHidden(true, animated: false)
         let colorAppearance = UINavigationBarAppearance()
         colorAppearance.backgroundColor = .white
         colorAppearance.shadowColor = .clear
         self.navigationController?.navigationBar.standardAppearance = colorAppearance
         
         
         
         self.navigationController?.navigationBar.titleTextAttributes = [    NSAttributedString.Key.foregroundColor: UIColor.graydark3,
                                                                             NSAttributedString.Key.font: UIFont.systemFont(ofSize: UILabel.sizeSubtitle, weight: .bold)
         ]
     }
     
     //네비게이션 바
     func setupCustomBackNavigationBar(title:String) {
         self.navigationController?.setNavigationBarHidden(false, animated: false )
         self.navigationItem.hidesBackButton = true
         let backButton = UIBarButtonItem(image: UIImage(named: "navi_back"), style: .plain, target: self, action: #selector(back(_:)))
         backButton.tintColor = UIColor(red: 0.667, green: 0.698, blue: 0.753, alpha: 1)
         self.navigationItem.leftBarButtonItem = backButton
         self.title = title
     }
     
     
     @objc func back(_ sender: Any?) {
         
         self.navigationController?.popViewController(animated: true)
     }
 }
 
 

 */
