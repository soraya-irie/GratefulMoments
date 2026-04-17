import SwiftUI

struct LockedBadgeView: View {
    var badge: Badge

    var body: some View {
        HStack {
            Text(badge.details.title)
        }
        .padding()
        .background(Color.secondary.opacity(0.2))
        .clipShape(RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    LockedBadgeView(badge: .sample)
}
