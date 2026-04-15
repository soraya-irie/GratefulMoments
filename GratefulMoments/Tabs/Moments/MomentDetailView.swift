import SwiftUI

struct MomentDetailView: View {
    var moment: Moment

    var body: some View {
        ScrollView {
            contentStack
        }
        .navigationTitle(moment.title)
    }

    private var contentStack: some View {
        VStack(alignment: .leading) {
            Text(moment.timestamp, style: .date)
                .font(.subheadline)
            Text("Notes")
            Text("Image")
        }
        .frame(maxWidth: .infinity, alignment: .leading)
        .padding()
    }
}

#Preview {
    NavigationStack {
        MomentDetailView(moment: .imageSample)
            .sampleDataContainer()
    }
}
