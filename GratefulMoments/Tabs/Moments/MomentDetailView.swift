import SwiftUI

struct MomentDetailView: View {
    var moment: Moment

    var body: some View {
        contentStack
    }

    private var contentStack: some View {
        VStack(alignment: .leading) {
            Text("Timestamp")
            Text("Notes")
            Text("Image")
        }
    }
}

#Preview {
    MomentDetailView(moment: .imageSample)
        .sampleDataContainer()
}
