//
//  SimpleWebView.swift
//  Susuda
//
//  Created by Gyeongtae Nam on 2022/01/12.
//

import Foundation
import UIKit
import SwiftUI
import WebKit

@available(iOS 13.0, *)
public struct SimpleWebView: UIViewRepresentable {
   @State var urlRequest: URLRequest?
    public init(_ urlRequest: State<URLRequest?> ) {
        self._urlRequest = urlRequest
    }
    public func makeUIView(context: Context) -> some UIView {
        let webView = WKWebView(frame: CGRect.zero)
        guard let request = urlRequest else {
            return webView
        }
        webView.load(request)
        return webView
    }
    public func updateUIView(_ uiView: UIViewType, context: Context) {
    }
}
