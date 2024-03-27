import SwiftUI

struct ContentView: View {
    var body: some View {
        HTMLRenderingView(htmlContent: "<h1>Hello, Brazil</h1>").background(Color(NSColor.white))
    }
}

struct HTMLRenderingView: NSViewRepresentable {
    let htmlContent: String
    
    func makeNSView(context: Context) -> NSView {
        CustomDrawingView(htmlContent: htmlContent)
    }
    
    func updateNSView(_ nsView: NSView, context: Context) {
    }
}

class CustomDrawingView: NSView {
    let htmlContent: String
    
    init(htmlContent: String) {
        self.htmlContent = htmlContent
        super.init(frame: .zero)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        guard let context = NSGraphicsContext.current?.cgContext else { return }
        
        // Create an instance of the Objective-C++ wrapper and call its method
        let wrapper = RendererWrapper()
        wrapper.renderHTML(htmlContent, in: context)
    }
}

#Preview {
    ContentView()
}
