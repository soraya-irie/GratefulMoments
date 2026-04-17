import SwiftUI
import SwiftData

struct AchievementsView: View {
    @Query(filter: #Predicate<Badge> { $0.timestamp != nil })
    private var unlockedBadges: [Badge]

    @Query(filter: #Predicate<Badge> { $0.timestamp == nil })
    private var lockedBadges: [Badge]

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
