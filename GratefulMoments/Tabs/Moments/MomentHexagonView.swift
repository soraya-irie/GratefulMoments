import SwiftUI

struct MomentHexagonView: View {
    var moment: Moment
    @State var layout: HexagonLayout = .standard

    var body: some View {
        Hexagon(layout: layout, moment: moment) {
            contentStack()
        }
    }

    private func contentStack() -> some View {
        VStack(alignment: .leading) {
            Text(moment.title)
                .font(layout.titleFont)
        }
    }
}

#Preview {
    ScrollView {
            MomentHexagonView(moment: Moment.imageSample)
            MomentHexagonView(moment: Moment.imageSample, layout: .large)
            MomentHexagonView(moment: Moment.sample)
            MomentHexagonView(moment: Moment.sample, layout: .large)
        }
}
