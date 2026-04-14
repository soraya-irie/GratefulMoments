import SwiftUI

struct MomentEntryView: View {
    var body: some View {
        ScrollView {
            contentStack
        }
        .scrollDismissesKeyboard(.interactively)
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
