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
            if !moment.note.isEmpty, !showImage {
                Text(moment.note)
                    .font(layout.bodyFont)
            }
        }
        .frame(maxWidth: layout.size * 0.80)
        .frame(maxHeight: layout.size * (showImage ? 0.15 : 0.50))
        .padding(.bottom, layout.size * layout.textBottomPadding)
    }

    private var showImage: Bool {
        moment.image != nil
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
