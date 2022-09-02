//
//  extensions+UIViewController.swift
//  Susuda
//
//  Created by Gyeongtae Nam on 2022/04/29.
//

import SwiftUI
// 참고 : https://stackoverflow.com/questions/60391281/how-to-present-crossdissolve-view-in-swiftui
// 사용 예
// UIViewController 에서  아래와 같이 호출하여 투명 한 창을 호출 합니다.
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
    @available(iOS 13.0, *)
    public static var defaultValue: ViewControllerHolder {
        let scenes = UIApplication.shared.connectedScenes
        let windowScene = scenes.first as? UIWindowScene
        let window = windowScene?.windows.first
        return ViewControllerHolder(value: window?.rootViewController)
    }
    init() {
    }
}
@available(iOS 13.0, *)
public extension EnvironmentValues {
    var viewController: UIViewController? {
        get { return self[ViewControllerKey.self].value }
        set { return self[ViewControllerKey.self].value = newValue }
    }
}

extension UIViewController {
    @available(iOS 13.0, *)
    public func present<Content: View> (style: UIModalPresentationStyle = .automatic,
                                        transitionStyle: UIModalTransitionStyle = .coverVertical,
                                        @ViewBuilder builder: () -> Content) {
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
