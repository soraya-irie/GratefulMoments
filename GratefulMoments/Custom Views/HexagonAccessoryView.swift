import SwiftUI

struct HexagonAccessoryView: View {
    let moment: Moment
    let hexagonLayout: HexagonLayout

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }

    private var size: CGFloat {
        hexagonLayout.size / 5
    }
}

#Preview {
    MomentHexagonView(moment: .sample, layout: .large)
}
