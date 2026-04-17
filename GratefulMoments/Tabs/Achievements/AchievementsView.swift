import SwiftUI

struct AchievementsView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                contentStack
            }
            .navigationTitle("Achievements")
        }
    }

    private var contentStack: some View {
        VStack {
            Text("Your Badges")
            Text("Locked Badges")
        }
        .padding()
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    AchievementsView()
        .sampleDataContainer()
}
