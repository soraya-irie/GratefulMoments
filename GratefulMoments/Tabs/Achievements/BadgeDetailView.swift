import SwiftUI

struct BadgeDetailView: View {
    var badge: Badge

    var body: some View {
        VStack(spacing: 8) {
            Image(badge.details.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 140, height: 140)
            Spacer()
        }
    }
}

#Preview {
    BadgeDetailView(badge: .sample)
}
