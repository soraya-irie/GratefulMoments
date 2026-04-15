import SwiftUI
import SwiftData

struct MomentsView: View {
    @Query(sort: \Moment.timestamp)
    private var moments: [Moment]

    var body: some View {
        ScrollView {
            pathItems
                .frame(maxWidth: .infinity)
        }
    }

    private var pathItems: some View {
        ForEach(moments) { moment in
            Text(moment.title)
        }
    }
}

#Preview {
    MomentsView()
        .sampleDataContainer()
}
