//
//  DetailView.swift
//  H4X0R News
//
//  Created by arthur gonzaga on 20/02/24.
//

import SwiftUI
import WebKit

struct DetailView: View {
    
    private let post: FrontPageEntity
    
    @State var isLoading: Bool = true
    
    init(post: FrontPageEntity) {
        self.post = post
    }
    
    var body: some View {
        ZStack {
            Text("Loading...").frame(alignment: .center)
            WebView(url: post.url)
        }
    }
}

#Preview {
    DetailView(post: FrontPageEntity(id: 1, title: "", points: 2, dateCreated: .now, url: "https://www.google.com"))
}



struct WebView: UIViewRepresentable {
    typealias UIViewType = WKWebView
    
    let urlString: String?
    
    init(url: String?) {
        self.urlString = url
    }
    
    func makeUIView(context: Context) -> WKWebView {
        WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        uiView.underPageBackgroundColor = .clear
        if let urlString, let url = URL(string: urlString) {
            uiView.load(URLRequest(url: url))
        }
    }
    
}
