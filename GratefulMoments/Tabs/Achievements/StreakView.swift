import SwiftUI

struct StreakView: View {
    var numberOfDays: Int

    var body: some View {
        Hexagon(borderColor: .secondary) {
            VStack(spacing: 0) {
                Text("Streak \(Image(systemName: "flame.fill"))")
                    .foregroundStyle(.ember)
                Text("\(numberOfDays)")
                    .font(.system(size: 70))
                Text("days")
            }
            .font(.callout)
        }
    }
}

#Preview {
    StreakView(numberOfDays: 0)
    StreakView(numberOfDays: 1)
    StreakView(numberOfDays: 23)
}
