//
//  Webview.swift
//  Merchbycreatives
//
//  Created by Iti on 27/05/2023.
//

import Foundation
import SwiftUI
import WebKit


    struct Webview: UIViewRepresentable {
     
        var url: URL
     
        func makeUIView(context: Context) -> WKWebView {
            return WKWebView()
        }
     
        func updateUIView(_ webView: WKWebView, context: Context) {
            let request = URLRequest(url: url)
            webView.load(request)
        }
    }
