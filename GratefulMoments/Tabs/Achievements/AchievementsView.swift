import SwiftUI

struct AchievementsView: View {
    var body: some View {
        contentStack
    }

    private var contentStack: some View {
        VStack {
            Text("Your Badges")
            Text("Locked Badges")
        }
        .padding()
    }
}

#Preview {
    AchievementsView()
        .sampleDataContainer()
}
