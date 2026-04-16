import SwiftUI

struct MomentHexagonView: View {
    var moment: Moment
    @State var layout: HexagonLayout = .standard

    var body: some View {
        Hexagon(layout: layout, moment: moment) {
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
