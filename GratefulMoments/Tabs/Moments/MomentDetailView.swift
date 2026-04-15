import SwiftUI

struct MomentDetailView: View {
    var moment: Moment

    var body: some View {
        ScrollView {
            contentStack
        }
    }

    private var contentStack: some View {
        VStack(alignment: .leading) {
            Text("Timestamp")
            Text("Notes")
            Text("Image")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    MomentDetailView(moment: .imageSample)
        .sampleDataContainer()
}
