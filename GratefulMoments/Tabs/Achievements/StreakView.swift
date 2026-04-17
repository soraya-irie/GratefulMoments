import SwiftUI

struct StreakView: View {
    var numberOfDays: Int

    var body: some View {
        Hexagon(borderColor: .secondary) {
            VStack(spacing: 0) {
                Text("\(numberOfDays)")
                    .font(.system(size: 70))
                Text("days")
            }
            .font(.callout)
        }
    }
}

#Preview {
    StreakView(numberOfDays: 23)
}
