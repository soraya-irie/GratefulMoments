import SwiftUI

struct MomentDetailView: View {
    var moment: Moment

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MomentDetailView(moment: .imageSample)
        .sampleDataContainer()
}
