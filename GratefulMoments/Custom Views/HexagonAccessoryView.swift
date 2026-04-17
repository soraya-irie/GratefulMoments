import SwiftUI

struct HexagonAccessoryView: View {
    let moment: Moment
    let hexagonLayout: HexagonLayout

    var body: some View {
        Group {
            if let badge = badges.first {
                Image(badge.details.image)
                    .resizable()
                    .frame(width: size, height: size)
                    .shadow(radius: 2)
            }
        }
        .offset(y: yOffset)
    }

    private var yOffset: CGFloat {
        let radius = hexagonLayout.size / 2
        // 30 degrees points to the top right corner of a hexagon
        let yOffsetFromHexagonCenter = sin(Angle.degrees(30).radians) * radius
        return radius - yOffsetFromHexagonCenter - (size / 2)
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
