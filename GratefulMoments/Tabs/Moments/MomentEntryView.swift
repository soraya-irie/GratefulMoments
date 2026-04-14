import SwiftUI

struct MomentEntryView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .scrollDismissesKeyboard(.interactively)
            .navigationTitle("Grateful For")
        }
    }

    var contentStack: some View {
        VStack(alignment: .leading) {
            Text("Title")

            Text("Note")
        }
        .padding()
    }
}

#Preview {
    MomentEntryView()
}
