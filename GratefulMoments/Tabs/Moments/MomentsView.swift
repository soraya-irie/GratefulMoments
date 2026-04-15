import SwiftUI
import SwiftData

struct MomentsView: View {
    @Query(sort: \Moment.timestamp)
    private var moments: [Moment]

    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    MomentsView()
        .sampleDataContainer()
}
