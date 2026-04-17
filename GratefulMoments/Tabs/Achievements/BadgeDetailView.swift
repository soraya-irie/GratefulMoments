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
        .padding()
        .frame(width: 320, height: 410)
        .background(badge.details.color.opacity(0.8))
        .clipShape(RoundedRectangle(cornerRadius: 16.0))
    }
}

#Preview {
    BadgeDetailView(badge: .sample)
}
