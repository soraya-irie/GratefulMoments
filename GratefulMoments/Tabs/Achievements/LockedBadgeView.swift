import SwiftUI

struct LockedBadgeView: View {
    var badge: Badge

    var body: some View {
        Text(badge.details.title)
    }
}

#Preview {
    LockedBadgeView(badge: .sample)
}
