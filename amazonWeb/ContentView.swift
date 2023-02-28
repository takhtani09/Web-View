import SwiftUI
import WebKit

struct ContentView: View {
    @State private var url = URL(string: "https://www.youtube.com")!

    var body: some View {
        WebView(url: url)
    }
}

struct WebView: UIViewRepresentable {
    let url: URL
    
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    
    func updateUIView(_ uiView: WKWebView, context: Context) {
        let request = URLRequest(url: url)
        uiView.load(request)
    }
}
