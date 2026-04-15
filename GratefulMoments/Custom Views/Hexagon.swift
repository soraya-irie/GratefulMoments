import SwiftUI

struct Hexagon<Content: View>: View {
    @ViewBuilder var content: () -> Content

    var body: some View {
        content()
    }
}

#Preview {
    Hexagon {
        Text("Hello, World!")
    }
}
