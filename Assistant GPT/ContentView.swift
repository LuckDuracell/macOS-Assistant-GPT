//
//  ContentView.swift
//  Assistant
//
//  Created by Luke Drushell on 2/25/23.
//

import SwiftUI
import WebKit

struct ContentView: View {
    
    let url = URL(string: "https://chat.openai.com")!
    let webView = WKWebView()
    
    var body: some View {
        VStack {
            WebView(webView: webView)
        }
        .onAppear {
            webView.load(URLRequest(url: url))
        }
    }
}

struct WebView: NSViewRepresentable {
    let webView: WKWebView
    
    func makeNSView(context: Context) -> WKWebView {
        return webView
    }
    
    func updateNSView(_ nsView: WKWebView, context: Context) {
    }
}
