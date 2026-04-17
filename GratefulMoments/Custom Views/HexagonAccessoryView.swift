import SwiftUI

struct HexagonAccessoryView: View {
    let moment: Moment
    let hexagonLayout: HexagonLayout

    var body: some View {
        if let badge = badges.first {
            Image(badge.details.image)
                .resizable()
                .frame(width: size, height: size)
                .shadow(radius: 2)
        }
    }

    private var badges: [Badge] {
        moment.badges
    }

    private var size: CGFloat {
        hexagonLayout.size / 5
    }
}

#Preview("Single badge") {
    MomentHexagonView(moment: .sample, layout: .large)
        .sampleDataContainer()
}
